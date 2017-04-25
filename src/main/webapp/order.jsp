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
            input, select, textarea {
                width: 100%;
                font-family: 'Roboto', sans-serif;
                padding: 3px;
                box-sizing: border-box;
                outline: none;
                margin-top: 6px;
                margin-bottom: 16px;
                text-align: left;

            }

            input[type=submit] {
                background-color: #116980;
                font-family: 'Roboto', sans-serif;
                color: whitesmoke;
                border: solid;
                padding: 12px 20px;
                border-radius: 0px;
                cursor: pointer;
                width: 250px;
                text-align: center;
            }

            input[type=submit]:hover {
                background-color: #00740e;
                text-align: center;

            }
            .container {
                text-align: center;
                border-radius: 5px;
                padding: 0px;
            }
        </style>
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
            <form action="/sendingEmail" enctype="multipart/form-data" method="post">
                <fieldset><legend><h3>CONTACT INFO</h3></legend>
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
                    <fieldset><legend><h3>ORDER INFO</h3></legend>
                        <label for="date">Date:</label><br>
                        <input type="date" id="date" name="date" required>
                        <br>
                        <label for="item">Item:</label>
                        <input type="text" id="item" name="item" required>
                        <br>
                        <label for="material">Material:</label>
                        <input type="text" id="material" name="material" required>
                        <br>
                        <label for="sketch">Picture or Sketch:</label><br>
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
    <footer><h3>Copyright &copy; Absolutely</h3></footer>
</div>
</body>
</html>
