using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class AdminAddAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "教师")
        {           
            string ConnectionString = "Integrated Security = True;Data Source = .;Initial Catalog = Student Registration System;";
            using (SqlConnection conn = new SqlConnection(ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("insert into Teachers(TeacherNum,Password,TeacherName,Department,Sex) Values(@username,@password,@name,@department,@sex)", conn))
                {
                    cmd.Parameters.Add(new SqlParameter("username", username.Text));
                    cmd.Parameters.Add(new SqlParameter("password", password.Text));
                    cmd.Parameters.Add(new SqlParameter("name", name.Text));
                    cmd.Parameters.Add(new SqlParameter("department", department.Text));
                    cmd.Parameters.Add(new SqlParameter("sex", DropDownList2.SelectedItem.Text));
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('注册成功！')</script>");
                }
            }
        }
        else if (DropDownList1.SelectedValue == "学生")
        {          
            string ConnectionString = "Integrated Security = True;Data Source = .;Initial Catalog = Student Registration System;";
            using (SqlConnection conn = new SqlConnection(ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("insert into Students(StuNum,Password,StuName,Major,Sex) Values(@username,@password,@name,@major,@sex)", conn))
                {
                    cmd.Parameters.Add(new SqlParameter("username", username.Text));
                    cmd.Parameters.Add(new SqlParameter("password", password.Text));
                    cmd.Parameters.Add(new SqlParameter("name", name.Text));
                    cmd.Parameters.Add(new SqlParameter("major", major.Text));
                    cmd.Parameters.Add(new SqlParameter("sex", DropDownList2.SelectedItem.Text));
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('注册成功！')</script>");
                }
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "教师")
        {
            string ConnectionString = "Integrated Security = True;Data Source = .;Initial Catalog = Student Registration System;";
            using (SqlConnection conn = new SqlConnection(ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("Update Teachers set Password=@password where TeacherNum=@username", conn))
                {
                    cmd.Parameters.Add(new SqlParameter("username", username.Text));
                    cmd.Parameters.Add(new SqlParameter("password", password.Text));
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('修改成功！')</script>");
                }
            }
        }
        if (DropDownList1.SelectedValue == "学生")
        {
            string ConnectionString = "Integrated Security = True;Data Source = .;Initial Catalog = Student Registration System;";
            using (SqlConnection conn = new SqlConnection(ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("Update Students set Password=@password where StuNum=@username", conn))
                {
                    cmd.Parameters.Add(new SqlParameter("username", username.Text));
                    cmd.Parameters.Add(new SqlParameter("password", password.Text));
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('修改成功！')</script>");
                }
            }
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "教师")
        {
            string ConnectionString = "Integrated Security = True;Data Source = .;Initial Catalog = Student Registration System;";
            using (SqlConnection conn = new SqlConnection(ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("Delete from Teachers where TeacherNum=@username", conn))
                {
                    cmd.Parameters.Add(new SqlParameter("username", username.Text));
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('注销成功！')</script>");
                }
            }
        }
        else if (DropDownList1.SelectedValue == "学生")
        {
            string ConnectionString = "Integrated Security = True;Data Source = .;Initial Catalog = Student Registration System;";
            using (SqlConnection conn = new SqlConnection(ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("Delete from Students where StuNum=@username", conn))
                {
                    cmd.Parameters.Add(new SqlParameter("username", username.Text));
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('注销成功！')</script>");
                }
            }
        }
    }


    protected void btnDisplay_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        string ConnectionString = "Integrated Security = True;Data Source = .;Initial Catalog = Student Registration System;";
        string queryString = "select * from Teachers order by TeacherNum asc";//DESC
        using (SqlConnection connection = new SqlConnection(ConnectionString))
        {
            SqlCommand command = new SqlCommand(); //用参数的SqlCommand构造函数
            command.Connection = connection;
            command.CommandTimeout = 15;
            command.CommandType = CommandType.Text;
            command.CommandText = queryString;
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();

            GridView1.DataSource = reader;
            GridView1.DataBind();
        }  
    }
    protected void btnDisplay2_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
        string ConnectionString = "Integrated Security = True;Data Source = .;Initial Catalog = Student Registration System;";
        string queryString = "select * from Students order by StuNum asc";//DESC
        using (SqlConnection connection = new SqlConnection(ConnectionString))
        {
            SqlCommand command = new SqlCommand(); //用参数的SqlCommand构造函数
            command.Connection = connection;
            command.CommandTimeout = 15;
            command.CommandType = CommandType.Text;
            command.CommandText = queryString;
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();

            GridView2.DataSource = reader;
            GridView2.DataBind();
        }  
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "教师")
        {
            major.Enabled = false;
            department.Enabled = true;
        }
        else if (DropDownList1.SelectedValue == "学生")
        {
            department.Enabled = false;
            major.Enabled = true;
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin.aspx");
    }
}