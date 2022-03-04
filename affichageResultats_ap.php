<?php $titre = "Affichage AP1"; ?>
<?php require 'sidebar.php'; ?>

<div class="main-content app-content mt-0">
                <div class="side-app">

                    <!-- CONTAINER -->
                    <div class="main-container container-fluid">

                        <!-- PAGE-HEADER -->
                        <div class="page-header">
                            <h1 class="page-title">Affichage des resultats du module AP11</h1>
                            <div>
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="javascript:void(0)">Affichage</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Affichage</li>
                                </ol>
                            </div>
                        </div>
                        <!-- PAGE-HEADER END -->
        <div class="row">
          <div class="col">
            <div class="card">
              <div class="card-body">
              <div class="header">
          <form  action="affichageResultats.php" method="GET">
          <div class="form-group">
            <div class="form-label">Choisir les resultats à afficher</div>
            <div class="custom-controls-stacked">
                <label class="custom-control custom-radio-md">
                        <input type="radio" class="custom-control-input" name="choix" value="1">
                        <span class="custom-control-label">Avant rattrapage</span>
                    </label>
                <label class="custom-control custom-radio-md">
                        <input type="radio" class="custom-control-input" name="choix" value="2">
                        <span class="custom-control-label">Après rattrapage</span>
                    </label>
                    <label class="custom-control">
                <input type="submit" class="btn btn-primary" name="OK">
                    </label>
            </div>
        </div>
          </form>
        </div>
              </div>
            </div>
          </div>
        </div>
        
        <div class="info">
  <?php
          if(isset($_GET['OK']))
          {
            if($_GET['choix']==1)
            {
              echo "<h3> Resultat avant rattrapage du module AP11 </h3>";

              $xp = new XsltProcessor();

              // Créez un document DOM et charger la feuille de style XSL
              $xsl = new DomDocument;
              $xsl->load('Fichier_xsl/Validation_Notes.xsl');

              // importer la feuille de style XSL dans le processus XSLT
              $xp->importStylesheet($xsl);

              // Créer un document DOM et charger les données XML
              $xml_doc = new DomDocument;
              $xml_doc->load('Fichiers_xml/Notes_AP1_Avant.xml');

              // Transformer du XML en HTML à l'aide du fichier XSL
              if ($html = $xp->transformToXML($xml_doc)) 
              {
                echo $html;
              } 
              else 
              {
                trigger_error('La transformation XSL a échoée.', E_USER_ERROR);
              }
            }
            else 
            {
              echo "<h3> Resultat apres rattrapage du module AP11</h3>";

              $xp = new XsltProcessor();

              // Créez un document DOM et charger la feuille de style XSL
              $xsl = new DomDocument;
              $xsl->load('Fichier_xsl/Validation_Notes.xsl');

              // importer la feuille de style XSL dans le processus XSLT
              $xp->importStylesheet($xsl);

              // Créer un document DOM et charger les données XML
              $xml_doc = new DomDocument;
              $xml_doc->load('Fichiers_xml/Notes_AP1_ApresRat.xml');

              // Transformer du XML en HTML à l'aide du fichier XSL
              if ($html = $xp->transformToXML($xml_doc)) 
              {
                echo $html;
              } 
              else 
              {
                trigger_error('Echec de la transformation xsl', E_USER_ERROR);
              }
            }
          }
?>
        </div>
      
        <!-- end content -->
  
  </div>
                </div>
            </div>
            <!--app-content close-->

        </div>


       

        <!-- FOOTER -->
        <footer class="footer">
            <div class="container">
                <div class="row align-items-center flex-row-reverse">
                    <div class="col-md-12 col-sm-12 text-center">
                        Copyright © 2022 <a href="javascript:void(0)">ENSA Tanger</a>. Développé par <a href="javascript:void(0)"> Mairou Haoua & Bentarki Nouhaila </a> Tous droits réservés.
                    </div>
                </div>
            </div>
        </footer>
        <!-- FOOTER END -->

    </div>

    <!-- BACK-TO-TOP -->
    <a href="#top" id="back-to-top"><i class="fa fa-angle-up"></i></a>

    <!-- JQUERY JS -->
    <script type="text/javascript"  src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/feather.min.js"></script>
    <script type="text/javascript">
        feather.replace();
    </script>

    <!-- BOOTSTRAP JS -->
    <script type="text/javascript" src="js/popper.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>

    <!-- SPARKLINE JS-->
    <script src="js/jquery.sparkline.min.js"></script>

    <!-- Sticky js -->
    <script src="js/sticky.js"></script>

    <!-- CHART-CIRCLE JS-->
    <script src="js/circle-progress.min.js"></script>

    <!-- PIETY CHART JS-->
    <script src="js/jquery.peity.min.js"></script>
    <script src="js/peitychart.init.js"></script>

    <!-- SIDEBAR JS -->
    <script src="js/sidebar.js"></script>

    <!-- Perfect SCROLLBAR JS-->
    <script src="js/perfect-scrollbar.js"></script>
    <script src="js/pscroll.js"></script>
    <script src="js/pscroll-1.js"></script>

    <!-- INTERNAL CHARTJS CHART JS-->
    <script src=js/Chart.bundle.js"></script>
    <script src="js/rounded-barchart.js"></script>
    <script src="js/utils.js"></script>

    <!-- INTERNAL SELECT2 JS -->
    <script src="js/select2.full.min.js"></script>

    <!-- INTERNAL Data tables js-->
    <script src="js/jquery.dataTables.min.js"></script>
    <script src="js/dataTables.bootstrap5.js"></script>
    <script src="js/dataTables.responsive.min.js"></script>

    <!-- INTERNAL APEXCHART JS -->
    <script src="js/apexcharts.js"></script>
    <script src="js/irregular-data-series.js"></script>

    <!-- C3 CHART JS -->
    <script src="js/charts-c3/d3.v5.min.js"></script>
    <script src="js/charts-c3/c3-chart.js"></script>

    <!-- CHART-DONUT JS -->
    <script src="js/charts.js"></script>

    <!-- INTERNAL Flot JS -->
    <script src="js/jquery.flot.js"></script>
    <script src="js/jquery.flot.fillbetween.js"></script>
    <script src="js/chart.flot.sampledata.js"></script>
    <script src="js/dashboard.sampledata.js"></script>

    <!-- INTERNAL Vector js -->
    <script src="js/jquery-jvectormap-2.0.2.min.js"></script>
    <script src="js/jquery-jvectormap-world-mill-en.js"></script>

    <!-- SIDE-MENU JS-->
    <script src="js/sidemenu.js"></script>

    <!-- INTERNAL INDEX JS -->
    <script src="js/index1.js"></script>

    <!-- Color Theme js -->
    <script src="js/themeColors.js"></script>

    <!-- CUSTOM JS -->
    <script src="js/custom.js"></script>

    <!-- Switcher js -->
    <script src="js/switcher.js"></script>

</body>

</html>
