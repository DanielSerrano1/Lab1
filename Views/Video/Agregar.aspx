<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Agregar</title>
</head>
<body>
    <form action="/Video/Create" method="post">
    <fieldset>
    <legend>Datos</legend>

    <label for="idvideo">id: </label>
        <input type="text" name="idvideo" />
        <br />

        <label for="titulo">Titulo: </label>
        <input type="text" name="titulo" />
        <br />

        <label for="repro">Reproducciones: </label>
        <input type="text" name="rep" />
        <br />

        <label for="url">Url:</label>
        <input type="text" name="url" />
        <br />
        <input type="submit" name="registrar" value="Registar" />
</body>
</html>
