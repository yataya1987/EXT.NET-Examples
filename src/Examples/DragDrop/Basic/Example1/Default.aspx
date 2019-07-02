<%@ Page Language="C#" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Drag&amp;Drop - Ext.NET Examples</title>
    <link href="/resources/css/examples.css" rel="stylesheet" />

    <style>
        body {
            font-size : 11px;
        }

        .dd-ct {
            position :absolute;
            border : 1px solid silver;
            width  : 180px;
            height : 180px;
            top    : 40px;
            background-color : #ffffc0;
        }

        #dd1-ct {
            left : 64px;
        }

        #dd2-ct {
            left : 256px;
        }

        .dd-item {
            position : relative; /* workaround for #1217.54 */
            height : 18px;
            border : 1px solid #a0a0a0;
            background-color : #c4d0ff;
            vertical-align   : middle;
            cursor  : move;
            padding : 2px;
            z-index : 1000;
        }

        .dd-ct .dd-item {
            margin : 2px;
        }

        .dd-proxy {
            opacity : 0.4;
            -moz-opacity : 0.4;
            filter : alpha(opacity=40);
        }

        .dd-over {
            background-color : #ffff60;
        }
    </style>

    <script>
        var startDrag = function (x, y) {
            var dragEl = Ext.get(this.getDragEl());
            var el = Ext.get(this.getEl());

            dragEl.applyStyles({border:'','z-index':2000});
            dragEl.update(el.dom.innerHTML);
            dragEl.addCls(el.dom.className + ' dd-proxy');
        };
    </script>
</head>
<body>
    <form runat="server">
        <ext:ResourceManager runat="server" />

        <%--<a href="http://www.extjs.com/learn/Tutorial:Custom_Drag_and_Drop_Part_1">Tutorial:Custom Drag and Drop Part 1</a>--%>

        <ext:DDProxy runat="server" Target="dd1-item1" Group="group">
            <StartDrag Fn="startDrag" />
        </ext:DDProxy>
        <ext:DDProxy runat="server" Target="dd1-item2" Group="group">
            <StartDrag Fn="startDrag" />
        </ext:DDProxy>
        <ext:DDProxy runat="server" Target="dd1-item3" Group="group">
            <StartDrag Fn="startDrag" />
        </ext:DDProxy>

        <div class="dd-ct" id="dd1-ct">
            <div class="dd-item" id="dd1-item1">Item 1.1</div>
            <div class="dd-item" id="dd1-item2">Item 1.2</div>
            <div class="dd-item" id="dd1-item3">Item 1.3</div>
        </div>
    </form>
</body>
</html>