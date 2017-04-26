<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>

        .fa {
            padding: 20px;
            font-size: 30px;
            width: 50px;
            text-align: center;
            text-decoration: none;
            margin: 5px 2px;
        }

        .fa:hover {
            opacity: 0.7;
        }

        .fa-facebook {
            background: #3B5998;
            color: white;
        }

        .fa-twitter {
            background: #55ACEE;
            color: white;
        }

        .fa-google {
            background: #dd4b39;
            color: white;
        }

        .fa-linkedin {
            background: #007bb5;
            color: white;
        }

        .fa-youtube {
            background: #bb0000;
            color: white;
        }

        .fa-instagram {
            background: #125688;
            color: white;
        }

        .fa-tumblr {
            background: #2c4762;
            color: white;
        }

        .flex-container {
            display: -webkit-flex;
            display: flex;
            -webkit-flex-flow: row wrap;
            flex-flow: row wrap;
            font-family: 'Roboto', sans-serif;
            text-align: center;
        }

        .flex-container > * {
            padding: 15px;
            -webkit-flex: 1 100%;
            flex: 1 100%;
        }

        .article {
            text-align: center;

        }

        div.logo{
            float: left;
            width: 100px;
        }

        div.logo img {
            float: right;
            width: 85%;
            height: auto;
            cursor: default;
        }

        header {background: #ffffff;color: #116980;}

        footer {background: #ffffff;color: #116980;}

        .nav {
            padding: 20px;
            width: 50px;
            text-align: center;
            text-decoration: none;
            margin: 5px 2px;
            background: #ffffff;
            font-size: larger;
        }

        .nav ul {
            list-style-type: none;
            font-family: 'Roboto', sans-serif;
            font-size: larger;
            padding: 0;
        }

        .nav ul a {
            font-family: 'Roboto', sans-serif;
            font-size: larger;
            color: #e9ec9b;
            text-align: center;
            background-color: #116980;
            border: none;
            display: inline-block;
            padding: 15px 32px;
            text-decoration: none;
            margin: 4px 2px;


        }

        .button {
            background-color: #116980;
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: default;
        }

        .button:hover {
            opacity: 0.7;
        }


        @media all and (min-width: 768px) {
            .nav {text-align:center;-webkit-flex: 1 auto;flex:1 auto;-webkit-order:1;order:1;}
            .article {-webkit-flex:5 0px;flex:5 0px;-webkit-order:2;order:2;}
            footer {-webkit-order:3;order:3;}
        }

        div.gallery {
            border: 0px solid;
        }

        div.gallery img {
            width: 100%;
            height: auto;
        }

        div.desc {
            padding: 15px;
            text-align: center;
        }

        .responsive {
            float: left;
            width: 24.99999%;
        }

        @media only screen and (max-width: 700px){
            .responsive {
                width: 49.99999%;
            }
        }

        @media only screen and (max-width: 500px){
            .responsive {
                width: 100%;
            }
        }

        .clearfix:after {
            content: "";
            display: table;
            clear: both;
        }
    </style>
</head>
<body>

<div class="flex-container">
    <header>
        <div class="logo">
            <a href="/index.jsp"><img src="/logos/logobluesolidnobckgrnd.png"></a>
        </div>
        <h1>keeptheCYCLE</h1>
    </header>
    <div class="nav">
        <a class="button" href="/index.jsp">HOME</a>
        <a class="button" href="/order.jsp">ORDER</a>
        <a class="button" href="/gallery.jsp">GALLERY</a>
    </div>
    <article class="article">
        <div class="responsive">
            <div class="gallery">
                <a target="_blank" href="">
                    <img src="/items/01 - COFFE TABLE SUNSET" alt="BEACH COFFEE TABLE" width="300" height="200">
                </a>
                <div class="desc">BEACH COFFEE TABLE</div>
            </div>
        </div>

        <div class="responsive">
            <div class="gallery">
                <a target="_blank" href="">
                    <img src="/items/02 - VINYL BOX" alt="VINYL BOX" width="600" height="400">
                </a>
                <div class="desc">VINYL BOX</div>
            </div>
        </div>

        <div class="responsive">
            <div class="gallery">
                <a target="_blank" href="">
                    <img src="/items/03 - ROSELI PATIO" alt="PATIO LOUNGE" width="600" height="400">
                </a>
                <div class="desc">PATIO LOUNGE</div>
            </div>
        </div>

        <div class="responsive">
            <div class="gallery">
                <a target="_blank" href="">
                    <img src="/items/04 - TREE BENCH" alt="TREE BENCH" width="600" height="400">
                </a>
                <div class="desc">TREE BENCH</div>
            </div>
        </div>

        <div class="responsive">
            <div class="gallery">
                <a target="_blank" href="">
                    <img src="/items/05 - GUITAR HOOK.JPG" alt="GUITAR HOOK" width="300" height="200">
                </a>
                <div class="desc">GUITAR HOOK</div>
            </div>
        </div>

        <div class="responsive">
            <div class="gallery">
                <a target="_blank" href="">
                    <img src="/items/06 - VYNIL STAND.JPG" alt="VINYL ROW STAND" width="600" height="400">
                </a>
                <div class="desc">VINYL ROW STAND</div>
            </div>
        </div>

        <div class="responsive">
            <div class="gallery">
                <a target="_blank" href="">
                    <img src="/items/07 - BENCH ASHTRAY.JPG" alt="PORK BENCH" width="600" height="400">
                </a>
                <div class="desc">PORK BENCH</div>
            </div>
        </div>

        <div class="responsive">
            <div class="gallery">
                <a target="_blank" href="">
                    <img src="/items/08 - PALLET STAGE.JPG" alt="Mountains" width="600" height="400">
                </a>
                <div class="desc">STAGE COLOURS BEATS VIBES</div>
            </div>
        </div>
        <div class="responsive">
            <div class="gallery">
                <a target="_blank" href="">
                    <img src="/items/05 - GUITAR HOOK.JPG" alt="Trolltunga Norway" width="300" height="200">
                </a>
                <div class="desc">MOCK</div>
            </div>
        </div>

        <div class="responsive">
            <div class="gallery">
                <a target="_blank" href="">
                    <img src="/items/06 - VYNIL STAND.JPG" alt="Forest" width="600" height="400">
                </a>
                <div class="desc">MOCK</div>
            </div>
        </div>

        <div class="responsive">
            <div class="gallery">
                <a target="_blank" href="">
                    <img src="/items/09 - PLANTER PLANT.jpg" alt="Northern Lights" width="600" height="400">
                </a>
                <div class="desc">PLANTER PLANT</div>
            </div>
        </div>

        <div class="responsive">
            <div class="gallery">
                <a target="_blank" href="">
                    <img src="/items/08 - PALLET STAGE.JPG" alt="Mountains" width="600" height="400">
                </a>
                <div class="desc">MOCK</div>
            </div>
        </div>
        <div class="clearfix"></div>
    </article>
    <footer>
    <a href="https://www.facebook.com/absolutelyplausible/" class="fa fa-facebook"></a>
    <a href="https://twitter.com/soplausibile" class="fa fa-twitter"></a>
    <a href="https://plus.google.com/u/0/103469953076983800586" class="fa fa-google"></a>
    <a href="https://www.linkedin.com/in/wagner-mestrinho-031b41139/" class="fa fa-linkedin"></a>
    <a href="https://www.youtube.com/" class="fa fa-youtube"></a>
    <a href="https://www.instagram.com/absolutelyplausible/" class="fa fa-instagram"></a>
    <a href="https://absolutelyplausible.tumblr.com" class="fa fa-tumblr"></a>
</footer>
</div>
</body>
</html>
