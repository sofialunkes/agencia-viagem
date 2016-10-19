﻿$(document).ready(function () {
    $('.tabela-padrao').DataTable({
        "paging": true,
            "sEmptyTable": "Nenhum registro encontrado",
                "sNext": "Próximo",
            },
                "sSortAscending": ": Ordenar colunas de forma ascendente",
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