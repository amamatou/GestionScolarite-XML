<?php
require("HTTPPost.php");
if(isset($_GET['class']))
{
    $doc = new DOMDocument();
    $doc->load('C://xampp/htdocs/GestionScolaire-XML-final/Fichiers_xml/Students_'.$_GET['class'].'.xml');
   

  $studentsXml=$doc->saveXML();
  $httppost=new HTTPPost();
 $pdfdata=$httppost->post_request("localhost","8087","C://xampp/htdocs/GestionScolaire-XML-final/Fichiers_xslFO/listegroupe.xsl",$studentsXml);

    // save PDF output to a PDF file
    $myFile = $_GET['class']."_liste.pdf";
    $fh = fopen($myFile, 'w') or die("can't open file");
    fwrite($fh, $pdfdata);
    fclose($fh);
   //Display PDF
    header('Content-type: application/pdf'); 
  
    header('Content-Disposition: inline; filename="' . $myFile . '"'); 
      
    header('Content-Transfer-Encoding: binary'); 
      
    header('Accept-Ranges: bytes'); 
      
    // Read the file 
    @readfile($myFile); 
    //DELETE PDF
    unlink($myFile);
    }
else{
    //redirect to dashboard
    header('Location:../dashboard.php');
}
?>