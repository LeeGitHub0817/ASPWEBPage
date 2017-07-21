using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class StudentSelectDeleteCourse : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView2.DataSourceID = "SqlDataSource3";
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "select")                          //如果单击的是“选修”按钮
        {
            string username = Session["username"].ToString();
            string name = Session["name"].ToString();
            int index = Convert.ToInt32(e.CommandArgument);     //取出选修课程所在的行索引       
            DataKey key = GridView1.DataKeys[index];//创建DataKey集合接收该行的主键
            string CoureName = GridView1.DataKeys[index].Values[0].ToString().Trim();//取出课程编号主键值
            string CoureNum = GridView1.DataKeys[index].Values[1].ToString().Trim();   //取出教师编号主键值
            string Credit = GridView1.DataKeys[index].Values[2].ToString().Trim();
            string Time = GridView1.DataKeys[index].Values[3].ToString().Trim();
            string Location = GridView1.DataKeys[index].Values[4].ToString().Trim();
            string Teacher = GridView1.DataKeys[index].Values[5].ToString().Trim();
            string connStr = "Integrated Security = True;Data Source = .;Initial Catalog = Student Registration System;";
            string SqlStr = "insert into StudentSelectInfo(StuNum, StuName, CoureNum, CoureName, Credit, Time, Location, Teacher) values('" + username + "','"+ name +"','" + CoureNum + "','" + CoureName + "','" + Credit + "','" + Time + "', '" + Location + "','" + Teacher + "')";
            try
            {
                SqlConnection conn = new SqlConnection(connStr);//创建连接对象
                if (conn.State.ToString() == "Closed")          //如果连接关闭,打开连接
                    conn.Open();
                SqlCommand comm = new SqlCommand(SqlStr, conn);
                if (comm.ExecuteNonQuery() > 0)                    //执行插入选修课程
                {
                    Response.Write("<script>alert('选课成功！')</script>");
                    GridView2.DataSourceID = "SqlDataSource3";                  
                    return;
                }
                comm.Dispose();
                if (conn.State.ToString() == "Open")            //如果连接打开,关闭连接
                    conn.Close();
            }
            catch (Exception ex)                                //异常处理
            {
                
                Response.Redirect("StudentSelectDeleteCourse.aspx");
                Response.Write("<script>alert('你已经选过这个课了！')</script>");
                //Response.Write("数据库错误，错误原因：" + ex.Message);
                Response.End();
            }
            Response.Write("<script>location.reload();</script>");
        }
    }
    protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "tuixuan")                          //如果单击的是“选修”按钮
        {
            string username = Session["username"].ToString();
            string name = Session["name"].ToString();
            int index = Convert.ToInt32(e.CommandArgument);     //取出选修课程所在的行索引       
            DataKey key = GridView1.DataKeys[index];//创建DataKey集合接收该行的主键
            string CoureName = GridView1.DataKeys[index].Values[0].ToString().Trim();//取出课程编号主键值
            string CoureNum = GridView1.DataKeys[index].Values[1].ToString().Trim();   //取出教师编号主键值
            string Credit = GridView1.DataKeys[index].Values[2].ToString().Trim();
            string Time = GridView1.DataKeys[index].Values[3].ToString().Trim();
            string Location = GridView1.DataKeys[index].Values[4].ToString().Trim();
            string Teacher = GridView1.DataKeys[index].Values[5].ToString().Trim();
            string connStr = "Integrated Security = True;Data Source = .;Initial Catalog = Student Registration System;";
            string SqlStr = "delete from StudentSelectInfo where StuNum = '" + username + "' and StuName = '"+ name +"' and CoureNum = '" + CoureNum + "' and CoureName = '" + CoureName + "' and Credit = '" + Credit + "' and Time = '" + Time + "' and Location = '" + Location + "'and Teacher = '" + Teacher + "'";
            try
            {
                SqlConnection conn = new SqlConnection(connStr);//创建连接对象
                if (conn.State.ToString() == "Closed")          //如果连接关闭,打开连接
                    conn.Open();
                SqlCommand comm = new SqlCommand(SqlStr, conn);
                if (comm.ExecuteNonQuery() > 0)                    //执行插入选修课程
                {
                    Response.Write("<script>alert('退选成功！')</script>");
                    GridView2.DataSourceID = "SqlDataSource3";
                    return;
                }
                comm.Dispose();
                if (conn.State.ToString() == "Open")            //如果连接打开,关闭连接
                    conn.Close();
            }
            catch (Exception ex)                                //异常处理
            {

                Response.Write("数据库错误，错误原因：" + ex.Message);
                Response.End();
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Student.aspx");
    }
}