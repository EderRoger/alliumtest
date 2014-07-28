$(document).ready(function () {
    $("#analysis_execution_analysis_id").change(function () {
        $.ajax(
            {
                url: ('get_onions_from_analysis/' + $("#analysis_execution_analysis_id option:selected").val()),
                type: 'GET',
                async: true,
                success: function (response) {
                    $('#cebolas').html(response)
                }
            });

    });

    $("#register_execution_analysis_id").change(function () {
        $.ajax(
            {
                url: ('/register_executions/get_group_by_analysis/' + $("#register_execution_analysis_id option:selected").val()),
                type: 'GET',
                async: true,
                success: function (response) {
                    //$('#register_execution_onion_id').html(response)
                    grupos = $('#register_execution_onion_group_id');
                    grupos.empty();
                    var cont = 1;

                    $.each(response, function (index, value) {

                        if(cont == 1){
                            var opt = $('<option/>');
                            // value is an array: [:id, :name]
                            opt.attr('value', 0);
                            // set text
                            opt.text('Selecione o Grupo');
                            // append to select
                            opt.appendTo(grupos);
                        }


                        // append an option
                        var opt = $('<option/>');

                        // value is an array: [:id, :name]
                        opt.attr('value', value[0]);
                        // set text
                        opt.text(value[1]);
                        // append to select
                        opt.appendTo(grupos);
                        cont++;
                    });

                }
            });
    });

    $("#register_execution_onion_group_id").change(function () {
        $.ajax(
            {
                url: ('/register_executions/get_onions_by_group/' + $("#register_execution_onion_group_id option:selected").val()),
                type: 'GET',
                async: true,
                success: function (response) {
                    //$('#register_execution_onion_id').html(response)
                    cebolas = $('#register_execution_onion_id');
                    cebolas.empty();
                    var cont = 1;
                    $.each(response, function (index, value) {
                        // append an option

                        if(cont == 1){
                            var opt = $('<option/>');
                            // value is an array: [:id, :name]
                            opt.attr('value', 0);
                            // set text
                            opt.text('Selecione a Allium Cepa');
                            // append to select
                            opt.appendTo(cebolas);
                        }

                        var opt = $('<option/>');
                        // value is an array: [:id, :name]
                        opt.attr('value', value[0]);
                        // set text
                        opt.text(value[1]);
                        // append to select
                        opt.appendTo(cebolas);
                        cont++;

                    });


                }
            });
    });

    $("#btn_graphic").click(function () {
        if($("#register_execution_onion_id option:selected").val() != 0){
            window.location = '/register_executions/report/' + $("#register_execution_onion_id option:selected").val();
        } else{
            alert('Selecionar Allium Cepa!');
        }


    });

    $("#btn_graphic_group").click(function () {
        if($("#register_execution_onion_group_id option:selected").val() != 0){
            window.location = '/register_executions/report_group/' + $("#register_execution_onion_group_id option:selected").val();
        } else{
            alert('Selecionar o  Grupo!');
        }


    });

});
