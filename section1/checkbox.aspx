<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form runat="server" >
        <asp:CheckBoxList id="nas1" Runat="Server">
            <asp:ListItem Text="nas1"/>
            <asp:ListItem Text="nas1"/>
            <asp:ListItem Text="nas1"/>
            <asp:ListItem Text="nas1"/>
            <asp:ListItem Text="nas1"/>
        </asp:CheckBoxList>
        <asp:Button id="btnSubmit" Text="Pick your channel" Onclick="MySubmit_Click" runat="server"></asp:Button>
        <asp:label id="nas" runat="server"/>
    </form>
</body>
</html>
<script language="c#" runat="server">
    private void MySubmit_Click(object s, EventArgs e) {
       
    //   ListItem itmMusci=new List
      String strMusic;
      foreach (ListItem itmMusic in nas1.Items){
          if(itmMusic.Selected== true){
            strMusic+=itmMusic.text;
          }
          nas.Text = strMusic;
      }
    }
    
  </script>