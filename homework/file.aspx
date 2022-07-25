<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ວຽກບ້ານ asp.net</title>
</head>
<body>
    <h1>ເຊື່ອຕໍ່ກັບຖານຂໍ້ມູນ MS ACCESS</h1><br><br>
    <div id="dcenter">
        <form runat="server">
            ລັດຫັດ:<asp:texTBox id="txtID" runat="server"/>
            <asp:RequiredFieldValidator ControlToValidate="txtID" Errormessage="ລະຫັດບໍ່ໃຫ້ເປັນຄາຫວ່າງ" runat="server"/><br>
            ຊື່:<asp:texTBox id="txtName" runat="server"/><br>
            ນາມສະກຸນ:<asp:texTBox id="dfldsk" runat="server"/><br>
            ເພດ:<asp:texTBox type="radio" id="sexf" runat="server"/>ຍິງ<asp:texTBox type="radio" id="sexm" runat="server"/>ຊາຍ <br>
            ອີແມວ :<asp:texTBox id="txtEmail" runat="server"/>
            <asp:RegularExpressionValidator ControlToValidate="txtEmail" Text=" ອີເມວຕ້ອງມີ @." ValidationExpression=".*@.*\..*" Display="Dynamic" runat="server"/> <br>
            
            ລັດຫັດປະເທດ:<asp:texTBox id="txtAge" type="number" runat="server"/>
            <asp:RequiredFieldValidator ControlToValidate="txtAge" MinimumValue="1" MaximumValue="3" Type="INteger" EnableClientScript="false" Errormessage=" ລະຫັດປະເທຕ້ອງມີ 3ຕົວ!" runat="server"/> <br>
             ສາຂາຮຽນ:<asp:DropDownList
                id="DropdownName"
                Runat="Server">
                <asp:ListItem Text="ວິທະຍາສາດຄອຍພີວເພີ" />
                <asp:ListItem Text="ການພັດທະນາໂປເເກຣມ" /> <asp:ListItem
                Text="ການພັດທະນາເວັບໄຊ" />
                <asp:ListItem Text="ເລືອກສາຂາທີ່ຕ້ອງການ" selected="true" />
            </asp:DropDownList>
            <br>
            ພາສາໂປຣເເກມທີ່ມັກທີ່ສຸດ<asp:CheckBoxList
                id="chkFavouriteMusic"
                Runat="Server">
                <asp:ListItem Text="Java" />
                <asp:ListItem Text="PHP" /> 
                <asp:ListItem Text=" VB " />
            </asp:CheckBoxList>
            <asp:Button id ="btOk" text="ບັນທຶກ" OnClick="MyMethode" runat="server"/>
            <br>
            <!-- <asp:Button id="btCancel" text="Cancel" runat="server"/> <br> -->
            <hr>
            <asp:label id="lbMessage" runat="server"/>
        </form>
    </div>
</body>
</html>

<script language="c#" runat="server">
    private void MyMethode(Object s, EventArgs e)
    {
        lbMessage.Text = "ລະຫັດ:"+ txtID.Text + "<br>";
        lbMessage.Text += "ຊື່:"+ txtName.Text + "<br>";
        
    }
</script>