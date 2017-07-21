using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class SetCourse : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string CommandString = "select Teacher from CoureInformation";
            ConnectionDatabase(CommandString, RadioButtonList1);
            RadioButtonList1.DataTextField = "Teacher";
            RadioButtonList1.DataBind();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)//添加课程按钮
    {
        string ConnectionString = "Integrated Security = True;Data Source = .;Initial Catalog = Student Registration System;";
        using(SqlConnection con = new SqlConnection(ConnectionString))
        {
            SqlCommand com = new SqlCommand();
            string querystring = "insert into CoureInformation (CoureNum, CoureName, Credit, Time, Location, Teacher)values('" + TextBox1.Text + "', '" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')";
            com.CommandText = querystring;
            com.Connection = con;
            try
            {
                con.Open();
                com.ExecuteNonQuery();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "ButtonClickScript", "alert('添加成功！')", true);
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
    protected void Button2_Click(object sender, EventArgs e)//删除课程按钮
    {
        string ConnectionString = "Integrated Security = True;Data Source = .;Initial Catalog = Student Registration System;";
        using (SqlConnection con = new SqlConnection(ConnectionString))
        {
            SqlCommand com = new SqlCommand();
            string querystring = "delete from CoureInformation where CoureNum = '" + TextBox1.Text + "'";
            com.CommandText = querystring;
            com.Connection = con;
            try
            {
                con.Open();
                com.ExecuteNonQuery();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "ButtonClickScript", "alert('删除成功！')", true);
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
    protected void Operated(string querystring)//数据库操作函数
    {
        string ConnectionString = "Integrated Security = True;Data Source = .;Initial Catalog = Student Registration System;";
        using (SqlConnection con = new SqlConnection(ConnectionString))
        {
            SqlCommand com = new SqlCommand();
            com.CommandText = querystring;
            com.Connection = con;
            try
            {
                con.Open();
                com.ExecuteNonQuery();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "ButtonClickScript", "alert('操作成功！')", true);
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
    protected void Button3_Click(object sender, EventArgs e)//修改课程按钮
    {
        if(DropDownList1.SelectedValue == "课程号")
        {
            string querystring = "update CoureInformation set CoureNum = '" + TextBox1.Text + "' where Teacher = '" + TextBox6.Text + "'";
            Operated(querystring);
        }
        else if (DropDownList1.SelectedValue == "课程名")
        {
            string querystring = "update CoureInformation set CoureName = '" + TextBox2.Text + "' where Teacher = '" + TextBox6.Text + "'";
            Operated(querystring);
        }
        else if (DropDownList1.SelectedValue == "学分")
        {
            string querystring = "update CoureInformation set Credit = '" + TextBox3.Text + "' where Teacher = '" + TextBox6.Text + "'";
            Operated(querystring);
        }
        else if (DropDownList1.SelectedValue == "时间")
        {
            string querystring = "update CoureInformation set Time = '" + TextBox4.Text + "' where Teacher = '" + TextBox6.Text + "'";
            Operated(querystring);
        }
        else if (DropDownList1.SelectedValue == "地点")
        {
            string querystring = "update CoureInformation set Location = '" + TextBox5.Text + "' where Teacher = '" + TextBox6.Text + "'";
            Operated(querystring);
        }
        else if (DropDownList1.SelectedValue == "教师")
        {
            string querystring = "update CoureInformation set Teacher = '" + TextBox6.Text + "' where CoureNum = '" + TextBox1.Text + "'";
            Operated(querystring);
        }
    }
    private void ConnectionDatabase(string Commstr, DataBoundControl dbctrl)
    {
        string ConnectionString = "Integrated Security = True;Data Source = .;Initial Catalog = Student Registration System;";
        SqlDataAdapter MyDataAdapter = new SqlDataAdapter(Commstr, ConnectionString);
        DataSet MyDataSet = new DataSet();
        MyDataAdapter.Fill(MyDataSet);
        dbctrl.DataSource = MyDataSet;
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string str = RadioButtonList1.SelectedValue;
        string CommandString = "select * from CoureInformation where Teacher='" + str + "'";
        ConnectionDatabase(CommandString, GridView1);
        GridView1.DataBind();
    }
    protected void Button4_Click(object sender, EventArgs e)//返回前页面按钮
    {
        Response.Redirect("Admin.aspx");
    }
    
    
    
    
    
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "课程号")
        {
            TextBox1.Enabled = true;
            TextBox2.Enabled = false;
            TextBox3.Enabled = false;
            TextBox4.Enabled = false;
            TextBox5.Enabled = false;
        }
        if (DropDownList1.SelectedValue == "课程名")
        {
            TextBox1.Enabled = false;
            TextBox2.Enabled = true;
            TextBox3.Enabled = false;
            TextBox4.Enabled = false;
            TextBox5.Enabled = false;
        }
        if (DropDownList1.SelectedValue == "学分")
        {
            TextBox1.Enabled = false;
            TextBox2.Enabled = false;
            TextBox3.Enabled = true;
            TextBox4.Enabled = false;
            TextBox5.Enabled = false;
        }
        if (DropDownList1.SelectedValue == "时间")
        {
            TextBox1.Enabled = false;
            TextBox2.Enabled = false;
            TextBox3.Enabled = false;
            TextBox4.Enabled = true;
            TextBox5.Enabled = false;
        }
        if (DropDownList1.SelectedValue == "地点")
        {
            TextBox1.Enabled = false;
            TextBox2.Enabled = false;
            TextBox3.Enabled = false;
            TextBox4.Enabled = false;
            TextBox5.Enabled = true;
        }
        if (DropDownList1.SelectedValue == "教师")
        {
            TextBox1.Enabled = true;
            TextBox2.Enabled = false;
            TextBox3.Enabled = false;
            TextBox4.Enabled = false;
            TextBox5.Enabled = false;
        }
    }
}