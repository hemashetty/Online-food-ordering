<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Pages/Detail.Master" CodeBehind="contact us.aspx.cs" Inherits="Online_food_orderring.Pages.contact_us" %>


<asp:Content ID="mn" ContentPlaceHolderID="menu" runat="server">
     <ul>
                            <li ><a href="home.aspx">Home</a></li>|
                            <li><a href="Login_customer.aspx">Popular Restaurants</a></li>|
                            
                            <li><a href="contact us.aspx">contact</a></li>
						        <%--<div class="clearfix">
                                </div>--%>
                        </ul>
</asp:Content>

<asp:Content ID="dta" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p style="font-size: x-large">
        You can feel free to contact us: on 11:00AM TO 11:00PM</p>
    <p style="font-size: x-large; height: 302px">
        On Email ID: Online food order@gmail.com</p>

</asp:Content>