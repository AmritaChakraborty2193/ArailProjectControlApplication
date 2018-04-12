<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="ArailProjectControlApplication.Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
        <dx:ASPxUploadControl ID="ASPxUploadControl2" runat="server" OnFileUploadComplete="ASPxUploadControl2_FileUploadComplete" ShowProgressPanel="True" ShowUploadButton="True" UploadMode="Auto" Width="280px" Theme="Office365" >
            <AdvancedModeSettings EnableDragAndDrop="True" EnableMultiSelect="True">
            </AdvancedModeSettings>
            <FileSystemSettings UploadFolder="Img" />
        </dx:ASPxUploadControl>
    </form>
</body>
</html>
