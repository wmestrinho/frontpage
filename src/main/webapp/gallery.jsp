<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <style>

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
            width: 85%;
            height: auto;
        }

        header {background: #116980;color: #e9ec9b;}

        footer {background: #116980;color: #e9ec9b;}

        .nav {
            background: #ffffff;
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
            background-color: #ffffff;
            padding: 20px;
        }

        @media all and (min-width: 768px) {
            .nav {text-align:center;font-family: 'Roboto', sans-serif;-webkit-flex: 1 auto;flex:1 auto;-webkit-order:1;order:1;}
            .article {-webkit-flex:5 0px;flex:5 0px;-webkit-order:2;order:2;}
            footer {-webkit-order:3;order:3;}
        }
    </style>
</head>
<body>

<div class="flex-container">

    <header>
        <div class="logo">
            <img src="/imgs/logowhite.jpg">
        </div>
        <h1>keeptheCYCLE </h1>
    </header>
    <nav class="nav">
        <ul>
            <li><a href="/index.jsp">HOME</a></li>
            <li><a href="/order.jsp">ORDER</a></li>
            <li><a href="/gallery.jsp">GALLERY</a></li>
        </ul>
    </nav>
    <article class="article">
        <style>

            input[type=text], select, textarea {
                width: 100%;
                font-family: 'Roboto', sans-serif;
                padding: 3px;
                box-sizing: border-box;
                margin-top: 6px;
                margin-bottom: 16px;
                text-align: left;

            }

            input[type=submit] {

                background-color: #116980;
                font-family: 'Roboto', sans-serif;
                color: #ffffff;
                border: solid;
                padding: 12px 20px;
                border-radius: 0px;
                cursor: pointer;
                width: 250px;
            }

            input[type=submit]:hover {
                background-color: #00740e;

            }
            .container {
                text-align: center;
                border-radius: 5px;
                background-color: #ffffff;
                padding: 20px;
            }
</style>
<style>

            div.gallery {
                margin: 5px;
                border: 1px solid #ccc;
                float: left;
                width: 180px;
            }

            div.gallery:hover {
                border: 1px solid #777;
            }

            div.gallery img {
                width: 100%;
                height: auto;
            }

            div.desc {
                font-family: 'Roboto', sans-serif;
                text-align: center;
            }
    </style>

<body>

    <div class="gallery">
        <a target="_blank" href="img_fjords.jpg">
            <img src="img_fjords.jpg" alt="Trolltunga Norway" width="300" height="200">
        </a>
            <div class="desc">Add a description of the image here</div>
    </div>

    <div class="gallery">
        <a target="_blank" href="img_forest.jpg">
            <img src="img_forest.jpg" alt="Forest" width="600" height="400">
        </a>
             <div class="desc">Add a description of the image here</div>
    </div>

    <div class="gallery">
        <a target="_blank" href="img_lights.jpg">
            <img src="img_lights.jpg" alt="Northern Lights" width="600" height="400">
         </a>
        <div class="desc">Add a description of the image here</div>
    </div>

<div class="gallery">
    <a target="_blank" href="img_mountains.jpg">
        <img src="img_mountains.jpg" alt="Mountains" width="600" height="400">
    </a>
    <div class="desc">Add a description of the image here</div>
</div>
</body>

    </article>
    <footer><h3>Copyright &copy; Absolutely</h3></footer>
</div>
</body>
</html>

