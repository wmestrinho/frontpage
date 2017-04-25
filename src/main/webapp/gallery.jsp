<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
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
            float: right;
            width: 85%;
            height: auto;
        }

        header {background: #116980;color: #e9ec9b;}

        footer {background: #ffffff;color: #116980;}

        .nav {
            float: inherit;
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
            text-align: center;
        }

        .container {
            text-align: center;
            border-radius: 5px;
            background-color: #ffffff;
            padding: 20px;
        }

        .header {
            background-color: #2196F3;
            color: white;
            text-align: center;
            padding: 15px;
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
        <style>

            div.gallery {
                border: 1px solid #ccc;
            }

            div.gallery:hover {
                border: 1px solid #777;
            }

            div.gallery img {
                width: 100%;
                height: auto;
            }

            div.desc {
                padding: 15px;
                text-align: center;
            }

            * {
                box-sizing: border-box;
            }

            .responsive {
                padding: 0 6px;
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
        <div class="responsive">
            <div class="gallery">
                <a target="_blank" href="/imgs/logobackground.jpg">
                    <img src="/imgs/logobackground.jpg" alt="Trolltunga Norway" width="300" height="200">
                </a>
                <div class="desc">Add a description of the image here</div>
            </div>
        </div>


        <div class="responsive">
            <div class="gallery">
                <a target="_blank" href="/imgs/logoblackcircle.jpg">
                    <img src="/imgs/logoblackcircle.jpg" alt="Forest" width="600" height="400">
                </a>
                <div class="desc">Add a description of the image here</div>
            </div>
        </div>

        <div class="responsive">
            <div class="gallery">
                <a target="_blank" href="/imgs/logoblackcircle.jpg">
                    <img src="/imgs/logoblackcircle.jpg" alt="Northern Lights" width="600" height="400">
                </a>
                <div class="desc">Add a description of the image here</div>
            </div>
        </div>

        <div class="responsive">
            <div class="gallery">
                <a target="_blank" href="/imgs/logowhite.jpg">
                    <img src="/imgs/logowhite.jpg" alt="Mountains" width="600" height="400">
                </a>
                <div class="desc">Add a description of the image here</div>
            </div>
        </div>
        <div class="clearfix"></div>
        <div style="padding:6px;">
            <p>This example use media queries to re-arrange the images on different screen sizes: for screens larger than 700px wide, it will show four images side by side, for screens smaller than 700px, it will show two images side by side. For screens smaller than 500px, the images will stack vertically (100%).</p>
            <p>You will learn more about media queries and responsive web design later in our CSS Tutorial.</p>
        </div>
    </article>
    <footer><h3>Copyright &copy; Absolutely</h3></footer>
</div>
</body>
</html>

