using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class 로그인 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        string connectionString = "server=jongsu-PC;Integrated Security=true;database=qwe";
        SqlConnection dbCon = new SqlConnection(connectionString);

        SqlCommand cmd= new SqlCommand();
        cmd.Connection=dbCon;
        cmd.CommandText = "select *from login where id='" + TextBox3.Text + "' and password='"+TextBox4.Text+"'";
        
        dbCon.Open();
        SqlDataReader reader = cmd.ExecuteReader();



        if(!reader.Read())
        {
            Response.Write("<script type='text/javascript'>alert('로그인실패')</script>");
            
        }
        else
        {
            
        

            //세션 추가
            Session.Add("USER_ID", TextBox3.Text);
            
            Session.Add("USER_PWD", TextBox4.Text);
            Session.Timeout = 1;
            
          
           
            Response.Redirect("home.aspx");
        }
        dbCon.Close();

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        string connectionString = "server=jongsu-PC;Integrated Security=true;database=qwe";
        SqlConnection dbCon = new SqlConnection(connectionString);

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = dbCon;
        cmd.CommandText = "select *from login where id='" + TextBox3.Text + "' and password='" + TextBox4.Text + "'";

        dbCon.Open();
        SqlDataReader reader = cmd.ExecuteReader();



        if (!reader.Read())
        {
            Response.Write("<script type='text/javascript'>alert('로그인실패')</script>");

        }
        else
        {



            //세션 추가
            Session.Add("USER_ID", TextBox3.Text);

            Session.Add("USER_PWD", TextBox4.Text);
            Session.Timeout = 1;



            Response.Redirect("home.aspx");
        }
        dbCon.Close();
    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        string connectionString = "server=jongsu-PC;Integrated Security=true;database=qwe";
        SqlConnection dbCon = new SqlConnection(connectionString);

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = dbCon;
        cmd.CommandText = "select *from login where id='" + TextBox3.Text + "' and password='" + TextBox4.Text + "'";

        dbCon.Open();
        SqlDataReader reader = cmd.ExecuteReader();



        if (!reader.Read())
        {
            Response.Write("<script type='text/javascript'>alert('로그인실패')</script>");

        }
        else
        {



            //세션 추가
            Session.Add("USER_ID", TextBox3.Text);

            Session.Add("USER_PWD", TextBox4.Text);
            Session.Timeout = 1;



            Response.Redirect("home.aspx");
        }
        dbCon.Close();
    }
}