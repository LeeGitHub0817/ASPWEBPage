<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>管理员界面</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 70px;
            font-size: xx-large;
            font-family: Calista;
            text-align: center;
            color: #FFFFFF;
        }
        .style3
        {
            height: 38px;
            text-align: center;
        }
        .style5
        {
            height: 38px;
            text-align: center;
            width: 490px;
        }
        .style6
        {
            height: 38px;
            text-align: center;
            width: 319px;
        }
        .style4
        {
            font-weight: bold;
            font-family: 幼圆;
            font-size: large;
        }
        .style7
        {
            text-align: center;
        }
        .style8
        {
            font-weight: bold;
            font-family: 幼圆;
            font-size: large;
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
                    <strong>欢迎来到管理员界面</strong></td>
            </tr>
            </table>
        <p class="style7">
            <strong>
            <asp:Button ID="Button3" runat="server" CssClass="style4" 
                onclick="Button3_Click" Text="查看所有学生及教师" />
            </strong>
        </p>
        <table class="style1" align="center">
            <tr>
                <td class="style5">
                    <strong>
                    <asp:Button ID="Button1" runat="server" CssClass="style4" Text="添加、修改账户" 
                        onclick="Button1_Click" />
                    </strong>
                </td>
                <td class="style6">
                    <strong>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </strong>&nbsp;&nbsp; <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></td>
                <td class="style3">
                    <strong>
                    <asp:Button ID="Button2" runat="server" CssClass="style4" Text="设定、修改课程信息" 
                        onclick="Button2_Click" />
                    </strong>
                </td>
            </tr>
        </table>
    
    </div>
    <p>
        <strong>
        <asp:Button ID="Button4" runat="server" CssClass="style8" 
            onclick="Button4_Click" Text="返回登录界面" />
        </strong>
    </p>
    </form>
</body>
</html>
