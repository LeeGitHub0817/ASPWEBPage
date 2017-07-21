<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Teacher.aspx.cs" Inherits="Teacher" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style3
        {
            text-align: center;
            height: 42px;
        }
        .style4
        {
            font-weight: bold;
            font-size: medium;
            font-family: 幼圆;
        }
        .style5
        {
            font-size: xx-large;
            font-family: Calista;
            text-align: center;
            height: 49px;
            background-color: #CCCC00;
        }
        .style6
        {
            font-size: x-large;
            font-family: 隶书;
            color: #FFFFFF;
        }
        .style7
        {
            text-align: right;
        }
        .style8
        {
            height: 41px;
            text-align: center;
        }
        .style9
        {
            width: 100%;
            margin-bottom: 10px;
        }
        .style10
        {
            font-weight: bold;
            font-size: large;
            font-family: 幼圆;
            background-color: #FF3300;
        }
    </style>
</head>
<body background="PHOTOS/2.jpg">
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style5">
                    <strong>欢迎来到教师界面</strong></td>
            </tr>
        </table>
        <p>
        </p>
        <table class="style9">
            <tr>
                <td class="style7">
                    <strong><span class="style6">你好！</span><asp:Label ID="Label1" runat="server" 
                        CssClass="style6" Text="Label"></asp:Label>
                    </strong>
                </td>
            </tr>
        </table>
    
    </div>
    <table class="style1">
        <tr>
            <td class="style3">
                <strong>
                <asp:Button ID="Button1" runat="server" CssClass="style4" Text="信息查询" 
                    onclick="Button1_Click" />
                </strong>
            </td>
            <td class="style3">
                <strong>
                <asp:Button ID="Button2" runat="server" CssClass="style4" Text="成绩统计" 
                    onclick="Button2_Click" />
                </strong>
            </td>
        </tr>
        <tr>
            <td class="style8" colspan="2">
                <strong>
                <asp:Button ID="Button4" runat="server" CssClass="style4" 
                    onclick="Button4_Click" Text="修改密码" />
                </strong>
                </td>
        </tr>
    </table>
    <strong>
    <asp:Button ID="Button3" runat="server" CssClass="style10" 
        onclick="Button3_Click" Text="返回登录界面" />
    </strong>
    </form>
</body>
</html>
