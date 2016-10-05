<!DOCTYPE html>
<html>
    <head>
        <style>
            body  {

                /*    background-color: #252E33;*/
                background-color: rgba(0,0,0,0.99);
            }


            .content {
                position: absolute;
                top: 70%;
                left: 50%;
                -webkit-transform: translate(-50%, -50%);
                transform: translate(-50%, -50%);
                font-size: 20px;
                line-height: 40px;
                font-family: 'Muli';
                color: #808080;
                height: 160px;
                overflow: hidden;
            }

            .visible {
                font-weight: 600;
                overflow: hidden;
                height: 100px;
                padding: 0 40px;
            }
            .visible:before {
                content: '[';
                left: 0;
                line-height: 100px;
            }
            .visible:after {
                content: ']';
                position: absolute;
                right: 0;
                line-height: 100px;
            }
            .visible:after, .visible:before {
                position: absolute;
                top: 0;
                color: #808080;
                font-size: 80px;
                -webkit-animation: 2s linear 0s normal none infinite opacity;
                animation: 2s linear 0s normal none infinite opacity;
            }

            p {
                margin: 0;
            }

            @-webkit-keyframes opacity {
                0%, 100% {
                    opacity: 0;
                }
                50% {
                    opacity: 1;
                }
            }

            .gear {
                position: absolute;
                opacity: 0.10;
                filter: alpha(opacity=40);
                height:150px;
                width:150px;
                top:25%;
                left:45%;

                -webkit-animation:spin 10s linear infinite;
                -moz-animation:spin 10s linear infinite;
                animation:spin 10s linear infinite;


            }
            @-moz-keyframes spin { 100% { -moz-transform: rotate(360deg); } }
            @-webkit-keyframes spin { 100% { -webkit-transform: rotate(360deg); } }
            @keyframes spin { 100% { -webkit-transform: rotate(360deg); transform:rotate(360deg); } }




        </style>
    </head>
    <body>

        <link href='http://fonts.googleapis.com/css?family=Muli' rel='stylesheet' type='text/css'>

        <img class="gear" src="<?= base_url(); ?>assets/imagess/aiqbydn6T.png" alt=""> 

        <div class='content'>

            <div class='visible'>

                <center>
                    <p>
                        We are currently under maintenance. <br />We'll be back shortly, please bear with us.
                    </p>
                </center> 

            </div>
        </div>

    </body>
</html>

