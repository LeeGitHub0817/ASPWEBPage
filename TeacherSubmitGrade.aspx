<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TeacherSubmitGrade.aspx.cs" Inherits="TeacherSubmitGrade" %>

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
            font-size: xx-large;
            font-family: Calista;
            text-align: center;
            color: #FFFFFF;
        }
        .style3
        {
            width: 100%;
            height: 104px;
        }
        .style5
        {
            height: 39px;
        }
        .style6
        {
            font-weight: bold;
            font-size: medium;
            font-family: "微软雅黑 Light";
        }
        .style7
        {
            font-size: medium;
            font-family: "微软雅黑 Light";
            color: #FFFFFF;
        }
        .style8
        {
            height: 25px;
        }
        .style9
        {
            height: 39px;
            font-size: large;
            font-family: "微软雅黑 Light";
            color: #FF3300;
            width: 513px;
        }
        .style10
        {
            font-size: medium;
            font-family: "微软雅黑 Light";
        }
        .style11
        {
            font-size: x-large;
            font-family: "微软雅黑 Light";
            color: #FFFFFF;
        }
        .style12
        {
            color: #FF0000;
        }
        .style13
        {
            font-weight: bold;
            font-size: large;
            font-family: "微软雅黑 Light";
            background-color: #FF3300;
        }
    </style>
</head>
<body background="PHOTOS/8.jpg">
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style2">
                    <strong>欢迎来到成绩统计界面</strong></td>
            </tr>
        </table>
    
    </div>
    <table class="style3">
        <tr>
            <td class="style8" colspan="2">
                <strong><span class="style7">成绩输入框:</span><asp:TextBox ID="TextBox1" 
                    runat="server" Width="109px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" CssClass="style12" ErrorMessage="请输入成绩"></asp:RequiredFieldValidator>
&nbsp;
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="TextBox1" CssClass="style12" ErrorMessage="成绩需要在1-100之间" 
                    MaximumValue="100" MinimumValue="0" Type="Double"></asp:RangeValidator>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="style5" colspan="2">
                <strong>
                <asp:Button ID="Button1" runat="server" CssClass="style6" Text="录入" 
                    Height="26px" onclick="Button1_Click" Width="80px" />
                </strong>
            </td>
        </tr>
        <tr>
            <td class="style9">
                <strong>以下为你的学生的学号:<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Student Registration SystemConnectionString %>" 
                    SelectCommand="SELECT [StuNum] FROM [StudentSelectInfo] WHERE ([Teacher] = @Teacher2)">
                    <SelectParameters>
                        <asp:SessionParameter Name="Teacher2" SessionField="teachername" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Student Registration SystemConnectionString %>" 
                    
                    SelectCommand="SELECT [StuNum], [StuName], [CoureName], [Credit], [Grade] FROM [StudentSelectInfo] WHERE (([Teacher] = @Teacher2) AND ([StuNum] = @StuNum))">
                    <SelectParameters>
                        <asp:SessionParameter Name="Teacher2" SessionField="teachername" 
                            Type="String" />
                        <asp:ControlParameter ControlID="ListBox1" Name="StuNum" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" 
                    CssClass="style10" DataSourceID="SqlDataSource1" DataTextField="StuNum" 
                    DataValueField="StuNum"></asp:ListBox>
                </strong>
            </td>
            <td class="style5">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" CssClass="style11" DataSourceID="SqlDataSource2" 
                    ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="StuNum" HeaderText="学号" 
                            SortExpression="StuNum" />
                        <asp:BoundField DataField="StuName" HeaderText="姓名" 
                            SortExpression="StuName" />
                        <asp:BoundField DataField="CoureName" HeaderText="课程名" 
                            SortExpression="CoureName" />
                        <asp:BoundField DataField="Credit" HeaderText="学分" SortExpression="Credit" />
                        <asp:BoundField DataField="Grade" HeaderText="成绩" 
                            SortExpression="Grade" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </td>
        </tr>
    </table>
    <p>
        <strong>
        <asp:Button ID="Button2" runat="server" CssClass="style13" 
            onclick="Button2_Click" Text="返回教师页面" CausesValidation="False" />
        </strong>
    </p>
    </form>
</body>
</html>
