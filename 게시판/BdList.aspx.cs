using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 게시판_BdList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["USER_ID"] == null)
        {


            Response.Write("<script type='text/javascript'>alert('로그인후 하세요.');self.location='../로그인.aspx'; </script>");

        }
    }
    public string GetShowUrl(object passID)
    {
        return "BdShow.aspx?id="+passID;
    }
    public string GetReplyIcon(object passgroupDepth)
    {
        int depth = (int)passgroupDepth;
        if (depth == 0)
            return "";

        string shtml = "";

        for(int i=0;i<depth;i++)
        {
            shtml += "&nbsp; &nbsp; &nbsp; &nbsp;";

        }
        return shtml;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("BdWrite.aspx");
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        Response.Redirect("BdWrite.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("BdWrite.aspx");
    }
}