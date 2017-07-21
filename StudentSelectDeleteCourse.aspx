<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentSelectDeleteCourse.aspx.cs" Inherits="StudentSelectDeleteCourse" %>

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
            background-color: #66FFFF;
        }
        .style3
        {
            width: 100%;
            height: 142px;
        }
        .style4
        {
            width: 712px;
            height: 170px;
            text-align: left;
        }
        .style5
        {
            width: 712px;
            height: 16px;
        }
        .style6
        {
            height: 16px;
            text-align: center;
        }
        .style7
        {
            font-size: large;
            color: #FFFFFF;
            font-family: 幼圆;
        }
        .style8
        {
            height: 170px;
            text-align: left;
        }
        .style9
        {
            text-align: left;
            font-size: x-large;
            font-family: 黑体;
            color: #FFFFFF;
        }
        .style10
        {
            background-color: #009900;
        }
        .style12
        {
            font-size: x-large;
            color: #FFFFFF;
            background-color: #009900;
            font-family: 黑体;
        }
        .style13
        {
            text-align: left;
        }
        .style14
        {
            font-weight: bold;
            font-size: large;
            font-family: 幼圆;
            background-color: #FF3300;
        }
    </style>
</head>
<body background="PHOTOS/7.jpg">
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style2">
                    <strong>欢迎来到学生选课页面</strong></td>
            </tr>
        </table>
    
    </div>
    <table class="style3">
        <tr>
            <td class="style5">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:Student Registration SystemConnectionString %>" 
            DeleteCommand="DELETE FROM [CoureInformation] WHERE [CoureNum] = @original_CoureNum AND [CoureName] = @original_CoureName AND (([Credit] = @original_Credit) OR ([Credit] IS NULL AND @original_Credit IS NULL)) AND (([Time] = @original_Time) OR ([Time] IS NULL AND @original_Time IS NULL)) AND (([Location] = @original_Location) OR ([Location] IS NULL AND @original_Location IS NULL)) AND (([Teacher] = @original_Teacher) OR ([Teacher] IS NULL AND @original_Teacher IS NULL))" 
            InsertCommand="INSERT INTO [CoureInformation] ([CoureName], [CoureNum], [Credit], [Time], [Location], [Teacher]) VALUES (@CoureName, @CoureNum, @Credit, @Time, @Location, @Teacher)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT * FROM [CoureInformation]" 
            UpdateCommand="UPDATE [CoureInformation] SET [CoureName] = @CoureName, [Credit] = @Credit, [Time] = @Time, [Location] = @Location, [Teacher] = @Teacher WHERE [CoureNum] = @original_CoureNum AND [CoureName] = @original_CoureName AND (([Credit] = @original_Credit) OR ([Credit] IS NULL AND @original_Credit IS NULL)) AND (([Time] = @original_Time) OR ([Time] IS NULL AND @original_Time IS NULL)) AND (([Location] = @original_Location) OR ([Location] IS NULL AND @original_Location IS NULL)) AND (([Teacher] = @original_Teacher) OR ([Teacher] IS NULL AND @original_Teacher IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_CoureNum" Type="String" />
                <asp:Parameter Name="original_CoureName" Type="String" />
                <asp:Parameter Name="original_Credit" Type="String" />
                <asp:Parameter Name="original_Time" Type="String" />
                <asp:Parameter Name="original_Location" Type="String" />
                <asp:Parameter Name="original_Teacher" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CoureName" Type="String" />
                <asp:Parameter Name="CoureNum" Type="String" />
                <asp:Parameter Name="Credit" Type="String" />
                <asp:Parameter Name="Time" Type="String" />
                <asp:Parameter Name="Location" Type="String" />
                <asp:Parameter Name="Teacher" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CoureName" Type="String" />
                <asp:Parameter Name="Credit" Type="String" />
                <asp:Parameter Name="Time" Type="String" />
                <asp:Parameter Name="Location" Type="String" />
                <asp:Parameter Name="Teacher" Type="String" />
                <asp:Parameter Name="original_CoureNum" Type="String" />
                <asp:Parameter Name="original_CoureName" Type="String" />
                <asp:Parameter Name="original_Credit" Type="String" />
                <asp:Parameter Name="original_Time" Type="String" />
                <asp:Parameter Name="original_Location" Type="String" />
                <asp:Parameter Name="original_Teacher" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
                <div class="style9">
                    <strong><span class="style10">可选课程</span></strong></div>
            </td>
            <td class="style6">
                <strong>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Student Registration SystemConnectionString %>" 
                    
                    SelectCommand="SELECT [CoureNum], [CoureName], [Credit], [Time], [Location], [Teacher] FROM [StudentSelectInfo] WHERE ([StuNum] = @StuNum)">
                    <SelectParameters>
                        <asp:SessionParameter Name="StuNum" SessionField="username" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <div class="style13">
                    </strong>&nbsp;
                    <br />
                    <strong><span class="style12">已选课程</span></strong>
                </div>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <strong>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" onrowcommand="GridView1_RowCommand" 
            DataKeyNames="CoureName,CoureNum,Credit,Time,Location,Teacher" BackColor="White" 
                    BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                    CssClass="style7">
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
                <asp:ButtonField ButtonType="Button" CommandName="select" Text="选择" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle ForeColor="#663399" BackColor="#FFCC66" Font-Bold="True" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
                </strong>
            </td>
            <td class="style8">
                <strong>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" CssClass="style7" DataKeyNames="CoureNum,CoureName,Credit,Time,Location,Teacher" 
                    DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="Vertical" 
                    onrowcommand="GridView2_RowCommand" Width="434px">
                    <AlternatingRowStyle BackColor="White" />
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
                        <asp:ButtonField ButtonType="Button" CommandName="tuixuan" Text="退选" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
                </strong>
            </td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
    <strong>
    <asp:Button ID="Button1" runat="server" CssClass="style14" 
        onclick="Button1_Click" Text="返回学生主界面" />
    </strong>
    </form>
    </body>
</html>
