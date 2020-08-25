using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class 회원가입 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button7_Click(object sender, EventArgs e)
    {


        if (Page.IsValid)
        {

            string connectionString = "server=jongsu-PC;Integrated Security=true;database=qwe";
            SqlConnection dbCon = new SqlConnection(connectionString);

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = dbCon;
            cmd.CommandText = "INSERT INTO login (id,password) values('" + TextBox11.Text + "','" + TextBox12.Text + "') INSERT INTO member (id,name,homepoint,phonnumber,email) values('" + TextBox11.Text + "','" + TextBox10.Text + "','" + TextBox14.Text + "','" + TextBox15.Text + "','" + TextBox16.Text + "')";


            dbCon.Open();
            int rowsaffected = cmd.ExecuteNonQuery();
            dbCon.Close();
            Response.Write("<script type='text/javascript'>alert('가입을 축하드립니다.');self.location='./home.aspx';</script>");
            
        }
     

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("home.aspx");
    }
}