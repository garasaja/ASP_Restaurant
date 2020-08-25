using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class 아이디찾기 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string connectionString = "server=jongsu-PC;Integrated Security=true;database=qwe";
        SqlConnection dbCon = new SqlConnection(connectionString);

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = dbCon;
        cmd.CommandText = "select *from member where name='" + TextBox1.Text + "' and email='" + TextBox2.Text + "'";

        dbCon.Open();
        SqlDataReader reader = cmd.ExecuteReader();



        if (!reader.Read())
        {
            Response.Write("<script type='text/javascript'>alert('잘못된 정보입니다.')</script>");

        }
        else
        {
            Response.Write("<script type='text/javascript'>alert('" + reader["id"] + "');self.location='./로그인.aspx';</script>");
        }
        dbCon.Close();
    }
}