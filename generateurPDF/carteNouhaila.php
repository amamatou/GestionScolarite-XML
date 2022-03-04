<?php
require("HTTPPost.php");

    $doc = new DOMDocument();
    $doc->load('../Fichiers_XML/Students_'."GINF2".'.xml');
    $xpath = new DOMXPath($doc);
    $query="//Students/Student[CNE="."18000157"."]";
    $entries = $xpath->query($query);
    if ($entries->length==0) {
        header('Location:../dashboard.php?error=cneinexistant');
        exit();
     } 
   $output = '';
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
   $pdfdata=$httppost->post_request("localhost","8087","C://xampp/htdocs/GestionScolaire-XML-final/Fichiers_xslFO/carteNouhaila.xsl",$studentXml);

    // save PDF output to a PDF file
    $myFile = "GINF2"."_"."18000157".".pdf";
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

?>