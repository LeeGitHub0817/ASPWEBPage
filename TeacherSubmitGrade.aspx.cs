using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class TeacherSubmitGrade : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string name = Session["teachername"].ToString();
        string ConnectionString = "Integrated Security = True;Data Source = .;Initial Catalog = Student Registration System;";
        using (SqlConnection con = new SqlConnection(ConnectionString))
        {
            SqlCommand com = new SqlCommand();
            string querystring = "update StudentSelectInfo set Grade = "+TextBox1.Text+" where StuNum = '"+ ListBox1.SelectedValue +"' and Teacher = '"+ name +"'";
            com.CommandText = querystring;
            com.Connection = con;
            try
            {
                con.Open();
                com.ExecuteNonQuery();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "ButtonClickScript", "alert('录入成功！')", true);
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
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Teacher.aspx");
    }
}