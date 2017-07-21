<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TeacherSelectCoureInfo.aspx.cs" Inherits="TeacherSelectCoureInfo" %>

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
            color: #FFFFFF;
            text-align: center;
        }
        .style3
        {
            width: 100%;
            height: 94px;
        }
        .style4
        {
            color: #FFFFFF;
            font-size: x-large;
            height: 28px;
            font-family: "微软雅黑 Light";
        }
        .style5
        {
            font-size: x-large;
            font-family: "微软雅黑 Light";
            color: #FFFFFF;
        }
        .style6
        {
            font-weight: bold;
            font-size: large;
            font-family: "微软雅黑 Light";
            background-color: #FF3300;
        }
    </style>
</head>
<body background="PHOTOS/5.jpg">
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
            <td class="style4">
                <strong>以下为已选你的课的学生:<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Student Registration SystemConnectionString %>" 
                    
                    SelectCommand="SELECT [StuNum], [StuName], [Location], [Time], [Credit] FROM [StudentSelectInfo] WHERE ([Teacher] = @Teacher2)">
                    <SelectParameters>
                        <asp:SessionParameter Name="Teacher2" SessionField="teachername" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                </strong>
            </td>
        </tr>
        <tr>
            <td>
                <strong>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CssClass="style5" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="StuNum" HeaderText="学生学号" 
                            SortExpression="StuNum" />
                        <asp:BoundField DataField="StuName" HeaderText="学生姓名" 
                            SortExpression="StuName" />
                        <asp:BoundField DataField="Location" HeaderText="地点" 
                            SortExpression="Location" />
                        <asp:BoundField DataField="Time" HeaderText="时间" SortExpression="Time" />
                        <asp:BoundField DataField="Credit" HeaderText="学分" 
                            SortExpression="Credit" />
                    </Columns>
                </asp:GridView>
                </strong>
            </td>
        </tr>
    </table>
    <p>
        <strong>
        <asp:Button ID="Button1" runat="server" CssClass="style6" Text="返回教师页面" 
            onclick="Button1_Click" />
        </strong>
    </p>
    </form>
</body>
</html>
