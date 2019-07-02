<%@ Page Language="C#" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Anchor Layout with Form - Ext.NET Examples</title>
    <link href="/resources/css/examples.css" rel="stylesheet" />
</head>
<body>
    <form runat="server">
        <ext:ResourceManager runat="server" />

        <ext:Window
            runat="server"
            Title="Resize Me"
            Icon="ArrowOut"
            Width="500"
            Height="300"
            MinWidth="300"
            MinHeight="200"
            Plain="true"
            BodyPadding="5"
            ButtonAlign="Center"
            LabelWidth="55"
            Layout="AnchorLayout">
            <Items>
                <ext:TextField
                    runat="server"
                    FieldLabel="Send to"
                    AnchorHorizontal="100%"
                    />
                <ext:TextField
                    runat="server"
                    FieldLabel="Subject"
                    AnchorHorizontal="100%"
                    />
                <ext:TextArea
                    runat="server"
                    HideLabel="true"
                    AnchorHorizontal="100%"
                    AnchorVertical="-53"
                    />
            </Items>
            <Buttons>
                <ext:Button runat="server" Text="Save" Icon="Disk" />
                <ext:Button runat="server" Text="Cancel" Icon="Decline" />
            </Buttons>
        </ext:Window>
    </form>
</body>
</html>