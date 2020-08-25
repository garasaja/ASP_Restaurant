using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 앨범_albumlist : System.Web.UI.Page
{
    public string GetNavigateUrl(object obj)
    {
        int imgid = (int)obj;
        string nu = string.Format("AlbumShow.aspx?imageid={0}", imgid);
        return nu;

    }
    public string GetImageUrl(object obj)
    {
        string fn = (string)obj;
        string imageurl = "~/upload/photo/" + fn;
        return imageurl;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["USER_ID"] == null)
        {


            Response.Write("<script type='text/javascript'>alert('로그인후 하세요.');self.location='../로그인.aspx'; </script>");

        }
    }
    protected void addButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("photoadd.aspx");
        
    }

   
}
