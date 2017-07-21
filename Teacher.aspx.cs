using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Teacher : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string ConnectionString = "Integrated Security = True;Data Source = .;Initial Catalog = Student Registration System;";
            string username = Session["id"].ToString();
            using (SqlConnection con = new SqlConnection(ConnectionString))
            {
                SqlCommand com = new SqlCommand();
                string querystring = "select TeacherName from Teachers where TeacherNum = '" + username + "'";
                com.CommandText = querystring;
                com.Connection = con;
                con.Open();
                SqlDataReader reader = com.ExecuteReader();
                reader.Read();
                Label1.Text = reader.GetValue(0).ToString();
                reader.Close();
            }
            Session["teachername"] = Label1.Text;
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("TeacherSelectCoureInfo.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("TeacherSubmitGrade.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("TeacherModifyPassword.aspx");
    }
}