$(document).ready(function () {
    $('.tabela-padrao').DataTable({
        "paging": true,        "searching": true,        "ordering": true,        dom: 'Bfrtip',        stateSave: true,        "language": {
            "sEmptyTable": "Nenhum registro encontrado",            "sInfo": "Mostrando de _START_ até _END_ de _TOTAL_ registros",            "sInfoEmpty": "Mostrando 0 até 0 de 0 registros",            "sInfoFiltered": "(Filtrados de _MAX_ registros)",            "sInfoPostFix": "",            "sInfoThousands": ".",            "sLengthMenu": "_MENU_ resultados por página",            "sLoadingRecords": "Carregando...",            "sProcessing": "Processando...",            "sZeroRecords": "Nenhum registro encontrado",            "sSearch": "Pesquisar",            "oPaginate": {
                "sNext": "Próximo",                "sPrevious": "Anterior",                "sFirst": "Primeiro",                "sLast": "Último"
            },            "oAria": {
                "sSortAscending": ": Ordenar colunas de forma ascendente",                "sSortDescending": ": Ordenar colunas de forma descendente"
            },
            buttons:
                {
                    colvis: 'Selecione colunas',
                    copyTitle: 'Copiados',
                    copySuccess: {
                        1: 'Copiado 1 item para area de transferencia'
                    }
                }
        }
    });
    $('[data-toogle = "tooltip"]').tooltip();
    $(function () {
        $(".busca").keyup(function () {
            var texto = $(this).val();
            if (texto != "") {
                $(".conteudo > div").hide();
                $(".conteudo > div").each(function () {
                    if ($(this).text().UpperCase().indexOf(texto.UpperCase()) >= 0) {
                        $(this).show();
                    }
                })
            } else {
                $(".conteudo > div").show();
            }
        });
    });
});