<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminSetCourse.aspx.cs" Inherits="SetCourse" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>课程设定页面</title>
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
            font-size: xx-large;
            font-family: Calista;
            color: #FFFFFF;
            text-align: left;
        }
        .style5
        {
            width: 81px;
            color: #FFFFFF;
            font-size: large;
            font-family: 幼圆;
        }
        .style7
        {
            font-size: medium;
            font-family: 幼圆;
        }
        .style8
        {
            font-weight: bold;
            font-size: medium;
            font-family: 幼圆;
            background-color: #FF66CC;
        }
        .style9
        {
            font-weight: bold;
            font-size: medium;
            font-family: 幼圆;
            background-color: #FF66FF;
        }
        .style10
        {
            font-weight: bold;
            font-size: medium;
            font-family: 幼圆;
            background-color: #CC00CC;
        }
        .style11
        {
            height: 31px;
            font-size: x-large;
            font-family: 幼圆;
            color: #FFFFFF;
        }
        .style12
        {
            font-size: medium;
        }
        .style13
        {
            font-weight: bold;
            font-size: medium;
            font-family: 幼圆;
        }
        .style14
        {
            color: #FFFFFF;
        }
        .style15
        {
            font-family: "微软雅黑 Light";
            font-size: large;
        }
        .style16
        {
            font-weight: bold;
            font-size: large;
            font-family: 幼圆;
            background-color: #FF3300;
        }
        .style17
        {
            color: #FF0000;
            font-family: "微软雅黑 Light";
        }
        .style18
        {
            font-family: "微软雅黑 Light";
        }
    </style>
</head>
<body background="PHOTOS/5.jpg">
    <form id="form1" runat="server">
    <div>
    
        <table class="style3">
            <tr>
                <td class="style4">
                    <strong>欢迎来到课程设定页面</strong></td>
            </tr>
        </table>
    
    </div>
    <table class="style3">
        <tr>
            <td class="style5">
                <strong>课程号:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <em><strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox1" CssClass="style17" ErrorMessage="课程号不能为空" 
                    ValidationGroup="shanchu"></asp:RequiredFieldValidator>
                </strong></em>
            </td>
        </tr>
        <tr>
            <td class="style5">
                <strong>课程名:</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                <strong>学分:</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                <strong>时间:</strong></td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                <strong>地点:</strong></td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                <strong>教师:</strong></td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <em><strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="教师不能为空" ForeColor="Red" 
                    CssClass="style18" ValidationGroup="xiugai"></asp:RequiredFieldValidator>
                </strong></em>
            </td>
        </tr>
    </table>
    <table class="style3">
        <tr>
            <td>
                <strong>
                <asp:Button ID="Button1" runat="server" CssClass="style10" 
                    onclick="Button1_Click" Text="添加课程" CausesValidation="False" />
                <span class="style7">&nbsp;&nbsp; </span>
                <asp:Button ID="Button2" runat="server" CssClass="style9" 
                    onclick="Button2_Click" Text="删除课程" ToolTip="输入课程号即可" 
                    ValidationGroup="shanchu" />
                <span class="style7">&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="style13" 
                    AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem>请选择修改的地方</asp:ListItem>
                    <asp:ListItem>课程号</asp:ListItem>
                    <asp:ListItem>课程名</asp:ListItem>
                    <asp:ListItem>学分</asp:ListItem>
                    <asp:ListItem>时间</asp:ListItem>
                    <asp:ListItem>地点</asp:ListItem>
                    <asp:ListItem>教师</asp:ListItem>
                </asp:DropDownList>
                </span>
                <asp:Button ID="Button3" runat="server" CssClass="style8" 
                    onclick="Button3_Click" Text="修改" ValidationGroup="xiugai" />
                </strong>
            </td>
        </tr>
    </table>
    <table class="style3">
        <tr>
            <td class="style11">
                <strong>信息查看<br />
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" 
                    CssClass="style12" 
                    onselectedindexchanged="RadioButtonList1_SelectedIndexChanged">
                </asp:RadioButtonList>
                <br />
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
                </strong>
            </td>
        </tr>
    </table>
    <div>

        <strong>
        <asp:Button ID="Button4" runat="server" CssClass="style16" 
            onclick="Button4_Click" Text="返回管理员界面页面" CausesValidation="False" />
        </strong>

    </div>
    </form>
    <table class="style3">
        <tr>
            <td class="style14">
                <strong><span class="style15">说明：<br />
                1.删除课程时输入课程号即可！</span><br class="style15" />
                <span class="style15">2.信息查看可查看课程信息及已加入的教师！<br />
                3.修改除教师以外信息时需在教师框中输入教师名字,修改教师名字时需要输入课程号！<br />
                </span></strong>
            </td>
        </tr>
    </table>
</body>
</html>
