<%@include file="./lib/header.jsp"%>
    
    
<h1>Cuerpo de Página!</h1>
<!<!-- Formularios -->

<div class="container">
<form>
  <div class="form-group">
    <label class="form-control">Nonbre</label>
    <input type="text" name="nameUser" placeholder="Nombre del Usuario">
  </div>
  <div class="form-group">
    <label class="form-control">Email</label>
    <input type="email" name="emailUser" placeholder="Correo de Usuario">
  </div>
  <div class="form-group">
    <label class="form-control">Edad</label>
    <input type="number" name="ageUser" placeholder="Edad de Usuario">
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
<br>

<h3>Mensaje - Recuperando datos</h3>
<div class="alert alert-primary"> role="alert">
    <%
        String nombre = request .getParameter ("NameUser");
        String email = request.getParameter ("emailUser");
        String age = request.getParameter ("ageUser");
        
        String saludar = "El usuario ingresado es " + email + " su edad es " + age;  
        out.print(saludar);
    %> 
</div>
</div>

<%@include file="./lib/footer.jsp"%>
