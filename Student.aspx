<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student.aspx.cs" Inherits="Student" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>学生界面</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style3
        {
            width: 100%;
            margin-top: 38px;
        }
        .style4
        {
            font-weight: bold;
            font-size: large;
            font-family: 幼圆;
        }
        .style5
        {
            width: 730px;
            text-align: center;
        }
        .style6
        {
            text-align: center;
        }
        .style7
        {
            text-align: center;
            height: 25px;
        }
        .style8
        {
            font-weight: bold;
            font-size: medium;
            font-family: 幼圆;
        }
        .style9
        {
            font-weight: bold;
            font-size: large;
            font-family: 幼圆;
            background-color: #FF0000;
        }
        .style10
        {
            font-size: xx-large;
            font-family: Calista;
            text-align: center;
            background-color: #99FF99;
        }
        .style11
        {
            width: 100%;
            height: 81px;
        }
        .style12
        {
            font-size: large;
            font-family: 幼圆;
            text-align: right;
        }
    </style>
</head>
<body background="PHOTOS/3.jpg">
    <form id="form1" runat="server">
    <div>
    
        <table class="style11">
            <tr>
                <td class="style10">
                    <strong>欢迎来到学生界面</strong></td>
            </tr>
            <tr>
                <td class="style12">
                    <strong>你好！<asp:Label ID="Label1" runat="server" CssClass="style11" 
                        Text="Label"></asp:Label>
                    </strong>
                </td>
            </tr>
        </table>
    
    </div>
    <div>
        <table class="style3">
            <tr>
                <td class="style5">
                    <strong>
                    <asp:Button ID="Button1" runat="server" CssClass="style4" Text="选、退课" 
                        onclick="Button1_Click" />
                    </strong>
                </td>
                <td class="style6">
                    <strong>
                    <asp:Button ID="Button2" runat="server" CssClass="style4" Text="查询成绩、课表" 
                        onclick="Button2_Click" />
                    </strong>
                </td>
            </tr>
        </table>
    </div>
    <table class="style1">
        <tr>
            <td class="style7">
                <strong>
                <asp:Button ID="Button3" runat="server" CssClass="style8" 
                    onclick="Button3_Click" Text="修改密码" />
                </strong>
            </td>
        </tr>
    </table>
    <p>
        <strong>
        <asp:Button ID="Button4" runat="server" CssClass="style9" 
            onclick="Button4_Click" Text="返回登录界面" />
        </strong>
    </p>
    </form>
    </body>
</html>
