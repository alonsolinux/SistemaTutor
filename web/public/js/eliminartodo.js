<script >
    function eliminar_pregunta(id_to_delete){
        var confirmation = confirm(String.fromCharCode(191)+'Est\u00E1 seguro de que desea eliminar la pregunta con el codigo '+ id_to_delete);

        if(confirmation)
        {
            window.location = "borrarpreguntas.jsp?id_pregunta_test="+id_to_delete;
        }
    }

    function eliminar_inteligencia(id_to_delete){
        var confirmation = confirm(String.fromCharCode(191)+'Est\u00E1 seguro de que desea eliminar la inteligencia con el codigo '+ id_to_delete);

        if(confirmation)
        {
            window.location = "borrarinteligencias.jsp?id_inteligencias="+id_to_delete;
        }
    }
</script>