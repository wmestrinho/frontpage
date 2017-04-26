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
            font-size: larger;
            display: inline-block;
            padding: 0;
        }

        .nav ul a {
            float: left;
            font-family: 'Roboto', sans-serif;
            font-size: larger;
            color: #ffffff;
            text-align: center;
            background-color: #116980;
            border: none;
            padding: 15px 32px;
            text-decoration: none;
            margin: 4px 2px;
        }

        .container {
            text-align: left;
            border-radius: 5px;
            background-color: #ffffff;
            padding: 20px;
        }

        @media all and (min-width: 768px) {
            .nav {text-align:center;-webkit-flex: 1 auto;flex:1 auto;-webkit-order:1;order:1;}
            .article {-webkit-flex:5 0px;flex:5 0px;-webkit-order:2;order:2;}
            footer {-webkit-order:3;order:3;}
        }

        input, select, textarea {
            width: 100%;
            font-family: 'Roboto', sans-serif;
            padding: 0px;
            box-sizing: border-box;
            outline: none;
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
            cursor: pointer;
            width: 250px;
            text-align: center;
        }

        input[type=submit]:hover {
            opacity: 0.7;
        }

        .container {
            background: #ffffff;
            text-align: center;
            border-radius: 0px;
            padding: 0px;
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
        <div class="container_msg">
            <c:if test="${success_msg != null}">
                <div class="alert alert-success">
                    <c:out value="${success_msg}"/>
                </div>
            </c:if>
        </div>
        <div class="container_msg2">
            <c:if test="${success_email_msg != null}">
                <div class="alert alert-success">
                    <c:out value="${success_email_msg}"/>
                </div>
            </c:if>
        </div>
        <div class="container">
            <form action="/sendingOrder" enctype="multipart/form-data" method="post">
                <fieldset><legend><h3>CONTACT</h3></legend>
                    <label for="name">Name:</label>
                    <input type="text" id="name" name="name" size="16" required>
                    <br>
                    <label for="tel">Telephone:</label><br>
                    <input type="tel" id="tel" name="phone" size="16" required>
                    <br>
                    <label for="email">E-mail:</label><br>
                    <input type="email" id="email" name="email" size="32" required>
                    <br>
                </fieldset>
                <div class="container">
                    <fieldset><legend><h3>CUSTOM ORDER</h3></legend>
                        <label for="date">Date:</label><br>
                        <input type="date" id="date" name="date" required>
                        <br>
                        <label for="item">Item:</label>
                        <input type="text" id="item" name="item" required>
                        <br>
                        <label for="material">Material:</label>
                        <input type="text" id="material" name="material" required>
                        <br>
                        <label for="sketch">Picture or File:</label><br>
                        <input type="file" id="sketch" name="sketch">
                        <br>
                        <label for="count">Count:</label>
                        <select id="count" name="count" required>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                        </select>
                        <br>
                        <label for="description">Description:</label>
                        <textarea id="description" name="description"
                                  style="height:200px">
                                    </textarea>
                        <input type="submit" value="SUBMIT">
                    </fieldset>
                </div>
            </form>
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
    </footer>
</div>
</body>
</html>
