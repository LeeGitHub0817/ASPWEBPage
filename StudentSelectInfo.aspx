<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentSelectInfo.aspx.cs" Inherits="StudentSelectInfo" %>

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
            background-color: #999966;
        }
        .style3
        {
            width: 100%;
            height: 128px;
            margin-bottom: 0px;
        }
        .style4
        {
            width: 873px;
        }
        .style5
        {
            width: 873px;
            color: #FFFFFF;
            font-size: x-large;
            height: 34px;
            font-family: 幼圆;
        }
        .style6
        {
            width: 873px;
            height: 31px;
        }
        .style7
        {
            font-size: large;
            font-family: 幼圆;
        }
        .style8
        {
            color: #FFFFFF;
            font-size: x-large;
            font-family: 幼圆;
        }
        .style9
        {
            width: 368px;
            height: 31px;
        }
        .style10
        {
            height: 31px;
        }
        .style11
        {
            font-weight: bold;
            font-size: medium;
            font-family: 幼圆;
        }
        .style12
        {
            font-weight: bold;
            font-size: large;
            font-family: 幼圆;
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
                    <strong>欢迎来到信息查询页面</strong></td>
            </tr>
        </table>
    
    </div>
    <table class="style3">
        <tr>
            <td class="style5">
                <strong>课程信息:</strong></td>
            <td class="style8" colspan="2">
                <strong>成绩:</strong></td>
        </tr>
        <tr>
            <td class="style6">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Student Registration SystemConnectionString %>" 
                    SelectCommand="SELECT [CoureNum], [CoureName], [Credit], [Time], [Location], [Teacher] FROM [StudentSelectInfo] WHERE ([StuNum] = @StuNum)">
                    <SelectParameters>
                        <asp:SessionParameter Name="StuNum" SessionField="username" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="style9">
                <strong>
                <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" 
                    CssClass="style11" DataSourceID="SqlDataSource2" DataTextField="CoureName" 
                    DataValueField="CoureName"></asp:ListBox>
                </strong>
            </td>
            <td class="style10">
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Student Registration SystemConnectionString %>" 
                    
                    SelectCommand="SELECT [CoureName] FROM [StudentSelectInfo] WHERE ([StuNum] = @StuNum2)">
                    <SelectParameters>
                        <asp:SessionParameter Name="StuNum2" SessionField="username" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Student Registration SystemConnectionString %>" 
                    
                    SelectCommand="SELECT [CoureNum], [CoureName], [Teacher], [Grade] FROM [StudentSelectInfo] WHERE (([CoureName] = @CoureName) AND ([StuNum] = @StuNum))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ListBox1" Name="CoureName" 
                            PropertyName="SelectedValue" Type="String" />
                        <asp:SessionParameter Name="StuNum" SessionField="username" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <strong>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
                    CellPadding="4" CellSpacing="2" CssClass="style7" DataKeyNames="CoureNum" 
                    DataSourceID="SqlDataSource1" ForeColor="Black" Width="440px">
                    <Columns>
                        <asp:BoundField DataField="CoureNum" HeaderText="课程号" ReadOnly="True" 
                            SortExpression="CoureNum" />
                        <asp:BoundField DataField="CoureName" HeaderText="课程名" 
                            SortExpression="CoureName" />
                        <asp:BoundField DataField="Credit" HeaderText="学分" 
                            SortExpression="Credit" />
                        <asp:BoundField DataField="Time" HeaderText="时间" SortExpression="Time" />
                        <asp:BoundField DataField="Location" HeaderText="地点" 
                            SortExpression="Location" />
                        <asp:BoundField DataField="Teacher" HeaderText="教师" 
                            SortExpression="Teacher" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                </strong>
            </td>
            <td colspan="2">
                <strong>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" CssClass="style7" 
                    DataSourceID="SqlDataSource3" Height="144px" Width="362px">
                    <Columns>
                        <asp:BoundField DataField="CoureNum" HeaderText="课程号" 
                            SortExpression="CoureNum" />
                        <asp:BoundField DataField="CoureName" HeaderText="课程名" 
                            SortExpression="CoureName" />
                        <asp:BoundField DataField="Teacher" HeaderText="教师" 
                            SortExpression="Teacher" />
                        <asp:BoundField DataField="Grade" HeaderText="成绩" SortExpression="Grade" />
                    </Columns>
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                </asp:GridView>
                </strong>
            </td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
    <p>
        <strong>
        <asp:Button ID="Button1" runat="server" CssClass="style12" Text="返回学生主界面" 
            onclick="Button1_Click" />
        </strong>
    </p>
    </form>
</body>
</html>
