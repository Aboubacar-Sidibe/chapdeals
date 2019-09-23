<%-- 
    Document   : uploadMp3
    Created on : Aug 12, 2019, 10:33:23 AM
    Author     : sidibe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <title>JSP Page</title>
        <style>
            #record {
                background-color: red; /* Green */
                border-width: medium;
                border-color: black;
                color: white;
                padding: 20px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                margin: 4px 2px;
                cursor: pointer;
                max-width: 50%;
                max-height: 15%;
                border-radius: 50%;
                left: 100px;
                right: 100px;
                position: relative;
            }
            
            h2 {
                left: 100px;
                position: relative;
            }
            #recordedAudio {
                left: 100px;
                right: 100px;
                position: relative;
            }
        </style>
    </head>
    <body>
        <h2>Record</h2>
        
        <p>
            <button id=record></button>
        </p>

        <p>
            <audio id=recordedAudio></audio>


        </p>

        <p>
            <button id="cancel"><i class="fa fa-arrows-alt"></i></button>
            <button id="stopRecord"><i class="fa fa-send"></i></button>
        </p>

        <script>
            var cancel = false;
            var cancelBtn = document.getElementById("cancel");
            navigator.mediaDevices.getUserMedia({audio: true})
                    .then(stream => {
                        handlerFunction(stream)
                    })


            function handlerFunction(stream) {
                rec = new MediaRecorder(stream);
                rec.ondataavailable = e => {
                    audioChunks.push(e.data);
                    if (rec.state == "inactive" && cancel != true) {
                        let blob = new Blob(audioChunks, {type: 'audio/mpeg-3'});
                        recordedAudio.src = URL.createObjectURL(blob);
                        recordedAudio.controls = true;
                        recordedAudio.autoplay = true;
                        sendData(blob);
                    } else
                    {
                        alert("recording cancel");
                    }
                }
            }
            function sendData(data) {}

            record.onclick = e => {
                console.log('I was clicked');
                record.disabled = true;
                record.style.backgroundColor = "blue";
                stopRecord.disabled = false;
                audioChunks = [];
                rec.start();
            }
            stopRecord.onclick = e => {
                console.log("I was clicked");
                cancel = false;
                record.disabled = false;
                stop.disabled = true;
                record.style.backgroundColor = "red"
                rec.stop();
            }

            cancelBtn.onclick = e => {
                console.log("canceled click")
                record.disabled = false;
                stop.disabled = true;
                record.style.backgroundColor = "red";
                cancel = true;
                rec.stop();
            }

        </script>
    </body>
</html>
