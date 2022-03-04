<?php
require("HTTPPost.php");
$_GET['class']='GINF2';
if(isset($_GET['class'])&& isset($_GET['cne']))
{
    $doc = new DOMDocument();
    $doc->load('../Fichiers_xml/Notes_'.$_GET['class'].'_ApresRat.xml');
    $xpath = new DOMXPath($doc);
    $query="//Notes/Note[CNE=".$_GET['cne']."]";
    $entries = $xpath->query($query);
    if ($entries->length==0) {
       header('Location:../Attestation.php?error=cneinexistant');
       exit();
    } 
   $i=0;
   $result= new DOMDocument;
   while ( $node = $entries->item($i) ) {
       // import node
       $domNode = $result->importNode($node, true);
       // append node
       $result->appendChild($domNode);
       $i++;
   }

  $studentXml=$result->saveXML();
  $httppost=new HTTPPost();
 $pdfdata=$httppost->post_request("localhost","8087","C://xampp/htdocs/GestionScolaire-XML-final/Fichiers_xslFO/releveNote.xsl",$studentXml);

    // save PDF output to a PDF file
    $myFile = $_GET['class']."_".$_GET['cne']."_releve.pdf";
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