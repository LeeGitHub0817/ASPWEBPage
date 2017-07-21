using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if(RadioButtonList1.SelectedValue == "管理员")
        {
            string ConnectionString = "Integrated Security = True;Data Source = .;Initial Catalog = Student Registration System;";
            using (SqlConnection conn = new SqlConnection(ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("select * from Admin where Username=@username and Password=@password", conn))
                {
                    cmd.Parameters.Add(new SqlParameter("username", username.Text));
                    cmd.Parameters.Add(new SqlParameter("password", password.Text));
                    conn.Open();
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                            Response.Redirect("Admin.aspx");                     
                        else
                            Response.Write("<script>alert('登录失败,用户名或密码错误！')</script>");                            
                    }
                }
            }
        }
        else if(RadioButtonList1.SelectedValue == "教师")
        {
            string ConnectionString = "Integrated Security = True;Data Source = .;Initial Catalog = Student Registration System;";
            using (SqlConnection conn = new SqlConnection(ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("select * from Teachers where TeacherNum=@username and Password=@Password", conn))
                {
                    cmd.Parameters.Add(new SqlParameter("username", username.Text));
                    cmd.Parameters.Add(new SqlParameter("password", password.Text));
                    conn.Open();
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            Session["id"] = username.Text;
                            Response.Redirect("Teacher.aspx");
                        }
                        else
                            Response.Write("<script>alert('登录失败,用户名或密码错误！')</script>");
                    }
                }
            }
        }
        else if (RadioButtonList1.SelectedValue == "学生")
        {
            string ConnectionString = "Integrated Security = True;Data Source = .;Initial Catalog = Student Registration System;";
            using(SqlConnection conn = new SqlConnection(ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("select * from Students where StuNum=@username and Password=@password", conn))
                {
                    cmd.Parameters.Add(new SqlParameter("username", username.Text));
                    cmd.Parameters.Add(new SqlParameter("password", password.Text));
                    conn.Open();

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            Session["username"] = username.Text;
                            Response.Redirect("Student.aspx");
                        }
                        else
                            Response.Write("<script>alert('登录失败,用户名或密码错误！')</script>");
                    }
                }
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        username.Text = "";
        password.Text = "";
    }
}