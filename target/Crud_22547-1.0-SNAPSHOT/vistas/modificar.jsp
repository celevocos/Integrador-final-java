<%-- 
    Document   : modificar
    Created on : 31 dic 2022, 00:38:24
    Author     : CTI23309
--%>

<%@page import="modelo.SociosDAO"%>
<%@page import="modelo.Socios"%>
<%@page import="java.util.List"%>  
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <title>APP Gimmnasio M</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    
    </head>
    <body>        
        <div class="container card shadow-lg" >
                <%
				String id=request.getParameter("id");
				int mid;
				mid=Integer.parseInt(id);				
				Socios resultado=null;
				SociosDAO  socio=new SociosDAO();
				resultado=socio.mostrarSocio(mid);				
		    %>
                <div class="card-header text-center">
                    <h1>Modificar el Socio...</h1><h4><mark><%=resultado.getNombre() %></mark></h4>
               </div>

                    <form method="POST" action="SociosController?accion=actualizar">
                        <div class="row g-3" >
                         <div class="col-md-6">
                            <label for="id" class="form-control-sm" >id</label>
                            <input type="text" class="form-control form-control-sm" id="id" name="id" readonly="true" value=<%=resultado.getIdSocio() %> enable>                          
                         </div>
                         <div class="col-md-6">
                            <label for="nombre" class="form-control-sm" >Nombre</label>
                            <input type="text" class="form-control form-control-sm" id="nombre" name="nombre" value=<%=resultado.getNombre() %> required >                       
                        </div> 
                        <div class="col-md-6">
                            <label for="apellido" class="form-control-sm" >Apellido</label>
                            <input type="text" class="form-control form-control-sm" id="apellido" name="apellido" value=<%=resultado.getApellido() %>  required>                       
                        </div> 
                         <div class="col-md-6">
                            <label for="direccion" class="form-control-sm" >Direccion</label>
                            <input type="text" class="form-control form-control-sm" id="direccion" name="direccion"value=<%=resultado.getDireccion() %> required>                          
                        </div> 
                         <div class="col-md-6">
                            <label for="localidad" class="form-control-sm" >Localidad</label>
                            <input type="text" class="form-control form-control-sm" id="localidad" name="localidad" value=<%=resultado.getLocalidad() %>  required>                          
                        </div> 
                          <div class="col-md-6">
                            <label for="fnac" class="form-control-sm" >Fecha Nac</label>
                            <input type="date" class="form-control form-control-sm" id="fnac" name="fnac" value=<%=resultado.getFnac() %> required >                          
                        </div> 
                        <div class="col-md-6">
                            <label for="mail" class="form-control-sm" >E-Mail</label>
                            <input type="text" class="form-control form-control-sm" id="mail" name="mail" value=<%=resultado.getMail()%>  required>                          
                        </div>  
                        <div class="col-md-6">
                            <label for="telefono" class="form-control-sm" >Telefono</label>
                            <input type="text" class="form-control form-control-sm" id="telefono" name="telefono" value=<%=resultado.getTelefono()%> required>                          
                        </div> 
                        
                        <button type="submit" class="btn btn-success" >Modificar </button>
                        <a class="btn btn-success" href="SociosController?accion=volver">Cancelar</a>
                       </div>
                    </form>                
                
            </div>  
    </body>
</html>