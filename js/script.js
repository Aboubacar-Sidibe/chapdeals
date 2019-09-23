/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function (e) {
    $("#addProduct").on('submit', (function (e) {
        e.preventDefault();

        var x = document.getElementsByClassName("subcategories");
        for (i = 0; i < x.length; i++)
        {
            if (x[i].getAttribute("style") == "display: none")
            {
                x[i].classList.add("g");

            }


        }
        $(".g").remove();

        $.ajax({
            url: "UploadImg",
            type: "POST",
            data: new FormData(this),
            contentType: false,
            cache: false,
            processData: false,
            beforeSend: function ()
            {
                //$("#preview").fadeOut();
                $("#err").fadeOut();
            },
            success: function (data)
            {
                if (data == 'invalid')
                {
                    // invalid file format.
                    $("#err").html("Invalid File !").fadeIn();
                } else
                {
                    // view uploaded file.
                    $("#preview").html(data).fadeIn();
                    //$("#addProduct")[0].reset();
                    setTimeout(function () {
                        $('#preview').fadeOut('fast');
                    }, 3000);
                }
            },
            error: function (e)
            {
                $("#err").html(e).fadeIn();
            }
        });
    }));
});
