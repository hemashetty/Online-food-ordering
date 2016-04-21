<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Pages/Detail.Master" CodeBehind="Login_restaurant.aspx.cs" Inherits="Online_food_orderring.Pages.Login_restaurant" %>

<asp:Content ID="mn" ContentPlaceHolderID="menu" runat="server">
     <ul>
                            <li class="active"><a href="#Home" class="scroll">Home</a></li>|
                            <li><a href="Login_customer.aspx">Popular Restaurants</a></li>|
                            
                            <li><a href="contact us.aspx">contact</a></li>
						        <%--<div class="clearfix">
                                </div>--%>
                        </ul>
</asp:Content>
<asp:Content ID="login" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <h1>&nbsp;</h1>
        <table class="auto-style1" style="height: 298px; width: 801px; margin-right: 0px">
            <tr>
                <td class="auto-style2" style="width: 806px; height: 68px">&nbsp;</td>
                <td style="height: 68px; width: 542px; text-align: left;" class="auto-style2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Restaurant Login</td>
            </tr>
            <tr>
                <td class="arrow" style="width: 806px; height: 92px; text-align: right;">Username*</td>
                <td style="height: 92px; width: 542px;">
                    <asp:TextBox ID="txt_user" runat="server" Height="40px" Width="250px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_user" ErrorMessage="*Please enter username"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="width: 806px; text-align: right; height: 70px;">Password*</td>
                <td style="width: 542px; height: 70px;">
                    <asp:TextBox ID="txt_pswd" runat="server" TextMode="Password" Height="40px" Width="251px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_pswd" ErrorMessage="*Please enter the password"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 806px">
                    &nbsp;</td>
                <td style="width: 542px">
                    <asp:Button ID="btn_login" runat="server" Text="Login" OnClick="btn_login_Click" />
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="rest_forgt_pswd.aspx">Forgot your password?</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 806px">
                    </td>
                <td style="width: 542px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <%--<asp:Button ID="btn_login" runat="server" Text="Login" OnClick="btn_login_Click" Font-Bold="True" Font-Size="Medium" Height="43px" Width="83px" />--%>
                </td>
            </tr>
        </table>
   
   
    </asp:Content>