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

        .fa-github {
            background: #2e3032;
            color: white;
        }

        .fa-medium {
            background: #00b489;
            color: white;
        }

        .fa-soundcloud {
            background: #ff6600;
            color: white;
        }

        .fa-credit-card {
            background: #1a744d;
            color: white;
        }

        .fa-wikipedia-w {
            background: #adadad;
            color: #000000;
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

        h1 {
            background: #ffffff;
            color: #116980;
        }

        h3 {
            background: #ffffff;
            color: #116980;
        }

        p {
            background: #ffffff;
            color: #116980;
            font-family: 'Roboto', sans-serif;
            font-size: larger;

        }

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
            color: #e9ec9b;
            text-decoration: #e9ec9b;
            padding: 0;
        }

        .nav ul a {
            font-family: 'Roboto', sans-serif;
            font-size: larger;
            color: #e9ec9b;
            text-align: center;
            background-color: #116980;
            border: none;
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
            display: inline-flex;
            font-size: 16px;
            margin: 4px 2px;
            cursor: default;
        }

        .button:hover {
            opacity: 0.7;
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
            float: inherit;
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

        .container {
            text-align: center;
            border-radius: 5px;
            padding: 20px;
        }

        @media all and (min-width: 768px) {
            .nav {text-align:center;-webkit-flex: 1 auto;flex:1 auto;-webkit-order:1;order:1;}
            .article {-webkit-flex:5 auto;flex:5 0px;-webkit-order:2;order:2;}
            footer {-webkit-order:3;order:3;}
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
        <a class="button" href="https://www.gofundme.com/keeptheCYCLE">DONATE!</a>
    </div>
    <article class="article">
        <div style="padding:6px;">
            <h1>It always seems impossible until it's done.</h1>
                        <h3>Nelson Mandela</h3>
        <p>
            We provide any type of solutions for services and products,
                            We are here to BENEFIT the COMMUNITY, <br>
                            Our MOTIVATION its DONATION BASED<br>
                        we are here to keeptheCYCLE  </p>
                    <br>
        </div>
    </article>
    <footer>
        <a href="https://www.facebook.com/absolutelyplausible/" class="fa fa-facebook"></a>
        <a href="https://twitter.com/soplausibile" class="fa fa-twitter"></a>
        <a href="https://plus.google.com/u/0/103469953076983800586" class="fa fa-google"></a>
        <a href="https://www.linkedin.com/in/wagner-mestrinho-031b41139/" class="fa fa-linkedin"></a>
        <a href="https://www.youtube.com/" class="fa fa-youtube"></a>
        <a href="https://www.instagram.com/absolutelyplausible/" class="fa fa-instagram"></a>
        <a href="https://absolutelyplausible.tumblr.com" class="fa fa-tumblr"></a>
        <a href="https://www.gofundme.com/keeptheCYCLE" class="fa fa-credit-card"></a>
        <a href="https://github.com/wmestrinho" class="fa fa-github"></a>
        <a href="https://medium.com/@wagnerme" class="fa fa-medium"></a>
        <a href="https://soundcloud.com/robofantasma" class="fa fa-soundcloud"></a>
        <a href="#" class="fa fa-wikipedia-w"></a>
    </footer>
</div>
</body>
</html>
