using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;





public partial class 앨범_photoadd : System.Web.UI.Page
{
    public string UpdateMethod { get; set; }
   
    protected void btnAdd_Click(object sender, EventArgs e)
    {
       
            string fileName;
            int fileSize;

            if (photoFile.PostedFile.FileName.Length > 0)
            {
                fileSize = photoFile.PostedFile.ContentLength;

                txtFileSize.Visible = true;
                txtFileName.Visible = true;
                txtFileSize.Text = fileSize.ToString();
                fileName = SaveFile();

                photoAddSqlDataSource.Insert();
                txtFileSize.Visible = false;
                txtFileName.Visible = false;
                Response.Redirect("albumlist.aspx");
            }
       
    }

        private string SaveFile()
        {
            string fileName=new FileInfo(photoFile.PostedFile.FileName).Name;
            FileInfo myfile=new FileInfo(Request.MapPath("~/upload/photo/")+fileName);

            if(myfile.Exists)
            {
                int fNun=0;
                string fName=myfile.Name.Substring(0,(myfile.Name.Length-myfile.Extension.Length));
                string fExtension = myfile.Extension;

                do
                {
                    fNun++;
                    fileName=fName+"_"+fNun+fExtension;
                    myfile=new FileInfo (Request.MapPath("~/upload/photo/")+fileName);

                }while(myfile.Exists);

                
            }
            photoFile.PostedFile.SaveAs(myfile.FullName);
            txtFileName.Text=fileName;
            return myfile.Name;
        }







        protected void btnList_Click1(object sender, EventArgs e)
        {
            Response.Redirect("albumlist.aspx");
        }
}