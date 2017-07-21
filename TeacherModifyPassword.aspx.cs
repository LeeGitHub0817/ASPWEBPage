using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ModifyPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string ConnectionString = "Integrated Security = True;Data Source = .;Initial Catalog = Student Registration System;";
        string username = Session["id"].ToString();
        using (SqlConnection con = new SqlConnection(ConnectionString))
        {
            SqlCommand com = new SqlCommand();
            string querystring = "update Teachers set Password = '"+ TextBox2.Text +"' where TeacherNum = '"+ username +"'";
            com.CommandText = querystring;
            com.Connection = con;
            try
            {
                con.Open();
                com.ExecuteNonQuery();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "ButtonClickScript", "alert('修改成功！')", true);
            }
            catch
            {
                string strEx = "操作失败!";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "ButtonClickScript", "alert('" + strEx + "')", true);
            }
            finally
            {
                com = null;
            }

        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Teacher.aspx");
    }
}