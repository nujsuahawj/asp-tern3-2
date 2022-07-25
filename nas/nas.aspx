<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form runat="server">
        <h1>ths is about controll</h1>
        <asp:button id="btnOK"  text="Click Me" runat="server" CommandName="add" CommandArgument="21"  />
        <hr>
        <asp:label id="idMessage" runat="server" />

    </form>
</body>
</html>

<script language="c#" runat="server">
    private void MyButton(Object s, CommandEventArgs e){
        idMessage.Text="This is a button click";
    }
</script>