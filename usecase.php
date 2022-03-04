<?php 

require_once "exceltoxml.php";

//array containing the different classes
$arrayClass = array("AP1","AP2","G3EI1","G3EI2","G3EI3","GIL1","GIL2","GIL3",
"GINF1","GINF2","GINF3","GSEA1","GSEA2","GSEA3","GSTR1","GSTR2","GSTR3");

//array containing the different categories
$arrayCategorie = array("Student","Note","Notes_ApresRat","Module");

//ExcelToXml Class Object
$App = new ExcelToXml();
$compte = 0;

foreach ($arrayClass as $class) 
{
    foreach($arrayCategorie as $categorie)
    {
        $xml = $App->Excel_Xml($class,$categorie);

        //We will use the API Dom of php to use XML documents

        $dom = new DOMDocument("1.0","utf-8");  //represents an XML document
        $imp = new DOMImplementation;   //to perform operations independent of a particular instance
        $dom->preserveWhiteSpace = false;   //to remove redundant spaces
        $dom->formatOutput = true;  //to make the text more readable by formatting the result
        $dom->loadXML($xml);    //load XML from string into $ xml

        $ginf2 = $dom->getElementsByTagName($categorie.'s')->item(0);

        //Include XSD
        if ($categorie == "Notes_ApresRat") 
        {
            $ginf2 = $dom->getElementsByTagName('Notes')->item(0);
            $ginf2->setAttributeNS('http://www.w3.org/2001/XMLSchema-instance','xsi:noNamespaceSchemaLocation','C://xampp/htdocs/GestionScolarite-XML/Validation_xml/Notes.xsd');   //(namespace,attribute name including namespace prefix,attribute value)
            $dom->save("Fichiers_xml/Notes_".$class."_ApresRat.xml");
       
        }
        elseif ($categorie == "Note") 
        {
            $ginf2->setAttributeNS('http://www.w3.org/2001/XMLSchema-instance','xsi:noNamespaceSchemaLocation','C://xampp/htdocs/GestionScolarite-XML/Validation_xml/'.$categorie.'s.xsd');
            $dom->save("Fichiers_xml/Notes_".$class."_Avant.xml");
        }
        else 
        {
            $ginf2->setAttributeNS('http://www.w3.org/2001/XMLSchema-instance','xsi:noNamespaceSchemaLocation','C://xampp/htdocs/GestionScolarite-XML/Validation_xml/'.$categorie.'s.xsd');
            $dom->save("Fichiers_xml/".$categorie."s_".$class.".xml");
        }
        //Inlude DTD
    
        /* if ($categorie=="Notes_ApresRat") {
            $ginf2 = $dom->getElementsByTagName('Notes')->item(0);

            $dom->insertBefore($imp->createDocumentType('Notes',null,'C://xampp/htdocs/GestionScolarite-XML/Validation_xml//Notes.dtd'),$ginf2);
            $dom->save("Fichiers_xml/Notes_".$class."_Apres.xml");
        
        }
        elseif ($categorie=="note") {
            $dom->insertBefore($imp->createDocumentType($categorie.'s',null,'C://xampp/htdocs/GestionScolarite-XML/Validation_xml/'.$categorie.'s.dtd'),$ginf2);
            $dom->save("Fichiers_xml/Notes_".$class."_Avant.xml");
        
        }
        else {
            $dom->insertBefore($imp->createDocumentType($categorie.'s',null,'C://xampp/htdocs/GestionScolarite-XML/Validation_xml/'.$categorie.'s.dtd'),$ginf2);
            $dom->save("Fichiers_xml/".$categorie."s_".$class.".xml");
            
        } */
    }
}


header('Location:dashboard.php');
exit();
?>