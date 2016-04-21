<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login_customer.aspx.cs" MasterPageFile="~/Pages/Detail.Master"  Inherits="Online_food_orderring.Pages.Login_customer" %>

<asp:Content ID="mn" ContentPlaceHolderID="menu" runat="server">
     <ul>
                            <li ><a href="home.aspx">Home</a></li>|
                            <li><a href="Login_customer.aspx">Popular Restaurants</a></li>|
                            
                            <li><a href="contact us.aspx">contact</a></li>
						        <%--<div class="clearfix">
                                </div>--%>
                        </ul>
</asp:Content>


<asp:Content ID="login" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align: center; margin-right: 0px;">
    
        <div class="text-justify">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
        <table class="auto-style1" align="center" style="height: 217px">
            <tr>
                <td style="width: 641px; height: 83px;" class="text-right">&nbsp;</td>
                <td style="width: 1015px; text-align: left; height: 83px; color: #33CC33;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" Text="LOGIN" style="font-size: xx-large"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 641px; height: 83px;" class="text-right">&nbsp; Username</td>
                <td style="width: 1015px; text-align: left; height: 83px;">
                    &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txt_usernm" runat="server" Height="43px" Width="260px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_usernm" ErrorMessage="*Please enter username"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 641px; height: 89px;" class="text-right">Password</td>
                <td style="width: 1015px; text-align: left; height: 89px;">
                    &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txt_pswd_log" runat="server" TextMode="Password" Height="43px" Width="262px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_pswd_log" ErrorMessage="*Please enter password"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 641px">&nbsp;</td>
                <td style="width: 1015px; text-align: left">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btn_login" runat="server" OnClick="btn_login_Click" Text="Login" Font-Bold="True" Height="37px" Width="75px" />
                    &nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Pages/forget_pswd.aspx">Forget password?</asp:HyperLink>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
        </table>
    
            <br />
        </div>
    
    </div>
    
</asp:Content>