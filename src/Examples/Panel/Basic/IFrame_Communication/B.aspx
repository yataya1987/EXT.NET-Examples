﻿<%@ Page Language="C#" %>
<!DOCTYPE html>

<html>
<head runat="server">
    <title>Ext.NET Examples</title>
</head>
<body>
    <form runat="server">
        <ext:ResourceManager runat="server" />

        <ext:TextField ID="TextField1" runat="server" />

        <ext:Button runat="server" Text="To the A" Icon="ArrowLeft">
            <Listeners>
                <Click Handler="parent.App.Panel1.getBody().App.TextField1.setValue(App.TextField1.getValue());" />
            </Listeners>
        </ext:Button>
    </form>
</body>
</html>