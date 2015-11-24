<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="LoginMVC.modelo.BeanProducto"%>
<%@page import="java.util.ArrayList,LoginMVC.modelo.*" %>    
<!DOCTYPE HTML>
<html>
<head>
<title>Deportes 3000</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript">
        $(document).ready(function() {
            $(".dropdown img.flag").addClass("flagvisibility");

            $(".dropdown dt a").click(function() {
                $(".dropdown dd ul").toggle();
            });
                        
            $(".dropdown dd ul li a").click(function() {
                var text = $(this).html();
                $(".dropdown dt a span").html(text);
                $(".dropdown dd ul").hide();
                $("#result").html("Selected value is: " + getSelectedValue("sample"));
            });
                        
            function getSelectedValue(id) {
                return $("#" + id).find("dt a span.value").html();
            }

            $(document).bind('click', function(e) {
                var $clicked = $(e.target);
                if (! $clicked.parents().hasClass("dropdown"))
                    $(".dropdown dd ul").hide();
            });


            $("#flagSwitcher").click(function() {
                $(".dropdown img.flag").toggleClass("flagvisibility");
            });
        });
     </script>
<!-- start menu -->     
<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<!-- end menu -->
<!-- top scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
   <script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
			});
		});
	</script>
</head>
<body>
    <div class="header-top">
	 <div class="wrap"> 
		<div class="logo">
			<a href="index.jsp"><img src="imagenes/mistertennis.png" alt=""/></a>
	    </div>
	    <div class="cssmenu">
		   <ul>
                         <%
                             if ((session.getAttribute("username") == null) || (session.getAttribute("username") == "")) {
                         %>
                         <li><a href="login.jsp">Mi cuenta</a></li> 
			 <li><a href="checkout.jsp">Checkout</a></li>
                         <%} else { %>
                            <li><a href="login.jsp">Mi cuenta</a></li> 
                            <li><a href="checkout.jsp">Checkout</a></li>
                            <li><a href="logout.jsp" >Cerrar sesion</a></li> 
                        <% 
                            }
                        %>
		   </ul>
		</div>
		<ul class="icon2 sub-icon2 profile_img">
			<li><a class="active-icon c2" href="#"> </a>
				<ul class="sub-icon2 list">
					<li><h3>Products</h3><a href=""></a></li>
				</ul>
			</li>
		</ul>
		<div class="clear"></div>
 	</div>
   </div>
   <div class="header-bottom">
   	  <div class="wrap">
   		<!-- start header menu -->
		 <ul class="megamenu skyblue">
                     <li><a class="color1" href="index.jsp">Inicio</a></li>
			<li class="grid"><a class="color2" href="#">Hombre</a>
				<div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<h4>Calzado</h4>
								<ul>
									<li><a href="tienda.jsp">Moda</a></li>
									<li><a href="tienda.jsp">Futbol</a></li>
									<li><a href="tienda.jsp">Basquetbol</a></li>
									<li><a href="tienda.jsp">Entrenamiento</a></li>
									<li><a href="tienda.jsp">Correr</a></li>
									<li><a href="tienda.jsp">Sandalias</a></li>
								</ul>
                                                                <h4>Ropa</h4>
                                                                <ul>
									<li><a href="tienda.jsp">Jerseys</a></li>
									<li><a href="tienda.jsp">Playeras</a></li>
									<li><a href="tienda.jsp">Chamarras</a></li>
									<li><a href="tienda.jsp">Shorts</a></li>
									<li><a href="tienda.jsp">Pants</a></li>
								</ul>
                                                                <h4>Accesorios</h4>
                                                                <ul>
									<li><a href="tienda.jsp">Gorras</a></li>
									<li><a href="tienda.jsp">Relojes</a></li>
									<li><a href="tienda.jsp">Lentes</a></li>
									<li><a href="tienda.jsp">Mochilas</a></li>
								</ul>
                                                        </div>
						</div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<img src="imagenes/nav_img.jpg" alt=""/>
					</div>
				</div>
				</li>
  			   <li class="active grid"><a class="color4" href="#">Mujer</a>
				<div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<h4>Calzado</h4>
								<ul>
									<li><a href="tienda.jsp">Moda</a></li>
									<li><a href="tienda.jsp">Futbol</a></li>
									<li><a href="tienda.jsp">Basquetbol</a></li>
									<li><a href="tienda.jsp">Entrenamiento</a></li>
									<li><a href="tienda.jsp">Correr</a></li>
									<li><a href="tienda.jsp">Sandalias</a></li>
								</ul>
                                                                <h4>Ropa</h4>
                                                                <ul>
									<li><a href="tienda.jsp">Jerseys</a></li>
									<li><a href="tienda.jsp">Playeras</a></li>
									<li><a href="tienda.jsp">Chamarras</a></li>
									<li><a href="tienda.jsp">Shorts</a></li>
									<li><a href="tienda.jsp">Pants</a></li>
								</ul>
                                                                <h4>Accesorios</h4>
                                                                <ul>
									<li><a href="tienda.jsp">Gorras</a></li>
									<li><a href="tienda.jsp">Relojes</a></li>
									<li><a href="tienda.jsp">Lentes</a></li>
									<li><a href="tienda.jsp">Mochilas</a></li>
								</ul>
                                                        </div>
						</div>
						<div class="col1">
                                                    <div class="h_nav">
                                                        <img src="imagenes/nav_img1.jpg" alt=""/>
                                                    </div>
						</div>
					</div>
					</div>
    			</li>				
				<li><a class="color5" href="#">Niños</a>
				<div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<h4>Calzado</h4>
								<ul>
									<li><a href="tienda.jsp">Moda</a></li>
									<li><a href="tienda.jsp">Futbol</a></li>
									<li><a href="tienda.jsp">Basquetbol</a></li>
									<li><a href="tienda.jsp">Entrenamiento</a></li>
									<li><a href="tienda.jsp">Correr</a></li>
									<li><a href="tienda.jsp">Sandalias</a></li>
								</ul>
                                                                <h4>Ropa</h4>
                                                                <ul>
									<li><a href="tienda.jsp">Jerseys</a></li>
									<li><a href="tienda.jsp">Playeras</a></li>
									<li><a href="tienda.jsp">Chamarras</a></li>
									<li><a href="tienda.jsp">Shorts</a></li>
									<li><a href="tienda.jsp">Pants</a></li>
								</ul>
                                                                <h4>Accesorios</h4>
                                                                <ul>
									<li><a href="tienda.jsp">Gorras</a></li>
									<li><a href="tienda.jsp">Relojes</a></li>
									<li><a href="tienda.jsp">Lentes</a></li>
									<li><a href="tienda.jsp">Mochilas</a></li>
								</ul>
                                                        </div>
						</div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<img src="imagenes/nav_img2.jpg" alt=""/>
					</div>
				</div>
				</li>
				<li><a class="color9" href="#">Deportes</a>
				<div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
                                                            <ul>
                                                                <li><a href="tienda.jsp">Futbol</a></li>
                                                                <li><a href="tienda.jsp">Basquetbol</a></li>
                                                                <li><a href="tienda.jsp">Correr</a></li>
                                                                <li><a href="tienda.jsp">Entrenamiento</a></h4>
							    </ul>
							</div>
						</div>
					</div>
    				</div>
		   </ul>
		   <div class="clear"></div>
     	</div>
       </div>
		   <div class="clear"></div>
     	</div>
       </div>
       <div class="index-banner">
       	  <div class="wmuSlider example1" style="height: 560px;">
			  <div class="wmuSliderWrapper">
				  <article style="position: relative; width: 100%; opacity: 1;"> 
				   	<div class="banner-wrap">
					   	<div class="slider-left">
							<img src="imagenes/banner1.jpg" alt=""/> 
						</div>
						 <div class="slider-right">
						    <h1>Classic</h1>
						    <h2>White</h2>
						    <p>Tenis chidos</p>
						    <div class="btn"><a href="tienda.jsp">Comprar</a></div>
						 </div>
						 <div class="clear"></div>
					 </div>
					</article>
				   <article style="position: absolute; width: 100%; opacity: 0;"> 
				   	 <div class="banner-wrap">
					   	<div class="slider-left">
							<img src="imagenes/banner2.jpg" alt=""/> 
						</div>
						 <div class="slider-right">
						    <h1>Classic</h1>
						    <h2>White</h2>
						    <p>Tenis chidos</p>
						    <div class="btn"><a href="tienda.jsp">Comprar</a></div>
						 </div>
						 <div class="clear"></div>
					 </div>
				   </article>
				   <article style="position: absolute; width: 100%; opacity: 0;">
				   	<div class="banner-wrap">
					   	<div class="slider-left">
							<img src="imagenes/banner1.jpg" alt=""/> 
						</div>
						 <div class="slider-right">
						    <h1>Classic</h1>
						    <h2>White</h2>
						    <p>Tenis chidos</p>
						    <div class="btn"><a href="tienda.jsp">Comprar</a></div>
						 </div>
						 <div class="clear"></div>
					 </div>
				   </article>
				   <article style="position: absolute; width: 100%; opacity: 0;">
				   	<div class="banner-wrap">
					   	<div class="slider-left">
							<img src="imagenes/banner2.jpg" alt=""/> 
						</div>
						 <div class="slider-right">
						    <h1>Classic</h1>
						    <h2>White</h2>
						    <p>Tenis chidos</p>
						    <div class="btn"><a href="tienda.jsp">Comprar</a></div>
						 </div>
						 <div class="clear"></div>
					 </div>
				   </article>
				   <article style="position: absolute; width: 100%; opacity: 0;"> 
				   	 <div class="banner-wrap">
					   	<div class="slider-left">
							<img src="imagenes/banner1.jpg" alt=""/> 
						</div>
						 <div class="slider-right">
						    <h1>Classic</h1>
						    <h2>White</h2>
						    <p>Tenis chidos</p>
						    <div class="btn"><a href="tienda.jsp">Comprar</a></div>
						 </div>
						 <div class="clear"></div>
					 </div>
			      </article>
				</div>
                <a class="wmuSliderPrev">Previous</a><a class="wmuSliderNext">Next</a>
                <ul class="wmuSliderPagination">
                	<li><a href="#" class="">0</a></li>
                	<li><a href="#" class="">1</a></li>
                	<li><a href="#" class="wmuActive">2</a></li>
                	<li><a href="#">3</a></li>
                	<li><a href="#">4</a></li>
                  </ul>
                 <a class="wmuSliderPrev">Previous</a><a class="wmuSliderNext">Next</a><ul class="wmuSliderPagination"><li><a href="#" class="wmuActive">0</a></li><li><a href="#" class="">1</a></li><li><a href="#" class="">2</a></li><li><a href="#" class="">3</a></li><li><a href="#" class="">4</a></li></ul></div>
            	 <script src="js/jquery.wmuSlider.js"></script> 
				 <script type="text/javascript" src="js/modernizr.custom.min.js"></script> 
						<script>
       						 $('.example1').wmuSlider();         
   						</script> 	           	      
             </div>
             <div class="main">
                <div class="wrap">
				  <div class="content-bottom">
				   <div class="box1">
				    <div class="col_1_of_3 span_1_of_3"><a href="single.html">
				     <div class="view view-fifth">
                                         <div class="top_box">
                                             <%
                                                ArrayList<BeanProducto> lista = Consultas.consultarProducto();
                                                BeanProducto beanP = lista.get(0);
                                             %>   
                                             <h3 class="m_1"><%=beanP.getNombre()%></h3>
                                             <p class="m_2">Marca:<%=beanP.getMarca()%></p>
                                             <div class="grid_img">
                                                 <div class="css3"><img src="imagenes/pic.jpg" alt=""/></div>
                                                 <div class="mask">
                                                     <div class="info">Vista Rapida</div>
                                                 </div>
                                            </div>    
                                             <div class="price">$<%=beanP.getPrecio()%></div>        
                                         </div>
                                     </div>
					   <span class="rating">
				        <input type="radio" class="rating-input" id="rating-input-1-5" name="rating-input-1">
				        <label for="rating-input-1-5" class="rating-star1"></label>
				        <input type="radio" class="rating-input" id="rating-input-1-4" name="rating-input-1">
				        <label for="rating-input-1-4" class="rating-star1"></label>
				        <input type="radio" class="rating-input" id="rating-input-1-3" name="rating-input-1">
				        <label for="rating-input-1-3" class="rating-star1"></label>
				        <input type="radio" class="rating-input" id="rating-input-1-2" name="rating-input-1">
				        <label for="rating-input-1-2" class="rating-star"></label>
				        <input type="radio" class="rating-input" id="rating-input-1-1" name="rating-input-1">
				        <label for="rating-input-1-1" class="rating-star"></label>&nbsp;
		        	  (45)
		    	      </span>
						 <ul class="list">
						  <li>
						  	<img src="imagenes/plus.png" alt=""/>
						  	<ul class="icon1 sub-icon1 profile_img">
                                                            <li><a class="active-icon c1" href="agregarProductoCarrito.jsp?cod=<%=beanP.getId()%>">Al carrito </a>
								<ul class="sub-icon1 list">
									<li><h5>Agregar este producto al carrito</h5><a href=""></a></li>
								</ul>
							  </li>
							 </ul>
						   </li>
					     </ul>
			    	    <div class="clear"></div>
			    	</a></div>
				    <div class="col_1_of_3 span_1_of_3"><a href="single.html">
				     <div class="view view-fifth">
				  	  <div class="top_box">
                                              <% beanP = lista.get(1);%>
                                              <h3 class="m_1"><%=beanP.getNombre()%></h3>
					  	<p class="m_2">Marca:<%=beanP.getMarca()%> </p>
					    <div class="grid_img">
						   <div class="css3"><img src="imagenes/pic1.jpg" alt=""/></div>
					          <div class="mask">
	                       		<div class="info">Vista Rapida</div>
			                  </div>
	                    </div>
                       <div class="price">$<%=beanP.getPrecio()%></div>
					   </div>
					    </div>
					   <span class="rating">
				        <input type="radio" class="rating-input" id="rating-input-1-5" name="rating-input-1">
				        <label for="rating-input-1-5" class="rating-star1"></label>
				        <input type="radio" class="rating-input" id="rating-input-1-4" name="rating-input-1">
				        <label for="rating-input-1-4" class="rating-star1"></label>
				        <input type="radio" class="rating-input" id="rating-input-1-3" name="rating-input-1">
				        <label for="rating-input-1-3" class="rating-star1"></label>
				        <input type="radio" class="rating-input" id="rating-input-1-2" name="rating-input-1">
				        <label for="rating-input-1-2" class="rating-star"></label>
				        <input type="radio" class="rating-input" id="rating-input-1-1" name="rating-input-1">
				        <label for="rating-input-1-1" class="rating-star"></label>&nbsp;
		        	  (45)
		    	      </span>
						 <ul class="list">
						  <li>
						  	<img src="imagenes/plus.png" alt=""/>
						  	<ul class="icon1 sub-icon1 profile_img">
							  <li><a class="active-icon c1" href="agregarProductoCarrito.jsp?cod=<%=beanP.getId()%>">Al carrito </a>
								<ul class="sub-icon1 list">
									<li><h5>Agregar este producto al carrito</h5><a href=""></a></li>
								</ul>
							  </li>
							 </ul>
						   </li>
					     </ul>
			    	    <div class="clear"></div>
			    	</a></div>
				    <div class="col_1_of_3 span_1_of_3"><a href="single.html">
				     <div class="view view-fifth">
				  	  <div class="top_box">
					  	<h3 class="m_1">Tenis chidos</h3>
					  	<p class="m_2">Marca: Patito</p>
				         <div class="grid_img">
						   <div class="css3"><img src="imagenes/pic2.jpg" alt=""/></div>
					          <div class="mask">
	                       		<div class="info">Vista Rapida</div>
			                  </div>
	                    </div>
                       <div class="price">$780</div>
					   </div>
					    </div>
					   <span class="rating">
				        <input type="radio" class="rating-input" id="rating-input-1-5" name="rating-input-1">
				        <label for="rating-input-1-5" class="rating-star1"></label>
				        <input type="radio" class="rating-input" id="rating-input-1-4" name="rating-input-1">
				        <label for="rating-input-1-4" class="rating-star1"></label>
				        <input type="radio" class="rating-input" id="rating-input-1-3" name="rating-input-1">
				        <label for="rating-input-1-3" class="rating-star1"></label>
				        <input type="radio" class="rating-input" id="rating-input-1-2" name="rating-input-1">
				        <label for="rating-input-1-2" class="rating-star"></label>
				        <input type="radio" class="rating-input" id="rating-input-1-1" name="rating-input-1">
				        <label for="rating-input-1-1" class="rating-star"></label>&nbsp;
		        	  (45)
		    	      </span>
						 <ul class="list">
						  <li>
						  	<img src="imagenes/plus.png" alt=""/>
						  	<ul class="icon1 sub-icon1 profile_img">
							  <li><a class="active-icon c1" href="#">Al carrito </a>
								<ul class="sub-icon1 list">
									<li><h5>Agregar este producto al carrito</h5><a href=""></a></li>
								</ul>
							  </li>
							 </ul>
						   </li>
					     </ul>
			    	    <div class="clear"></div>
			    	</a></div>
				  <div class="clear"></div>
			  </div>
			  <div class="box1">
				  <div class="col_1_of_3 span_1_of_3"><a href="single.html">
				     <div class="view view-fifth">
				  	  <div class="top_box">
					  	<h3 class="m_1">Tenis chidos</h3>
					  	<p class="m_2">Marca: Patito</p>
				         <div class="grid_img">
						   <div class="css3"><img src="imagenes/pic3.jpg" alt=""/></div>
					          <div class="mask">
	                       		<div class="info">Vista Rapida</div>
			                  </div>
	                    </div>
                       <div class="price">$780</div>
					   </div>
					    </div>
					   <span class="rating">
				        <input type="radio" class="rating-input" id="rating-input-1-5" name="rating-input-1">
				        <label for="rating-input-1-5" class="rating-star1"></label>
				        <input type="radio" class="rating-input" id="rating-input-1-4" name="rating-input-1">
				        <label for="rating-input-1-4" class="rating-star1"></label>
				        <input type="radio" class="rating-input" id="rating-input-1-3" name="rating-input-1">
				        <label for="rating-input-1-3" class="rating-star1"></label>
				        <input type="radio" class="rating-input" id="rating-input-1-2" name="rating-input-1">
				        <label for="rating-input-1-2" class="rating-star"></label>
				        <input type="radio" class="rating-input" id="rating-input-1-1" name="rating-input-1">
				        <label for="rating-input-1-1" class="rating-star"></label>&nbsp;
		        	  (45)
		    	      </span>
						 <ul class="list">
						  <li>
						  	<img src="imagenes/plus.png" alt=""/>
						  	<ul class="icon1 sub-icon1 profile_img">
							  <li><a class="active-icon c1" href="#">Al carrito </a>
								<ul class="sub-icon1 list">
									<li><h5>Agregar este producto al carrito</h5><a href=""></a></li>
								</ul>
							  </li>
							 </ul>
						   </li>
					     </ul>
			    	    <div class="clear"></div>
			    	</a></div>
				    <div class="col_1_of_3 span_1_of_3"><a href="single.html">
				     <div class="view view-fifth">
				  	  <div class="top_box">
					  	<h3 class="m_1">Tenis chidos</h3>
					  	<p class="m_2">Marca: Patito</p>
				         <div class="grid_img">
						   <div class="css3"><img src="imagenes/pic4.jpg" alt=""/></div>
					          <div class="mask">
	                       		<div class="info">Vista Rapida</div>
			                  </div>
	                    </div>
                       <div class="price">$780</div>
					   </div>
					    </div>
					   <span class="rating">
				        <input type="radio" class="rating-input" id="rating-input-1-5" name="rating-input-1">
				        <label for="rating-input-1-5" class="rating-star1"></label>
				        <input type="radio" class="rating-input" id="rating-input-1-4" name="rating-input-1">
				        <label for="rating-input-1-4" class="rating-star1"></label>
				        <input type="radio" class="rating-input" id="rating-input-1-3" name="rating-input-1">
				        <label for="rating-input-1-3" class="rating-star1"></label>
				        <input type="radio" class="rating-input" id="rating-input-1-2" name="rating-input-1">
				        <label for="rating-input-1-2" class="rating-star"></label>
				        <input type="radio" class="rating-input" id="rating-input-1-1" name="rating-input-1">
				        <label for="rating-input-1-1" class="rating-star"></label>&nbsp;
		        	  (45)
		    	      </span>
						 <ul class="list">
						  <li>
						  	<img src="imagenes/plus.png" alt=""/>
						  	<ul class="icon1 sub-icon1 profile_img">
							  <li><a class="active-icon c1" href="#">Al carrito </a>
								<ul class="sub-icon1 list">
									<li><h5>Agregar este producto al carrito</h5><a href=""></a></li>
								</ul>
							  </li>
							 </ul>
						   </li>
					     </ul>
			    	    <div class="clear"></div>
			    	</a></div>
				   <div class="col_1_of_3 span_1_of_3"><a href="single.html">
				     <div class="view view-fifth">
				  	  <div class="top_box">
					  	<h3 class="m_1">Tenis chidos</h3>
					  	<p class="m_2">Marca: Patito</p>
				         <div class="grid_img">
						   <div class="css3"><img src="imagenes/pic5.jpg" alt=""/></div>
					          <div class="mask">
	                       		<div class="info">Vista Rapida</div>
			                  </div>
	                    </div>
                       <div class="price">$780</div>
					   </div>
					    </div>
					   <span class="rating">
				        <input type="radio" class="rating-input" id="rating-input-1-5" name="rating-input-1">
				        <label for="rating-input-1-5" class="rating-star1"></label>
				        <input type="radio" class="rating-input" id="rating-input-1-4" name="rating-input-1">
				        <label for="rating-input-1-4" class="rating-star1"></label>
				        <input type="radio" class="rating-input" id="rating-input-1-3" name="rating-input-1">
				        <label for="rating-input-1-3" class="rating-star1"></label>
				        <input type="radio" class="rating-input" id="rating-input-1-2" name="rating-input-1">
				        <label for="rating-input-1-2" class="rating-star"></label>
				        <input type="radio" class="rating-input" id="rating-input-1-1" name="rating-input-1">
				        <label for="rating-input-1-1" class="rating-star"></label>&nbsp;
		        	  (45)
		    	      </span>
						 <ul class="list">
						  <li>
						  	<img src="imagenes/plus.png" alt=""/>
						  	<ul class="icon1 sub-icon1 profile_img">
							  <li><a class="active-icon c1" href="#">Al carrito </a>
								<ul class="sub-icon1 list">
									<li><h5>Agregar este producto al carrito</h5><a href=""></a></li>
								</ul>
							  </li>
							 </ul>
						   </li>
					     </ul>
			    	    <div class="clear"></div>
			    	</a></div>
				  <div class="clear"></div>
			    </div>
			  </div>
			 </div>
        </div>
        <div class="footer">
       	  <div class="footer-top">
       		<div class="wrap">
       			   <div class="col_1_of_footer-top span_1_of_footer-top">
				  	 <ul class="f_list">
				  	 	<li><img src="imagenes/f_icon.png" alt=""/><span class="delivery">Envio gratis en compras mayores a $1000*</span></li>
				  	 </ul>
				   </div>
				   <div class="col_1_of_footer-top span_1_of_footer-top">
				  	<ul class="f_list">
				  	 	<li><img src="imagenes/f_icon1.png" alt=""/><span class="delivery">Atencion al cliente :<span class="orange"> 01 800 234679389 (lada sin costo) </span></span></li>
				  	 </ul>
				   </div>
				  <div class="clear"></div>
			 </div>
       	 </div>
       	<div class="footer-bottom">
       	 	<div class="wrap">
       	 		<div class="section group">
				<div class="col_1_of_5 span_1_of_5">
					<h3 class="m_9">Informacion</h3>
					<ul class="list1">
                                            <li><a href="tienda.jsp">Acerca de nosotros</a></li>
                                            <li><a href="tienda.jsp">Informacion de envios</a></li>
                                            <li><a href="tienda.jsp">Aviso de privacidad</a></li>
                                            <li><a href="tienda.jsp">Terminos y condiciones</a></li>
                                            <li><a href="tienda.jsp">Formas de pago</a></li>
                                            <li><a href="tienda.jsp">Como comprar</a></li>
                                        </ul>
				</div>
				<div class="col_1_of_5 span_1_of_5">
					<h3 class="m_9">Servicio al cliente</h3>
					<ul class="list1">
			            <li><a href="tienda.jsp">Contacto</a></li>
			            <li><a href="tienda.jsp">Devoluciones</a></li>
		            </ul>
				</div>
				<div class="col_1_of_5 span_1_of_5">
					<h3 class="m_9">Mi cuenta</h3>
					<ul class="list1">
					    <li><a href="tienda.jsp">Historial de pedidos</a></li>
					    <li><a href="tienda.jsp">Lista de deseos</a></li>
					    <li><a href="tienda.jsp">Boletin de noticias</a></li>
		            </ul>
				</div>
				<div class="clear"></div>
			</div>
       	 	</div>
       	 </div>
       </div>
       <script type="text/javascript">
			$(document).ready(function() {
			
				var defaults = {
		  			containerID: 'toTop', // fading element id
					containerHoverID: 'toTopHover', // fading element hover id
					scrollSpeed: 1200,
					easingType: 'linear' 
		 		};
				
				
				$().UItoTop({ easingType: 'easeOutQuart' });
				
			});
		</script>
        <a href="#" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;"></span></a>
</body>
</html>