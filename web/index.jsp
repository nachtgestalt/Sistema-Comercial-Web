<%-- 
    Document   : index
    Created on : 31/10/2015, 07:38:35 PM
    Author     : angel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel='stylesheet prefetch' href='http://netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap.min.css'>
        <link rel="stylesheet" href="CSS/style.css">
        <title>Sistema de Administracion comercial web</title>
    </head>
    <body>
        <h1>Sistema de Administracion Web</h1>
        <div class="wrapper">
            <form class="form-signin" action="Autenticacion" method="post">
                <h2 class="form-signin-heading">Iniciar sesion</h2>
                <input type="text" class="form-control" name="user" placeholder="Usuario" required="" autofocus="" />
                <input type="password" class="form-control" name="pass" placeholder="Password" required=""/>      
                <label class="checkbox">
                <input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe"> Recordar
                </label>
                <button class="btn btn-lg btn-primary btn-block" type="submit">Entrar</button>   
            </form>
         </div>
    </body>
</html>
