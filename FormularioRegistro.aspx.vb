Imports System.IO
Imports System.Web.UI

Public Class FormularioRegistro
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub CvNumeroIdentificacion_ServerValidate(source As Object, args As ServerValidateEventArgs)
        'Se debe validar que sea un número de identificación válido
        Dim numeroIdentificacion As String = args.Value

        'Validar si el número de identificación es numérico y tiene una longitud de 10 dígitos
        If String.IsNullOrEmpty(numeroIdentificacion) OrElse Not IsNumeric(numeroIdentificacion) OrElse numeroIdentificacion.Length <= 3 Then
            args.IsValid = False 'indicar que la validación falló
        Else
            args.IsValid = True 'indicar que la validación fue exitosa
        End If
    End Sub

    Protected Sub CvNombreCompleto_ServerValidate(source As Object, args As ServerValidateEventArgs)
        ' Se debe validar que el nombre completo no sea vacío
        Dim nombreCompleto As String = args.Value

        'Validar si el nombre completo es vacío
        If String.IsNullOrEmpty(nombreCompleto) Then
            args.IsValid = False 'indicar que la validación falló
        Else
            args.IsValid = True 'indicar que la validación fue exitosa
        End If
    End Sub

    Protected Sub CvCorreo_ServerValidate(source As Object, args As ServerValidateEventArgs)
        'Se debe validar que el correo sea válido
        Dim correo As String = args.Value

        'Validar si el correo es válido
        Dim correoRegex As New Regex("^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$")
        args.IsValid = correoRegex.IsMatch(correo)
    End Sub

    Protected Sub CvPortafolio_ServerValidate(source As Object, args As ServerValidateEventArgs)
        'Se debe validar que la URL sea válida
        Dim url As String = args.Value

        'Validar si la URL es válida
        Dim regex As New Regex("^https?:\/\/[\w\-]+(\.[\w\-]+)+[/#?]?.*$")
        If Not regex.IsMatch(url) Then
            args.IsValid = False 'indicar que la validación falló
        Else
            args.IsValid = True 'indicar que la validación fue exitosa
        End If
    End Sub

    Protected Sub BntEnviar_Click(sender As Object, e As EventArgs)
        If Page.IsValid Then
            Response.Redirect("~/RegistroExitoso.aspx")
        End If
    End Sub
End Class