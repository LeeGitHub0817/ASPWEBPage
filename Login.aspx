<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>登录界面</title>
    <style type="text/css">
        .style1
        {
            width: 50%;
            height: 98px;
        }
        .style5
        {
            width: 69px;
            text-align: right;
            font-family: 幼圆;
            font-size: large;
            height: 23px;
        }
        .style6
        {
            width: 50%;
            height: 60px;
        }
        .style7
        {
            width: 69px;
            text-align: center;
            font-family: 幼圆;
            font-size: large;
            height: 23px;
        }
        .style10
        {
            height: 23px;
        }
        .style13
        {
            width: 219px;
            height: 30px;
        }
        .style14
        {
            height: 30px;
        }
        .style15
        {
            width: 219px;
            height: 36px;
        }
        .style16
        {
            height: 36px;
        }
        .style17
        {
            font-size: xx-large;
            font-family: Calista;
        }
        .style18
        {
            font-size: large;
            font-family: 幼圆;
            color: #000000;
        }
        .style19
        {
            color: #FF3300;
        }
        .style20
        {
            font-size: large;
            font-family: 幼圆;
            font-weight: bold;
        }
    </style>
</head>
<body background="PHOTOS/6.jpg">
    <strong><span class="style17">欢迎来到实验选课管理系统</span></strong><form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style5">
                    <strong>用户名:</strong></td>
                <td class="style10">
                    <asp:TextBox ID="username" runat="server" Height="27px" Width="210px"></asp:TextBox>
                    <strong>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="username" ErrorMessage="用户名不能为空" ForeColor="#FF3300" 
                        CssClass="style19"></asp:RequiredFieldValidator>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    <strong>密码:</strong></td>
                <td class="style10">
                    <asp:TextBox ID="password" runat="server" Height="28px" Width="209px" 
                        TextMode="Password"></asp:TextBox>
                    <strong>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="password" ErrorMessage="密码不能为空" ForeColor="#FF3300" 
                        CssClass="style19"></asp:RequiredFieldValidator>
                    </strong>
                </td>
            </tr>
        </table>
    </div>
    <table class="style6">
        <tr>
            <td class="style13">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="23px" 
                    RepeatDirection="Horizontal" 
                    style="font-weight: 700; font-size: medium; font-family: 幼圆" Width="222px">
                    <asp:ListItem>学生</asp:ListItem>
                    <asp:ListItem>教师</asp:ListItem>
                    <asp:ListItem>管理员</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="style14">
                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="RadioButtonList1" CssClass="style19" 
                    ErrorMessage="请选择一个用户类型"></asp:RequiredFieldValidator>
                </strong></td>
        </tr>
        <tr>
            <td class="style15">
                <asp:Button ID="Button1" runat="server" 
                    style="font-weight: 700; font-family: 幼圆; font-size: large" Text="登录" 
                    onclick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;
                <asp:Button ID="Button2" runat="server" CausesValidation="False" 
                    CssClass="style20" onclick="Button2_Click" Text="重置" />
                </strong>
            </td>
            <td class="style16">
                </td>
        </tr>
    </table>
    </form>
    <p>
        &nbsp;</p>
    <p class="style18">
        <strong>说明：学生及教师若忘记密码，请联系管理员！TEL:3344526 QQ:793587587</strong></p>
    </body>
</html>
