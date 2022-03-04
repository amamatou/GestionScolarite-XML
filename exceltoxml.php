<?php
require 'vendor/autoload.php';  
use PhpOffice\PhpSpreadsheet\IOFactory;
use PhpOffice\PhpSpreadsheet\Spreadsheet;

class ExcelToXml 
{
    public function Excel_Xml($class,$categorie)    //Convertion excel en xml
    {
        //on creer une instance de lecteur pour lire un fichier xlsx
       $reader = IOFactory::createReader('Xlsx');

        //le fichier professeurs.xlsx n'etant pas dans un dossier de classe
        if ($categorie=="Professeur")
        {
            $file="Fichiers_Excel/".$categorie."s.xlsx";
            $class="Professeurs";
        }
        else
        {
            $file="Fichiers_Excel/".$class."/".$categorie."s.xlsx";
        }
        
        //lecture du fichier xlsx
        $spreadsheet = $reader->load($file);
    
        $index = 0;
        $data = Array();
        foreach ($spreadsheet->getWorksheetIterator() as $worksheet) //on parcourt les feuilles de calcul du classeur
        {
            $spreadsheet->setActiveSheetIndex($index);  //pour changer la feuille de calcul active avec l'index $index
            
            $sheetData = $worksheet->toArray(null, true, true, true);   // on recupere les valeurs dans un tableau
            
            $result = Array();
            $keys = $sheetData[1];
            for ($i = 2; $i <= count($sheetData); $i++) 
            {
                $rowValue = Array();
                $row = $sheetData[$i];
                foreach($row as $key=>$value) 
                {
                    if ($keys[$key] != "") 
                    {
                        $rowValue[$keys[$key]] = $value;
                    }
                }
                for ($j = 0; $j < count($row); $j++) {
                    
                }
                $result[] = $rowValue;
            }
            
             $data=$result;
            $index++;

        }
        if ($categorie=="Notes_ApresRat") {
            $categorie="Note";
        }
        
        $xml = $this->Array_Xml($data,$categorie,false);
        return $xml;

    }

    private function Array_Xml($array,$categorie,$xml = false)  //Convertion tableau en xml
    {
        if($xml === false)
        {
            $base='<'.$categorie.'s/>';
            $xml = new SimpleXMLElement($base);
        }
        foreach($array as $key => $value)
        {
            if(is_array($value))
            {
                if( is_numeric($key) )
                {
                    $key = $categorie; 
                }
                $this->Array_Xml($value,$categorie,$xml->addChild($key));
            } 
            else 
            {
                if($value)
                {
                    if(preg_match("#^Note#", $key)) //si il y'a correspondance avec l'expresion dans $key
                    {
                        $attribute=substr($key,5);
                            $key="Matiere";
                            $tag=$xml->addChild($key, htmlspecialchars($value));
                            $tag->addAttribute('codeMatiere', $attribute);
                    }
                    else if(preg_match("#^Matiere#", $key))
                    {
                        $key="Matiere";
                        $xml->addChild($key, htmlspecialchars($value));
                    }
                    else if(preg_match("#^ElementName#", $key))
                    {
                        $key="ElementName";
                        $xml->addChild($key, htmlspecialchars($value));
                    }
                    else 
                    {
                        $xml->addChild($key, htmlspecialchars($value));
                    }  
                }
            }
        }
        return $xml->asXML();
    }
}

?>