<?php 


require_once "exceltoxml.php";
$arrayClass=array("AP1","AP2","G3EI1","G3EI2","G3EI3","GIL1","GIL2","GIL3",
"GINF1","GINF2","GINF3","GSEA1","GSEA2","GSEA3","GSTR1","GSTR2","GSTR3");
$arrayCat=array(
    "Student",
    "Note",
    "Notes_ApresRat",
   "Module"
);

$App=new ExcelToXml();

foreach ($arrayClass as $class) {
    foreach($arrayCat as $categorie)
    {
    $xml=$App->Excel2Xml($class,$categorie);
    $dom = new DOMDocument("1.0","utf-8");
    $imp = new DOMImplementation;
    $dom->preserveWhiteSpace = false;
    $dom->formatOutput = true;
    $dom->loadXML($xml);

    $ginf2 = $dom->getElementsByTagName($categorie.'s')->item(0);

    //Include XSD
    if ($categorie=="Notes_ApresRat") {
        $ginf2 = $dom->getElementsByTagName('Notes')->item(0);
        $ginf2->setAttributeNS(
           
            // namespace
            'http://www.w3.org/2001/XMLSchema-instance',
            // attribute name including namespace prefix
            'xsi:noNamespaceSchemaLocation',
            // attribute value
            'C://xampp/htdocs/GestionScolarité_XML/Validation_xml/Notes.xsd'
           );
        $dom->save("Fichiers_xml/Notes_".$class."_ApresRat.xml");
       
    }
    elseif ($categorie=="Note") {
        $ginf2->setAttributeNS(
            
            // namespace
            'http://www.w3.org/2001/XMLSchema-instance',
            // attribute name including namespace prefix
            'xsi:noNamespaceSchemaLocation',
            // attribute value
            'C://xampp/htdocs/GestionScolarité_XML/Validation_xml/'.$categorie.'s.xsd'
           );
        $dom->save("Fichiers_XML/notes_".$class."_avant.xml");
       
    }
    else {
        $ginf2->setAttributeNS(
            
            // namespace
            'http://www.w3.org/2001/XMLSchema-instance',
            // attribute name including namespace prefix
            'xsi:noNamespaceSchemaLocation',
            // attribute value
            'C://xampp/htdocs/GestionScolarité_XML/Validation_xml/'.$categorie.'s.xsd'
           );
        $dom->save("Fichiers_XML/".$categorie."s_".$class.".xml");
        
    }

}
}


header('Location:dashboard.php');
exit();
?>