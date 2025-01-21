using System;
using System.Web.UI;
using System.Xml.Linq;

namespace ClassDemo
{
    public partial class Registration : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Optional: Add code here to handle page load if needed
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Collect values from input fields
            string name = txtName.Text.Trim();
            string sem = txtSem.Text.Trim();
            string branch = txtBranch.Text.Trim();
            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text;
            string confirmPassword = txtConfirmPassword.Text;

            // Validate that all fields are properly filled and passwords match
            if (string.IsNullOrEmpty(name))
            {
                Response.Write("<script>alert('Please enter your Name.');</script>");
                return;
            }

            if (password != confirmPassword)
            {
                Response.Write("<script>alert('Passwords do not match. Please try again.');</script>");
                return;
            }

            // Display collected information (In practice, save this to a database)
            Response.Write($"<script>alert('Registration Successful!\\nName: {name}\\nSemester: {sem}\\nBranch: {branch}\\nEmail: {email}');</script>");
        }
    }
}
