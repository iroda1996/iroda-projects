<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Banner.aspx.cs" Inherits="Banner"  EnableSessionState="True"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="main.css" />
</head>
    <h1><center>Banner World</center></h1>
    <h3><center>We have all types of banners here for you!</center></h3>
<body id="bannerPage">
    <form id="banner" runat="server">
        <asp:Panel ID="bannerInfo" runat="server" Visible="true">
        <asp:Label runat="server" ID="lblFirstName">First Name: </asp:Label>
        <asp:TextBox runat="server" ID="txtFirstName" required="required"></asp:TextBox>
        <br /> <br />
        <asp:Label runat="server" ID="lblLastName">Last Name: </asp:Label>
        <asp:TextBox runat="server" ID="txtLastName" required="required"></asp:TextBox>
        <br /> <br />
         <asp:Label runat="server" ID="lblDate">Date to pick up (need 2 days min): </asp:Label>
            <asp:Calendar ID="PickupDate" runat="server" TodayDayStyle-BackColor="Red" TodayDayStyle-ForeColor="White"></asp:Calendar>
           <%--<asp:Calendar ID="dateToPickUp" runat="server" onselectionchanged="Date_Selected"></asp:Calendar>--%>
        <%--<asp:Calendar ID="PickupDate" runat="server" TodayDayStyle-BackColor="Red" TodayDayStyle-ForeColor="White" SelectionMode="Day" ShowGridLines="True" OnSelectionChanged="Selection_Change">
            <SelectedDayStyle BackColor="Yellow" ForeColor="Red">
         </SelectedDayStyle>
        </asp:Calendar>--%>
            <br /> <br />
        <asp:Label runat="server" ID="lblAddress">Address: </asp:Label>
        <asp:TextBox runat="server" ID="txtAddress" required="required"></asp:TextBox>
        <br /><br />
        <asp:Label runat="server" ID="lblCity">City: </asp:Label>
        <asp:TextBox runat="server" ID="txtCity" required="required"></asp:TextBox>
        <br /><br />
        <asp:Label runat="server" ID="lblState">State: </asp:Label>
        <asp:DropDownList ID="DropDownListState" runat="server" required="required">
	<asp:ListItem Value="CA">California</asp:ListItem>
	<asp:ListItem Value="CO">Colorado</asp:ListItem>
	<asp:ListItem Value="KS">Kansas</asp:ListItem>
	<asp:ListItem Value="MO">Missouri</asp:ListItem>
	<asp:ListItem Value="OK">Oklahoma</asp:ListItem>
</asp:DropDownList>
            <br /> <br />
             <asp:Label runat="server" ID="lblZip">Zip: </asp:Label>
        <asp:TextBox runat="server" ID="txtZip" required="required"></asp:TextBox>
        <br /><br />
             <asp:Label runat="server" ID="lblPhone">Phone(best number): </asp:Label>
        <asp:TextBox runat="server" ID="txtPhone" required="required"></asp:TextBox>
        <br /><br />
             <asp:Label runat="server" ID="lblEmail">Email: </asp:Label>
        <asp:TextBox runat="server" ID="txtEmail" required="required"></asp:TextBox>
        <br /><br />
            <asp:Label runat="server" ID="lblBannerType">Type of banner: </asp:Label>
            <asp:DropDownList runat="server" ID="bannerType" required="required">
                <asp:ListItem Text="Square: 6 by 3 feet" Value ="0"></asp:ListItem>
                <asp:ListItem Text="Rectangle: 4 by 4 feet in size" Value ="1"></asp:ListItem>
                <asp:ListItem Text="Circle: 3 feet in diameter" Value ="2"></asp:ListItem>
            </asp:DropDownList>
            <br /> <br />
            <asp:Label runat="server" ID="lblBackgroundClr">Background color of banner pick one: </asp:Label>
            <asp:DropDownList runat="server" ID="backgroundColor" required="required">
                <asp:ListItem Text="Red" Value ="red"></asp:ListItem>
                <asp:ListItem Text="White" Value ="white"></asp:ListItem>
                <asp:ListItem Text="Green" Value ="green"></asp:ListItem>
                <asp:ListItem Text="Blue" Value="blue"></asp:ListItem>
                 <asp:ListItem Text="Gray" Value="grey"></asp:ListItem>
            </asp:DropDownList>
            <br /> <br />
            <asp:Label runat="server" ID="lblBorderClr">Border color (not same color as background color): </asp:Label>
            <asp:DropDownList runat="server" ID="borderColor" required="required">
                <asp:ListItem Text="Red" Value ="red"></asp:ListItem>
                <asp:ListItem Text="White" Value ="white"></asp:ListItem>
                <asp:ListItem Text="Green" Value ="green"></asp:ListItem>
                <asp:ListItem Text="Blue" Value="blue"></asp:ListItem>
                 <asp:ListItem Text="Gray" Value="grey"></asp:ListItem>
            </asp:DropDownList>
            <br /> <br />
            <asp:Label runat="server" ID="lblTextClr">Text color (not same color as background color): </asp:Label>
            <asp:DropDownList runat="server" ID="textColor" required="required">
                <asp:ListItem Text="Red" Value ="red"></asp:ListItem>
                <asp:ListItem Text="White" Value ="white"></asp:ListItem>
                <asp:ListItem Text="Green" Value ="green"></asp:ListItem>
                <asp:ListItem Text="Blue" Value="blue"></asp:ListItem>
                <asp:ListItem Text="Gray" Value="grey"></asp:ListItem>
            </asp:DropDownList>
            <br /> <br />
            <asp:Label runat="server" ID="lblFirstLine">The banner’s first line will be a heading. What do you want that heading to say: </asp:Label>
        <asp:TextBox runat="server" ID="txtFirstLine" required="required"></asp:TextBox>
        <br /><br />
            <asp:Label runat="server" ID="lblRemainingText">The banner’s remaining content under heading: </asp:Label>
        <asp:TextBox runat="server" ID="txtRemainingText" required="required"></asp:TextBox>
        <br /><br />
            <asp:Button runat="server" ID="submit" Text="Submit" OnClick="submit_Click"/>
       
            </asp:Panel>
   </form>
</body>
</html>

