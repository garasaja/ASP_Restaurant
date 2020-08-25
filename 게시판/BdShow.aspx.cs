using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 게시판_BdShow : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        hitupdateSqlDataSource.Update();
    }
    public string GetReplyUrl(Object obj1, Object obj2, object obj3, object obj4)
    {
        return "BdWrite.aspx?mode=Reply&id=" + obj1 + "&groupID=" + obj2 + "&groupDepth=" + obj3 + "&groupPostion=" + obj4;
    }
    protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
    {
        
    }
   
    protected void saveImageButton_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            memoSqlDataSource.Insert();
        }
    }
   
    protected void listImageButton_Click_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("BdList.aspx");
    }
    
    protected void DeleteButton_Click(object sender, EventArgs e)
    {

        memoSqlDataSource.Delete();


        Response.Write("<script type='text/javascript'>self.location='../게시판/BdList.aspx'; </script>");
       
    }
}