<%@ Page Language="C#" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="main.css" />
</head>
<body>
    <form id="form1" runat="server">
        <h1>
        <%
            clientOfferChoice.Text = "<br /><br />You have selected following: " + "<ul>";
            clientOfferChoice.Text += "<li>" + Session["clientChoice"].ToString() + "</li>";
            clientOfferChoice.Text += "<li>" + Session["clientOffering"].ToString() + "</li></ul>";
            string bkcolor =Session ["bckColor"].ToString();
            string brdcolor =Session ["brdColor"].ToString();
            string txtc =Session ["txtColor"].ToString();
            string shape =Session ["shape"].ToString();
            string txtr = Session ["fLine"].ToString() + Session["otherText"].ToString();
            string name = Session ["name"].ToString();
            Response.Write(name + ", thank you for you order!");
        %>
            </h1>
        <h4>Here is how your banner will look like: </h4>
        <br />
        <canvas id="myCanvas" width="400" height="400" style="border:1px solid #c3c3c3;"> </canvas>
        <script>
   var c = document.getElementById("myCanvas");
    var ctx = c.getContext("2d");
    var color ='<%=bkcolor%>';
    var brdcolor ='<%=brdcolor%>';
    var txtcolor ='<%=txtc%>';
    var shape ='<%=shape%>';
    var stuff ='<%=txtr %>';

    if (shape == "0") {
        ctx.fillStyle = color;
        ctx.strokeStyle = brdcolor;
        ctx.lineWidth = 3;
        ctx.beginPath();
        ctx.rect(50, 50, 100, 100);
        ctx.fill();
        ctx.stroke();
    }
   else if (shape == "1")
   {
     
   ctx.beginPath();
    ctx.rect(50, 50, 290, 140); 
    ctx.lineWidth = "6";  
    ctx.fillStyle = color;
    ctx.strokeStyle = brdcolor;
    ctx.fill();
    ctx.stroke();
   }
   
   else if (shape == "2") {
       
       ctx.beginPath();
       ctx.fillStyle = color; 
       ctx.arc(95,50,40,0,2*Math.PI);
       ctx.fill();
       ctx.strokeStyle = brdcolor;
       ctx.stroke();   
   }
    ctx.font = "16px Arial ";
    ctx.fillStyle = txtcolor;
    ctx.fillText(stuff,60,60); 
    

</script> 
        
            <asp:Label ID="clientOfferChoice" runat="server"></asp:Label>
        <h4>Enjoy extra 25% off your next order!</h4>
            <img id="coupon" runat="server" src="coupon.jpg"/>
    </form>
</body>
</html>
