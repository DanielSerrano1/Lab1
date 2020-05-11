<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Modificar</title>
</head>
<body>
    <form action="/Video/Edit/" method="post">
    <fieldset>
    <legend> Datos video</legend>

    <label for="idvideo">idvideo:</label>
        <input type="text" name="idvideo" />
        <br />

        <label for="titulo">Titulo:</label>
        <input type="text" name="tittle" />
        <br />

        <label for="repro">Reproducciones:</label>
        <input type="text" name="rep" />
        <br />

        <label for="url">Url:</label>
        <input type="text" name="url" />
        <br />
        <input type="submit" name="modificar" value="Modificar" />
</body>
</html>
