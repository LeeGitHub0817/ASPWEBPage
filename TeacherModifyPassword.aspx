<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TeacherModifyPassword.aspx.cs" Inherits="ModifyPassword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            text-align: left;
            font-size: xx-large;
            font-family: Calista;
            color: #FFFFFF;
        }
        .style3
        {
            width: 115px;
            text-align: left;
            font-size: large;
            font-family: 幼圆;
        }
        .style4
        {
            width: 115px;
            text-align: left;
            height: 20px;
            font-size: large;
            font-family: 幼圆;
        }
        .style5
        {
            height: 20px;
            text-align: left;
        }
        .style8
        {
            width: 115px;
            text-align: left;
            font-size: large;
            font-family: 幼圆;
            height: 23px;
        }
        .style9
        {
            height: 23px;
            text-align: left;
        }
        .style11
        {
            text-align: left;
        }
        .style12
        {
            width: 114px;
            text-align: left;
        }
        .style13
        {
            font-weight: bold;
            font-size: medium;
            font-family: 幼圆;
        }
        .style14
        {
            font-weight: bold;
            font-size: large;
            font-family: 幼圆;
        }
        .style15
        {
            color: #FF0000;
        }
        .style16
        {
            color: #FF3300;
        }
        .style17
        {
            font-weight: bold;
            font-size: large;
            font-family: 幼圆;
            background-color: #FF3300;
        }
    </style>
</head>
<body background="PHOTOS/1.jpg">
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style2">
                    <strong>修改密码</strong></td>
            </tr>
        </table>
    
    </div>
    <p>
        &nbsp;</p>
    <table align="center" class="style1">
        <tr>
            <td class="style4">
                <strong>&nbsp;&nbsp;&nbsp; 旧密码:</strong></td>
            <td class="style5">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" CssClass="style15" ErrorMessage="请输入旧密码"></asp:RequiredFieldValidator>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="style8">
                <strong>&nbsp;&nbsp;&nbsp; 新密码:</strong></td>
            <td class="style9">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" CssClass="style16" ErrorMessage="请输入新密码"></asp:RequiredFieldValidator>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <strong>确认新密码:</strong></td>
            <td class="style11">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                <strong>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox2" ControlToValidate="TextBox3" CssClass="style15" 
                    ErrorMessage="两次输入的密码不一致"></asp:CompareValidator>
                </strong>
            </td>
        </tr>
    </table>
    <p>
    </p>
    <table class="style1">
        <tr>
            <td class="style12">
                <strong>
                <asp:Button ID="Button1" runat="server" CssClass="style13" 
                    onclick="Button1_Click" Text="修改" />
                </strong>
            </td>
            <td class="style11">
                <strong>
                <asp:Button ID="Button2" runat="server" CssClass="style14" 
                    onclick="Button2_Click" Text="重置" CausesValidation="False" />
                </strong>
            </td>
        </tr>
    </table>
    <p>
        <strong>
        <asp:Button ID="Button3" runat="server" CssClass="style17" 
            onclick="Button3_Click" Text="返回教师界面" CausesValidation="False" />
        </strong>
    </p>
    </form>
</body>
</html>
