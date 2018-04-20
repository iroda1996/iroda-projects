using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Banner : System.Web.UI.Page
{
    protected void Page_Load(object Source, EventArgs e)
    {
        PickupDate.TodaysDate = System.DateTime.Now;
        if (!IsPostBack)
        {
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtAddress.Text = "";
            txtCity.Text = "";
            DropDownListState.SelectedValue = "0";
            txtZip.Text = "";
            txtPhone.Text = "";
            txtEmail.Text = "";
            bannerType.SelectedValue = "0";
            backgroundColor.SelectedValue = "0";
            borderColor.SelectedValue = "0";
            textColor.SelectedValue = "0";
            txtFirstLine.Text = "";
            txtRemainingText.Text = "";
        }

    }

    //void Selection_Change(Object sender, EventArgs e)
    //{
    //    pickupDate1.Text = "The selected date is " + PickupDate.SelectedDate.ToShortDateString();
    //}


    protected void submit_Click(object Src, EventArgs E)
    {
        Session["fname"] = txtFirstName.Text;
        Session["lname"] = txtLastName.Text;
        Session["address"] = txtAddress.Text;
        Session["city"] = txtCity.Text;
        Session["zip"] = txtZip.Text;
        Session["state"] = DropDownListState.SelectedItem.Text;
        Session["phone"] = txtPhone.Text;
        Session["email"] = txtEmail.Text;
        //Session["pickup"] = dateToPickUp.SelectedDate.ToShortDateString();

        string bannerSelected = bannerType.SelectedValue;
        string colorSelected = backgroundColor.SelectedValue;
        string borderSelected = borderColor.SelectedValue;
        string textSelected = textColor.SelectedValue;
        double total = 0;
        string stateSelected = DropDownListState.SelectedValue;

        if (bannerSelected == "0")
        {
            total += 50;
        }
        else if (bannerSelected == "1")
        {
            total += 45;
        }
        else if (bannerSelected == "2")
        {
            total += 40;
        }

        if (colorSelected == "red")
        {
            total += 10;
        }
        else if (colorSelected == "white")
        {
            total += 2;
        }
        else if (colorSelected == "green")
        {
            total += 15;
        }
        else if (colorSelected == "blue")
        {
            total += 20;
        }
        else if (colorSelected == "grey")
        {
            total += 25;
        }
        if (borderSelected == "red")
        {
            total += 5;
        }
        else if (borderSelected == "white")
        {
            total += 7;
        }
        else if (borderSelected == "green")
        {
            total += 9;
        }
        else if (borderSelected == "blue")
        {
            total += 11;
        }
        else if (borderSelected == "grey")
        {
            total += 15;
        }

        if (textSelected == "red")
        {
            total += 12;
        }
        else if (textSelected == "white")
        {
            total += 14;
        }
        else if (textSelected == "green")
        {
            total += 16;
        }
        else if (textSelected == "blue")
        {
            total += 18;
        }
        else if (textSelected == "grey")
        {
            total += 20;
        }

        if (stateSelected == "KS" || stateSelected == "MO")
        {
            total *= 0.85;
        }
        else
        {
            total *= 1.2;
        }

        Session["totalPrice"] = total;

        Session ["shape"] = bannerType.SelectedItem.Value;
        Session ["bckColor"] = backgroundColor.SelectedItem.Value;
        Session ["brdColor"] = borderColor.SelectedItem.Value;
        Session ["txtColor"] = textColor.SelectedItem.Value;
        Session ["fLine"] = txtFirstLine.Text;
        Session ["otherText"] = txtRemainingText.Text;
        Session ["name"] = txtFirstName.Text;
        Response.Redirect("thankyou.aspx");

        
    }
    //void Date_Selected(Object s, EventArgs e)
    //{
    //    pickupDate1.Text = "Selected date is: " + Session["pickup"];
    //}
    
}
