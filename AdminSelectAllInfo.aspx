<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminSelectAllInfo.aspx.cs" Inherits="AdminSelectAllInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>显示所有已添加的学生及教师</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 28px;
        }
        .style2
        {
            height: 28px;
        }
        .style3
        {
            font-size: large;
            font-family: 幼圆;
        }
        .style4
        {
            height: 28px;
            width: 767px;
        }
        .style5
        {
            width: 100%;
        }
        .style6
        {
            font-size: xx-large;
            font-family: "微软雅黑 Light";
            color: #FF0066;
        }
        .style7
        {
            width: 294px;
        }
        .style8
        {
            font-size: large;
            font-family: 华文细黑;
        }
        .style9
        {
            font-weight: bold;
            font-size: medium;
            font-family: 华文楷体;
        }
        .style11
        {
            width: 292px;
        }
        .style12
        {
            width: 626px;
            height: 30px;
        }
        .style13
        {
            width: 100%;
            height: 24px;
        }
        .style14
        {
            height: 30px;
            font-size: xx-large;
            font-family: 幼圆;
            color: #FF3300;
        }
        .style15
        {
            font-weight: bold;
            font-size: large;
            font-family: 幼圆;
            background-color: #FF3300;
        }
    </style>
</head>
<body background="PHOTOS/6.jpg">
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style4">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:Student Registration SystemConnectionString %>" 
                        SelectCommand="SELECT * FROM [Students]"></asp:SqlDataSource>
                    <br />
                    <strong>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        CssClass="style3" DataSourceID="SqlDataSource1" AllowPaging="True" 
                        CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="StuNum" HeaderText="学生学号" 
                                SortExpression="StuNum" />
                            <asp:BoundField DataField="StuName" HeaderText="学生姓名" 
                                SortExpression="StuName" />
                            <asp:BoundField DataField="Password" HeaderText="密码" 
                                SortExpression="Password" />
                            <asp:BoundField DataField="Major" HeaderText="专业" SortExpression="Major" />
                            <asp:BoundField DataField="Sex" HeaderText="性别" SortExpression="Sex" />
                        </Columns>
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                    </strong>
                </td>
                <td class="style2">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:Student Registration SystemConnectionString %>" 
                        SelectCommand="SELECT * FROM [Teachers]"></asp:SqlDataSource>
                    <br />
                    <strong>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                        CssClass="style3" DataSourceID="SqlDataSource2" AllowPaging="True" 
                        CellPadding="4" ForeColor="#333333" GridLines="None" Width="483px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="TeacherNum" HeaderText="教师号" 
                                SortExpression="TeacherNum" />
                            <asp:BoundField DataField="TeacherName" HeaderText="教师姓名" 
                                SortExpression="TeacherName" />
                            <asp:BoundField DataField="Password" HeaderText="密码" 
                                SortExpression="Password" />
                            <asp:BoundField DataField="Department" HeaderText="系别" 
                                SortExpression="Department" />
                            <asp:BoundField DataField="Sex" HeaderText="性别" SortExpression="Sex" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    </strong>
                </td>
            </tr>
        </table>
    
    </div>
    <table class="style5">
        <tr>
            <td class="style6">
                <strong>说明：以上显示所有已添加的学生及教师!</strong></td>
        </tr>
    </table>
    <table class="style5">
        <tr>
            <td class="style7">
                <strong>
                <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" CssClass="style9" 
                    DataSourceID="SqlDataSource4" DataTextField="StuNum" DataValueField="StuNum" 
                    SelectionMode="Multiple"></asp:ListBox>
                <br />
                </strong>
                <br />
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Student Registration SystemConnectionString %>" 
                    SelectCommand="SELECT [StuNum] FROM [Students]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Student Registration SystemConnectionString %>" 
                    SelectCommand="SELECT * FROM [Students] WHERE ([StuNum] = @StuNum)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ListBox1" Name="StuNum" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <strong>
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                    CssClass="style8" DataSourceID="SqlDataSource3" CellPadding="4" 
                    ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="StuNum" HeaderText="学号" SortExpression="StuNum" />
                        <asp:BoundField DataField="StuName" HeaderText="姓名" SortExpression="StuName" />
                        <asp:BoundField DataField="Password" HeaderText="密码" 
                            SortExpression="Password" />
                        <asp:BoundField DataField="Major" HeaderText="专业" SortExpression="Major" />
                        <asp:BoundField DataField="Sex" HeaderText="性别" SortExpression="Sex" />
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
                </strong>
            </td>
        </tr>
    </table>
    <table class="style5">
        <tr>
            <td class="style11">
                <strong>
                <asp:ListBox ID="ListBox2" runat="server" AutoPostBack="True" CssClass="style9" 
                    DataSourceID="SqlDataSource5" DataTextField="TeacherNum" 
                    DataValueField="TeacherNum" SelectionMode="Multiple"></asp:ListBox>
                <br />
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Student Registration SystemConnectionString %>" 
                    SelectCommand="SELECT [TeacherNum] FROM [Teachers]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Student Registration SystemConnectionString %>" 
                    SelectCommand="SELECT * FROM [Teachers] WHERE ([TeacherNum] = @TeacherNum)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ListBox2" Name="TeacherNum" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                </strong>
            </td>
            <td>
                <strong>
                <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
                    CssClass="style8" DataSourceID="SqlDataSource6" CellPadding="4" 
                    ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="TeacherNum" HeaderText="教师号" 
                            SortExpression="TeacherNum" />
                        <asp:BoundField DataField="TeacherName" HeaderText="姓名" 
                            SortExpression="TeacherName" />
                        <asp:BoundField DataField="Password" HeaderText="密码" 
                            SortExpression="Password" />
                        <asp:BoundField DataField="Department" HeaderText="系别" 
                            SortExpression="Department" />
                        <asp:BoundField DataField="Sex" HeaderText="性别" SortExpression="Sex" />
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
                </strong>
            </td>
        </tr>
    </table>
    <table class="style13">
        <tr>
            <td class="style12">
                <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Student Registration SystemConnectionString %>" 
                    SelectCommand="SELECT * FROM [CoureInformation]"></asp:SqlDataSource>
                <br />
                <strong>
                <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" 
                    CssClass="style3" DataSourceID="SqlDataSource7" CellPadding="4" 
                    ForeColor="#333333" GridLines="None" Width="379px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="CoureName" HeaderText="课程名" 
                            SortExpression="CoureName" />
                        <asp:BoundField DataField="CoureNum" HeaderText="课程号" 
                            SortExpression="CoureNum" />
                        <asp:BoundField DataField="Credit" HeaderText="学分" 
                            SortExpression="Credit" />
                        <asp:BoundField DataField="Time" HeaderText="时间" SortExpression="Time" />
                        <asp:BoundField DataField="Location" HeaderText="地点" 
                            SortExpression="Location" />
                        <asp:BoundField DataField="Teacher" HeaderText="教师" 
                            SortExpression="Teacher" />
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
                </strong>
            </td>
            <td class="style14">
                <strong>说明:左侧显示已添加的课程!</strong></td>
        </tr>
    </table>
    <p>
    <strong>
    <asp:Button ID="Button1" runat="server" CssClass="style15" 
        onclick="Button1_Click" Text="返回管理员界面页面" Width="209px" />
    </strong>
    </p>
    </form>
    <p>
        &nbsp;</p>
    </body>
</html>
