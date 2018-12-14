<footer class="page-footer orange">
    <div class="container">
        <div class="row">
            <div class="col s12">
                <h5 class="white-text">Sistema Academico</h5>
                <p class="white-text text-lighten-4">Sistema academico es una herramienta que puede ser aplicada en centros de ensenanza como: Institutos, Escuelas, Colegios, Academias, Universidades, Etc.</p>
            </div>
        </div>
    </div>
    <div class="footer-copyright">
        <div class="container">
            Adaptado por <a class="orange-text text-lighten-3" href="#">Alberto Alonso</a>
        </div>
    </div>
</footer>


<!-- Javascript -->
<script src="../public/js/materialize.js"></script>
<script src="../public/js/color-thief.min.js"></script>
<script src="../public/js/galleryExpand.js"></script>
<script src="../public/js/init.js"></script>
<script type="text/javascript" src="../public/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="../public/js/materialize.js"></script>
<script type="text/javascript" src="../public/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="../public/js/data-tables-script.js"></script>
<script type="text/javascript" src="../public/js/init.js"></script>
<script type="text/javascript" src="../public/js/jquery.collapsible.min.js"></script>
<script type="text/javascript" src="../public/js/sweetalert.min.js"></script>
<script type="text/javascript" src="../public/js/scrollspy.js"></script>
<!--scrollbar-->
<script type="text/javascript" src="../public/js/perfect-scrollbar.min.js"></script>
<!--plugins.js - Some Specific JS codes for Plugin Settings-->
<script type="text/javascript" src="../public/js/plugins.js"></script>
<!--custom-script.js - Add your own theme custom JS-->
<script type="text/javascript" src="../public/js/custom-script.js"></script>

<script>
    $(document).ready(function() {
        $('.collapsible').collapsible();
        $('.button-collapse').sideNav({});
        $('.materialboxed').materialbox();
        $(".button-collapse").sideNav();
        $('.scrollspy').scrollSpy();
        $('.modal').modal();
    });
    $(document).ready(function() {
        $('#usuarios').DataTable( {
            columnDefs: [
                {
                    targets: [ 0, 1, 2 ],
                    className: 'mdl-data-table__cell--non-numeric'
                }
            ]
        } );
    } );
</script>

</body>
</html>