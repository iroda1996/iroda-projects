var theAd = 0;
var adImages = ["giraffe2.jpg", "bingbong.jpg", "goat2.jpg"];

function rotate() {
     theAd++;
     if (theAd == adImages.length) {
        theAd = 0;
     }
     document.getElementById("adBanner").src = adImages[theAd];

     setTimeout(rotate, 5 * 1000);
}

function startClock()
    {
        var today = new Date();
        var h = today.getHours();
        var m = today.getMinutes();
        var s = today.getSeconds();
        var month = today.getMonth();
        var d = today.getDate();
        var year = today.getFullYear();
        m = checktime(m);
        s = checktime(s);
        if (h<12)
        {
            s = s+" AM"
        } else if (h=12)
        {
            s = s + " PM"
        }
        else if (h>12)
        {
            h = h - 12
            s = s + " PM"
        }
        document.getElementById("clock").innerHTML = h+":" +m+":"+s+" "+month+"/"+d+"/"+year;
        t = setTimeout('startClock()',1000);
        //document.getElementById("date").innerHTML=month+"/"+d+"/"+year;
    }
    
    function checktime(i)
    {
        if (i<10)
        {
            i = "0" + i
        }
        return i
    }

function myFunction1(div_id) {
        document.getElementById('a1').style.display = 'block';
    document.getElementById('a3').style.display = 'none';
    document.getElementById('a2').style.display = 'none';
    document.getElementById('g1').style.display = 'none';
    document.getElementById('g2').style.display = 'none';
    document.getElementById('g3').style.display = 'none';
    document.getElementById('h1').style.display = 'none';
    document.getElementById('h2').style.display = 'none';
    document.getElementById('h3').style.display = 'none';
    document.getElementById("r1").style.display = "none";
      document.getElementById("r2").style.display = "none";
      document.getElementById("r3").style.display = "none";
	//document.getElementById('part7').style.display = 'none';
    // show the requested div
    document.getElementById(div_id).style.display = 'block';
    }

function myFunction2(div_id) {
    
        document.getElementById('a2').style.display = 'block';
    document.getElementById('a1').style.display = 'none';
    document.getElementById('a3').style.display = 'none';
    document.getElementById('h1').style.display = 'none';
    document.getElementById('h2').style.display = 'none';
    document.getElementById('h3').style.display = 'none';
    document.getElementById('g1').style.display = 'none';
    document.getElementById('g2').style.display = 'none';
    document.getElementById('g3').style.display = 'none';
    document.getElementById("r1").style.display = "none";
      document.getElementById("r2").style.display = "none";
      document.getElementById("r3").style.display = "none";
	//document.getElementById('part7').style.display = 'none';
    // show the requested div
    document.getElementById(div_id).style.display = 'block';
    }

function myFunction3(div_id) {
    document.getElementById('a3').style.display = 'block';
    document.getElementById('a2').style.display = 'none';
    document.getElementById('a1').style.display = 'none';
      document.getElementById("r1").style.display = "none";
      document.getElementById("r2").style.display = "none";
      document.getElementById("r3").style.display = "none";
     document.getElementById('h1').style.display = 'none';
    document.getElementById('h2').style.display = 'none';
    document.getElementById('h3').style.display = 'none';
    document.getElementById('g1').style.display = 'none';
    document.getElementById('g2').style.display = 'none';
    document.getElementById('g3').style.display = 'none';
	//document.getElementById('part7').style.display = 'none';
    // show the requested div
    document.getElementById(div_id).style.display = 'block';
    }

 function build_three(div_id) { 
     var product = document.getElementById('amount').value;
     var amount = (product * 15) + 50 + (product * 15 * 0.10);
     var productname = document.querySelector('input[name = "product"]:checked').value;
     var content = "<h2>Order Total</h2>";
     var content1 = "<p class=\"cart\">";
     content1 += content + "<br>" + product + " ";
     content1 += productname + " for $15" + "<br>";
     content1 += "Sales tax 10%" + "<br>" + "Shipping $50" + "<br>";
     content1 += "--------------------------" + "<br>";
     content1 += "Your total is " + amount;
     content1 += "</p>";
     document.getElementById("checkout").innerHTML = content1;
     document.getElementById('hat').style.display = 'none';
     document.getElementById('toy').style.display = 'none';
     document.getElementById('bottle').style.display = 'none';
     document.getElementById('turtle').style.display = 'none';
     document.getElementById('butterfly').style.display = 'none';
     document.getElementById(div_id).style.display = 'block';
  }       
     
function next (div_id) {
    document.getElementById('start').style.display = 'none';
  document.getElementById('q1').style.display = 'none';
   document.getElementById('q2').style.display = 'none';
    document.getElementById('q3').style.display = 'none';
 document.getElementById('q4').style.display = 'none';
   document.getElementById('q5').style.display = 'none';
    document.getElementById('q6').style.display = 'none';
 document.getElementById('q7').style.display = 'none';
       
      document.getElementById(div_id).style.display = 'block';
  }  