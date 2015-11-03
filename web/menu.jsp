<%-- 
    Document   : menu
    Created on : 31/10/2015, 08:44:23 PM
    Author     : angel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bienvenido a Deportes 3000</title>
        <link rel="stylesheet" href="CSS/stylemenu.css">
        <link rel="stylesheet" type="text/css" href="CSS/affablebean.css">
        <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
        <script src="script.js"></script>
    </head>
    <body>
        <div id="main">
            <div id="header">
                <div id="widgetBar">

                    <div class="headerWidget">
                        [ Carrito ]
                    </div>

                </div>

                <a href="#">
                    <img src="imagenes/mistertennis.png" id="logo" alt="Deportes 3000">
                </a>

                <img src="#" id="logoText" alt="Deportes 3000">
            </div>
            
            <div id='cssmenu'>
            <ul>
                <li><a href='#'><span>INICIO</span></a></li>
                <li class='active has-sub'><a href='#'><span>FUTBOL</span></a>
                <ul>
                  <li class='has-sub'><a href='#'><span>Product 1</span></a>
                     <ul>
                        <li><a href='#'><span>Sub Product</span></a></li>
                        <li class='last'><a href='#'><span>Sub Product</span></a></li>
                     </ul>
                  </li>
                  <li class='has-sub'><a href='#'><span>Product 2</span></a>
                     <ul>
                        <li><a href='#'><span>Sub Product</span></a></li>
                        <li class='last'><a href='#'><span>Sub Product</span></a></li>
                     </ul>
                  </li>
                </ul>
                </li>
                <li><a href='#'><span>CORRER</span></a></li>
                <li class='last'><a href='#'><span>Contact</span></a></li>
            </ul>
            </div>

            <div id="indexLeftColumn">
                left column
            </div>

            <div id="indexRightColumn">
                <div class="categoryBox">
                    <a href="#">
                        <span class="categoryLabelText">dairy</span>
                    </a>
                </div>
                <div class="categoryBox">
                    <a href="#">
                        <span class="categoryLabelText">meats</span>
                    </a>
                </div>  
                <div class="categoryBox">
                    <a href="#">
                        <span class="categoryLabelText">bakery</span>
                    </a>
                </div>
                <div class="categoryBox">
                    <a href="#">
                        <span class="categoryLabelText">fruit & veg</span>
                    </a>
                </div> 
            </div>

            <div id="footer">
                footer
            </div>
        </div>
        
    </body>
</html>
