using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
            if (Session["USER_ID"] != null)
            {
                Label3.Text = "로그인:환영합니다&nbsp" + Session["USER_ID"].ToString()+"님";
                loging.Visible = false;
                logout1.Visible = true;
            }
            else
            {
                Label3.Text = "";
                loging.Visible = true;
                logout1.Visible = false;
            }
        
       
        
            
    }
    protected void logout1_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        

        Response.Redirect("~/home.aspx");
        
    }
}
