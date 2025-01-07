using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace b_lecture
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)



        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                try
                {
                    string filename = FileUpload1.FileName;
                    string path = Server.MapPath("~/FILES/") + filename;

                    // Save the file
                    FileUpload1.SaveAs(path);

                    // Display success message
                    Label1.Text = "File Uploaded Successfully!";
                }
                catch (Exception ex)
                {
                    // Display an error message
                    Label1.Text = "Error: " + ex.Message;
                }
            }
           
        }
    }
}



