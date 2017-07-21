<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminAddAccount.aspx.cs" Inherits="AdminAddAccount" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>账户添加及修改</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style10
        {
            font-size: large;
            font-family: 幼圆;
        }
        .style7
        {
            margin-left: 0px;
        }
        .style11
        {
            text-align: center;
        }
        .style12
        {
            text-align: center;
            font-size: large;
            font-family: 幼圆;
        }
        .style8
        {
            font-weight: bold;
            font-size: medium;
            font-family: 幼圆;
        }
        .style6
        {
            font-weight: bold;
            font-size: medium;
            font-family: 幼圆;
        }
        .style15
        {
            font-size: xx-large;
            font-family: Calista;
        }
        .style18
        {
            text-align: center;
            height: 28px;
        }
        .style20
        {
            font-size: large;
            font-family: 幼圆;
            background-color: #FFFFFF;
        }
        .style21
        {
            height: 172px;
        }
        .style22
        {
            font-size: medium;
        }
        .style23
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
    
        <table align="center" class="style1">
            <tr>
            <td class="style11">
                <strong>
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="style8" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                    AutoPostBack="True">
                            <asp:ListItem>请先选择账户类型</asp:ListItem>
                            <asp:ListItem>教师</asp:ListItem>
                            <asp:ListItem>学生</asp:ListItem>
                        </asp:DropDownList>
                        </strong>
                    </td>
            </tr>
            <tr>
                <td class="style11">
                    <strong>
                        <span class="style15">账户添加及修改</span></strong></td>
            </tr>
            <tr>
                <td class="style11">
                    <strong><span class="style10">账户:<asp:TextBox ID="username" runat="server" Height="21px" 
                        Width="182px"></asp:TextBox>
                    </span></strong>
                </td>
            </tr>
            <tr>
                <td class="style11">
                    <strong>
                        <span class="style10">密码:<asp:TextBox ID="password" runat="server" 
                        CssClass="style7" Height="21px" 
                        Width="182px"></asp:TextBox>
                    </span>
                        </strong>
                    </td>
            </tr>
            <tr>
                <td class="style12">
                    <strong>姓名:<asp:TextBox ID="name" runat="server" Height="21px" Width="182px"></asp:TextBox>
                        </strong>
                    </td>
            </tr>
            <tr>
                <td class="style11">
                    <strong>
                        <span class="style10">系别:</span><asp:TextBox 
                        ID="department" runat="server" Height="21px" Width="182px"></asp:TextBox>
                        </strong>
                    </td>
            </tr>
            <tr>
                <td class="style18">
                    <strong>
                        <span class="style10">专业:</span><asp:TextBox ID="major" runat="server" 
                        Height="21px" Width="182px"></asp:TextBox>
                        </strong>
                    </td>
            </tr>
            <tr>
                <td class="style12">
                    <strong><span class="style22">性别:</span><asp:DropDownList ID="DropDownList2" 
                        runat="server" CssClass="style8">
                        <asp:ListItem>男</asp:ListItem>
                        <asp:ListItem>女</asp:ListItem>
                    </asp:DropDownList>
                    </strong>
                </td>
            </tr>
        </table>
    
    </div>
    <table class="style1">
        <tr>
            <td class="style11">
                <strong>
                <asp:Button ID="Button1" runat="server" CssClass="style6" 
                    onclick="Button1_Click" Text="注册" />
                <asp:Button ID="Button2" runat="server" CssClass="style6" 
                    onclick="Button2_Click" Text="修改密码" />
                <asp:Button ID="Button3" runat="server" CssClass="style6" 
                    onclick="Button3_Click" Text="注销账户" />
                        </strong>
            </td>
        </tr>
    </table>
    <table class="style1">
        <tr>
            <td class="style21">
                <asp:Panel ID="Panel1" runat="server">
                    <strong>
                    <asp:Button ID="btnDisplay1" runat="server" CssClass="style8" Height="25px" 
                        onclick="btnDisplay_Click" Text="显示教师信息" />
                    </strong>
                    <br />
                    <strong>
                    <asp:GridView ID="GridView1" runat="server" CssClass="style20">
                    </asp:GridView>
                    <br />
                    <br />
                    </strong>
                </asp:Panel>
            </td>
        </tr>
    </table>
    <asp:Panel ID="Panel2" runat="server">
        <strong>
        <asp:Button ID="btnDisplay2" runat="server" 
    CssClass="style8" onclick="btnDisplay2_Click" Text="显示学生信息" />
        <br />
        <asp:GridView ID="GridView2" runat="server" CssClass="style20">
        </asp:GridView>
        </strong>
    </asp:Panel>
    <strong>
    <br />
    <br />
    <asp:Button ID="Button4" runat="server" CssClass="style23" 
        onclick="Button4_Click" Text="返回管理员界面页面" />
    </strong>
    </form>
    </body>
</html>
