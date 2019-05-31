<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="upload.aspx.cs" Inherits="Project.admin.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:Button Text="Upload to FTP" runat="server" OnClick="FTPUpload" />
            <hr />
            <asp:Label ID="lblMessage" runat="server" />
        </div>
    </form>
</body>
</html>
