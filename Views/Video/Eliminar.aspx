﻿<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Eliminar</title>
</head>
<body>
    <form action="/Video/Delete" method="post">
    <fieldset>
    <legend>Datos: </legend>

    <label for="idvideo">Id: </label>
        <input type="text" name="idvideo" />
        <br />
       
        <input type="submit" name="eliminar" value="Eliminar" />

</body>
</html>
