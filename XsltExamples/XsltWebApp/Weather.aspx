<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Weather.aspx.cs" Inherits="XsltWebApp.Weather" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <!-- Data from http://www.google.com/ig/api?weather=Brussels -->
        <asp:Xml ID="Xml1" DocumentSource="~/Weather.xml" TransformSource="~/Weather.xslt" runat="server" />
    </div>
    </form>
</body>
</html>
