using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;

public partial class 앨범_albumshow : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public string GetImageUrl(object obj)
    {
        string fn = obj.ToString();
        string imageurl = "~/upload/photo/" + fn;
        return imageurl;
    }


    
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("albumlist.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("photoadd.aspx");
    }
    
    protected void Button3_Click(object sender, EventArgs e)
    {
        imageShowSqlDataSource.Delete();
        Response.Write("<script type='text/javascript'>self.location='../앨범/albumlist.aspx'; </script>");
        

    }
}