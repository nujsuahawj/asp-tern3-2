<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form runat="server" action="">
        <h3>select when you choose</h3>
        <p>
            <asp:RadioButton id="CNA" groupname="news" Text="Channel news asia" runat="server" /><br>
            <asp:RadioButton id="CNN" groupname="news" Text="Channel news 1" runat="server" /><br>
            <asp:RadioButton id="FOX" groupname="news" Text="Channel news asia" runat="server" /><br>
            <asp:RadioButton id="TBS" groupname="news" Text="Channel news asia" runat="server" /><br>
        </p>
        <p>
            <asp:Button id="btnSubmit" Text="Pick your channel" Onclick="MySubmit_Click" runat="server"></asp:Button>
        </p>
        <hr>
        <asp:label id="ibchnnel" runat="server"/>
    </form>
</body>
</html>

<script language="c#" runat="server">
    private void MySubmit_Click(object s, EventArgs e) {
       
      if(CNA.Checked==true){
        ibchnnel.Text+=CNA.Text;
      }else if(CNN.Checked==true){
        ibchnnel.Text+=CNN.Text;
      }
      else if(FOX.Checked==true){
        ibchnnel.Text+=FOX.Text;
      }
      else if(TBS.Checked==true){
        ibchnnel.Text+=TBS.Text;
      }else{
          ibchnnel.Text="input";
      }
    }
    
  </script>