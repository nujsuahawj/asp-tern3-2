<script language="c#" runat="server">
  private void MySubmit_Click(object s, EventArgs e) {
    lbMessage.Text = "Hello: " + username.Text;
    if(radM.Checked==true){
      lbMessage.Text+=radM.Text;
    }else{
      lbMessage.Text+=radF.Text;
    }
  }
  
</script>

<html lang="en">
<head>
  <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ASP 3cw1</title>
</head>
<body>
<h1>Even Click</h1>
    <form runat="Server">
      <asp:Textbox id="username" runat="server" /><br>
      <asp:label id="lbGender" text="Gender:" runat="server"/>
      <asp:RadioButton id="radM" groupname="gender" text="Male" value="M" runat="server"/>
      <asp:RadioButton id="radF" groupname="gender" text="FaMale" value="F" runat="server"/><br>
      <asp:Button id="btnHello" text="Submid" Onclick="MySubmit_Click" Runat="Server" />
      <hr>
      <p style="color: brown;">
        <asp:label id="lbMessage" runat="server" />
        </p>
        </form>
</body>
</html>
