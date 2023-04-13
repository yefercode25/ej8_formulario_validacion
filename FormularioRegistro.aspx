<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="FormularioRegistro.aspx.vb" Inherits="Ej8_ValidarCampos.FormularioRegistro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Ejercicio 8 - CustomValidator</title>
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            min-height: 100vh;
            min-width: 100vw;
            display: flex;
            align-items: center;
            justify-content: center;
            font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif
        }

        input[type='submit'] {
            padding: 10px 20px;
            background-color: seagreen;
            border: none;
            border-radius: 5px;
            color: white
        }

        input[type='submit']:hover {
            cursor: pointer;
            background-color: #186239;
        }

        .pageContainer {
            margin: 40px 20px;
            padding: 20px;
            border: 1px solid #e1e1e1;
            max-width: 600px;
            width: 100%;
            text-align: center;
        }

        .pageContainer form {
            margin-top: 40px;
            text-align: left;
        }

        .inputGroup {
            margin-bottom: 20px;
        }

        .inputGroup label {
            display: block;
            margin-bottom: 5px;
            font-weight: 600;
        }

        .inputGroup input {
            padding: 10px;
            width: 100%;
        }

        .inputGroup span {
            color: crimson;
        }
    </style>
</head>
<body>
    <div class="pageContainer">
        <h1>Registro en búsqueda de empleo</h1>
        <p>
            Llene el siguiente formulario para poder registrarlo en la página de
            busqueda de empleo, recuerda que es muy importante para continuar el 
            proceso de aplicación a vacantes.
        </p>
        <form id="registerForm" runat="server" >
            <div class="inputGroup">
                <label for="NumeroIdentificacion">Número de identificación:</label>
                <asp:TextBox ID="TxtNumeroIdentificacion" runat="server" placeholder="Ejm. 10201202303"></asp:TextBox>
                <asp:CustomValidator ID="CvNumeroIdentificacion" runat="server" ErrorMessage="El número de identificación no es válido, por favor revisa para continuar." ControlToValidate="TxtNumeroIdentificacion" Display="Dynamic" OnServerValidate="CvNumeroIdentificacion_ServerValidate" ValidateEmptyText="true"></asp:CustomValidator>
            </div>
            <div class="inputGroup">
                <label for="NombreCompleto">Nombre completo:</label>
                <asp:TextBox ID="TxtNombreCompleto" runat="server" placeholder="Ejm. Yeferson Zaque"></asp:TextBox>
                <asp:CustomValidator ID="CvNombreCompleto" runat="server" ErrorMessage="El nombre completo no es válido, por favor revisa para continuar." ControlToValidate="TxtNombreCompleto" Display="Dynamic" OnServerValidate="CvNombreCompleto_ServerValidate" ValidateEmptyText="true"></asp:CustomValidator>
            </div>
            <div class="inputGroup">
                <label for="TxtCorreo">Correo electrónico:</label>
                <asp:TextBox ID="TxtCorreo" runat="server" placeholder="Ejm. email@email.com"></asp:TextBox>
                <asp:CustomValidator ID="CvCorreo" runat="server" ErrorMessage="El correo electrónico no es válido, revisa para continuar." ControlToValidate="TxtCorreo" Display="Dynamic" OnServerValidate="CvCorreo_ServerValidate" ValidateEmptyText="true"></asp:CustomValidator>
            </div>
            <div class="inputGroup">
                <label for="TxtPortafolio">Enlace del portafolio personal:</label>
                <asp:TextBox ID="TxtPortafolio" runat="server" placeholder="Ejm. https://portafolio.com"></asp:TextBox>
                <asp:CustomValidator ID="CvPortafolio" runat="server" ErrorMessage="El enlace del portafolio no es válido, revisa para continuar." ControlToValidate="TxtPortafolio" Display="Dynamic" OnServerValidate="CvPortafolio_ServerValidate" ValidateEmptyText="true"></asp:CustomValidator>
            </div>
            <div style="text-align: center;">
                <asp:Button runat="server" ID="BntEnviar" Text="Realizar registro" type="submit" OnClick="BntEnviar_Click" />
            </div>
        </form>
    </div>
</body>
</html>
