using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 게시판_BdWrite : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        nameTextBox.Text = Session["USER_ID"].ToString();   
    }
    private void Reply()
    {
        replySqlDataSource.Update();
        int groupid = int.Parse(Request["groupID"]);
        int depth = int.Parse(Request["groupDepth"]);
        int pos = int.Parse(Request["groupPosition"]);

       

        depth++;
        pos++;
        groupDepthTextBox.Text = depth.ToString();
        groupPositionTextBox.Text = pos.ToString();
        replySqlDataSource.Insert();
    }
    protected void writeImageButton_Click(object sender, EventArgs e)
    {
            if (Page.IsValid)
            {
                if (Request["mode"] == "Reply")
                {
                    Reply();
                }
                else
                {
                    New();
                }
                Response.Redirect("BdList.aspx");
            }
            else
            {

            }
        
       
    }
    private void New()
    {
        newSqlDataSource.Insert();
        newSqlDataSource.Update();
        newSqlDataSource.DataBind();
    }
    protected void listImageButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("BdList.aspx");
    }
}