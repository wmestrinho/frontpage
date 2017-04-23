<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <style>
        div.container1 {
            width: 100%;
            border: 1px solid gray;
        }

        header, footer {
            padding: 1em;
            color: white;
            background-color: black;
            clear: left;
            text-align: center;
        }

        nav {
            float: left;
            max-width: 160px;
            margin: 0;
            padding: 1em;
        }

        nav ul {
            list-style-type: none;
            padding: 0;
        }

        nav ul a {
            text-decoration: none;
        }

        article {
            margin-left: 170px;
            border-left: 1px solid gray;
            padding: 1em;
            overflow: hidden;
        }
    </style>
</head>
<body>

<div class="container1">

    <header>
        <h1>City Gallery</h1>
    </header>

    <nav>
        <ul>
            <li><a href="#">home</a></li>
            <li><a href="#">order</a></li>
            <li><a href="#">gallery</a></li>
        </ul>
    </nav>

    <article><style>
        input[type=text], select, textarea {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-top: 6px;
            margin-bottom: 16px;
            resize: vertical;
        }

        input[type=submit] {
            background-color: #4CAF50;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type=submit]:hover {
            background-color: #45a049;
        }

        container {
            border-radius: 5px;
            background-color: #f2f2f2;
            padding: 20px;
        }
    </style>
        </head>
        <body>

        <div class="container">
            <c:if test="${succes_msg != null}">
            <div class="alert alert-success">
                <c:out value="${succes_msg}"/>
            </div>
            </c:if>
        <div class="container">
            <h3>Contact Info</h3>
            <form action="/savingOrder" enctype="multipart/form-data" method="post">
                <label for="name">Name</label>
                <input type="text" id="name" name="name" size="20" required>
                <label for="tel">Telephone</label><br>
                <input type="tel" id="tel" name="phone" required>
                <br>
                <label for="email">E-mail</label><br>
                <input type="email" id="email" name="email" required>
                <br>
                <div class="container2">
                    <h3>Order Info</h3>
                    <label for="date">Date</label><br>
                    <input type="date" id="date" name="date" required>
                    <br>
                    <label for="item">Item</label>
                    <input type="text" id="item" name="item" required>
                    <label for="material">Material</label>
                    <input type="text" id="material" name="material" required>
                    <label for="sketch">Upload Picture for reference</label>
                    <input type="file" id="sketch" name="sketch" >
                    <br>
                    <label for="count">Count</label>
                    <select id="count" name="count">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                    </select>
                    <label for="description">Description</label>
                    <textarea id="description" name="description" required
                              placeholder="Any thoughts about the project? You can also paste links in here..."
                              style="height:200px">
                    </textarea>

                    <input type="submit" value="Submit">
                </div>
            </form>
        </div>
        </body>
    </article>

    <footer>Copyright &copy; Absolutely</footer>

</div>

</body>
</html>
