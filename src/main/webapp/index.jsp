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
            text-align: left;
        }

        div.logo{
            float: left;
            width: 100px;
        }

        div.logo img {
            float: right;
            width: 85%;
            height: auto;
        }

        header {background: #116980;color: #e9ec9b;}

        footer {background: #ffffff;color: #116980;}

        .nav {
            background: #116980;
            font-size: larger;
            text-decoration: #e9ec9b;
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
            text-decoration: #e9ec9b;
            font-family: 'Roboto', sans-serif;
            font-size: larger;
            color: #e9ec9b;
            text-decoration: #e9ec9b;
            text-align: center;
        }
        .container {
            text-align: center;
            border-radius: 5px;
            padding: 20px;
        }

        @media all and (min-width: 768px) {
            .nav {text-align:center;-webkit-flex: 1 auto;flex:1 auto;-webkit-order:1;order:1;}
            .article {-webkit-flex:5 0px;flex:5 0px;-webkit-order:2;order:2;}
            footer {-webkit-order:3;order:3;}
        }
    </style>
</head>
<body>

<div class="flex-container">
    <header>
        <div class="logo">
            <img src="/imgs/logobackground.jpg">
        </div>
        <h1>keeptheCYCLE</h1>
    </header>
    <nav class="nav">
        <ul>
            <li><a href="/index.jsp">HOME</a></li>
            <li><a href="/order.jsp">ORDER</a></li>
            <li><a href="/gallery.jsp">GALLERY</a></li>
        </ul>
    </nav>
    <article class="article">



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
