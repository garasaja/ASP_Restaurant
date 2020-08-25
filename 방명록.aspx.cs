using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;


public partial class 방명록 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        
            
        
        


    }
    protected void Button2_Click(object sender, EventArgs e)
    {



        if (Page.IsValid)
        {
            string fn = Server.MapPath("~/App_Data/XMLFile.xml");
            XmlDocument doc = new XmlDocument();
            doc.Load(fn);

            XmlNode root = doc.DocumentElement;
            XmlNode guestnod = doc.CreateElement("guest");
            root.AppendChild(guestnod);

            XmlAttribute name;
            name = doc.CreateAttribute("name");
            name.Value = TextBox1.Text;
            guestnod.Attributes.Append(name);

            XmlAttribute email;
            email = doc.CreateAttribute("email");
            email.Value = TextBox2.Text;
            guestnod.Attributes.Append(email);

            XmlAttribute date;
            date = doc.CreateAttribute("date");
            date.Value = DateTime.Now.ToString();
            guestnod.Attributes.Append(date);

            XmlAttribute title;
            title = doc.CreateAttribute("title");
            title.Value = TextBox3.Text;
            guestnod.Attributes.Append(title);

            string sbody = TextBox4.Text;
            sbody = sbody.Replace("\n", "<br>");

            XmlAttribute body;
            body = doc.CreateAttribute("body");
            body.Value = sbody;
            guestnod.Attributes.Append(body);

            doc.Save(fn);
            doc = null;

            Response.Redirect("방명록.aspx");
        }
        
        
      


        
        
    }
}