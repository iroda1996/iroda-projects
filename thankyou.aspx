<%@ Page Language="C#" AutoEventWireup="true" CodeFile="thankyou.aspx.cs" Inherits="_Default" EnableSessionState="True" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="main.css" />
</head>
    <h1>Confirmation Page</h1>
<body>
    <form id="signupInfo" runat="server">
        <asp:Panel ID="offers" runat="server" Visible="true">
        <asp:Label ID="firstName" runat="server">First Name: </asp:Label>
        <br />
        <br />
        <asp:Label ID="lastName" runat="server"> Last Name: </asp:Label>
            <br />
        <br />
        <asp:Label ID="address" runat="server">Address: </asp:Label>
            <br />
        <br />
             <asp:Label ID="city" runat="server">City: </asp:Label>
        <br />
        <br />
        <asp:Label ID="state" runat="server">State: </asp:Label>
            <br />
        <br />
             <asp:Label ID="zip" runat="server">Zip: </asp:Label>
        <br />
        <br />
        <asp:Label ID="phone" runat="server">Phone: </asp:Label>
            <br />
        <br />
             <asp:Label ID="email" runat="server">Email: </asp:Label>
        <br />
        <br />
        <asp:Label ID="totalPrice" runat="server">Total Price for the banner: </asp:Label>
            <br />
        <br />
            
            <asp:Label runat="server">Do you want to sign up for one of our weekly offers?</asp:Label>
            <asp:RadioButtonList runat="server" ID="offersSignup">
                <asp:ListItem Value="0">Yes</asp:ListItem>
                <asp:ListItem Value="1">No</asp:ListItem>
            </asp:RadioButtonList>
             <asp:Label runat="server"> Sign up to get coupons, blog, reports, or picture of banner of the week?</asp:Label>
            <asp:RadioButtonList runat="server" ID="couponsSignup">
                <asp:ListItem Value="0">Yes</asp:ListItem>
                <asp:ListItem Value="1">No</asp:ListItem>
            </asp:RadioButtonList>
            <asp:Label runat="server" ID="confirmation">By clicking Submit you're agreeing to the Pricing Terms and Conditions</asp:Label>
             <br /> <br />
            <asp:Button ID="thankyouSubmit" runat="server" Text="Submit" OnClick="thankyouSubmit_Click" />
        </asp:Panel>
    </form>
</body>
</html>
