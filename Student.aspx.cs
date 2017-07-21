using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Student : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string ConnectionString = "Integrated Security = True;Data Source = .;Initial Catalog = Student Registration System;";
            string username = Session["username"].ToString();
            using (SqlConnection con = new SqlConnection(ConnectionString))
            {
                SqlCommand com = new SqlCommand();
                string querystring = "select StuName from Students where StuNum = '"+username+"'";
                com.CommandText = querystring;
                com.Connection = con;
                con.Open();
                SqlDataReader reader = com.ExecuteReader();
                reader.Read();
                Label1.Text = reader.GetValue(0).ToString();
                reader.Close();
            }
            Session["name"] = Label1.Text;
            /*  using (SqlConnection con = new SqlConnection(ConnectionString))
            {
                SqlCommand com = new SqlCommand();
                string querystring = "insert into StudentSelectCourse(StuName) values('"+ name +"')";
                com.CommandText = querystring;
                com.Connection = con;
                con.Open();
                com.ExecuteNonQuery();
            }  */
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("StudentSelectDeleteCourse.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("StudentSelectInfo.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("StudentModifyPassword.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}