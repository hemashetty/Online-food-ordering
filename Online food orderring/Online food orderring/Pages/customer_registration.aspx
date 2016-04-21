<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Pages/pagesmenu.Master" CodeBehind="customer_registration.aspx.cs" Inherits="Online_food_orderring.Pages.customer_registration" %>


<asp:Content ID="addrecp" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
  
                        <div class="menu-bar">
                <div class="container">
                    <div class="top-menu">
                        <ul>
                            <li ><a href="home.aspx" >Home</a></li>|
                            <li ><a href="Login_customer.aspx" >Login</a></li>|
                            <li class="active"><a href="customer_registration.aspx">Registration</a></li>
                            
						        <div class="clearfix">
                                </div>
                        </ul>
                    </div>
               
</asp:Content>
    <asp:Content ID="proff" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div>
    <H1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color: #33CC33">CUSTOMER REGISTRATION</span></H1>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style1" style="width: 248px; height: 62px; font-size: x-large; text-align: right; color: #000000; font-weight: normal;">Username:</td>
                <td class="auto-style23" style="height: 62px">
                    &nbsp;
                    <asp:TextBox ID="txt_username" runat="server" Height="44px" Width="279px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_username" ErrorMessage="*Username is required"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="width: 248px; font-size: x-large; text-align: right; color: #000000; font-weight: normal;">Email:</td>
                <td class="auto-style13">
                    &nbsp;
                    <asp:TextBox ID="txt_email" runat="server" CssClass="auto-style1" Height="44px" Width="279px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_email" ErrorMessage="*Email is required"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_email" ErrorMessage="*Incorrect Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="width: 248px; height: 63px; font-size: x-large; text-align: right; color: #000000; font-weight: normal;">Mobile No.:</td>
                <td class="auto-style15" style="height: 63px">
                    &nbsp;
                    <asp:TextBox ID="txt_no" runat="server" Height="44px" Width="279px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_no" ErrorMessage="*Mobile no. is required"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="width: 248px; height: 66px; font-size: x-large; text-align: right; color: #000000; font-weight: normal;">Address:</td>
                <td class="auto-style17" style="height: 66px">
                    &nbsp;
                    <asp:TextBox ID="txt_addr" runat="server" Height="44px" Width="279px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_addr" ErrorMessage="*Address is required"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="width: 248px; height: 66px; font-size: x-large; text-align: right; color: #000000; font-weight: normal;">Password:</td>
                <td class="auto-style19" style="height: 66px">
                    &nbsp;
                    <asp:TextBox ID="txt_pswd" runat="server" TextMode="Password" Height="44px" Width="279px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_pswd" ErrorMessage="*Password is requirred"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="width: 248px; font-size: x-large; text-align: right; color: #000000; font-weight: normal;">Confirm Password:</td>
                <td class="auto-style21">
                    &nbsp;
                    <asp:TextBox ID="txt_cnfrm_pswd" runat="server" TextMode="Password" Height="44px" Width="279px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_cnfrm_pswd" ErrorMessage="*Confirm password is required"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_pswd" ControlToValidate="txt_cnfrm_pswd" ErrorMessage="*Password does not match"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 248px">&nbsp;</td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Button ID="btn_register" runat="server" Text="Register" OnClick="btn_register_Click" Font-Bold="True" Font-Size="Medium" Height="41px" Width="107px" />
                </td>
            </tr>
        </table>
    
    </div>
   </asp:Content>