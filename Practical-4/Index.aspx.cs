using System;
using System.Collections.Generic;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical_4
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
              
                List<string> selectedEvents = new List<string>();
                foreach (ListItem item in cblEvent.Items)
                {
                    if (item.Selected)
                    {
                        selectedEvents.Add(item.Text);
                    }
                }
                string events = selectedEvents.Count > 0 ? string.Join(", ", selectedEvents) : "None";

               
                string gender = rblGender.SelectedItem != null ? rblGender.SelectedItem.Text : "Not Specified";
                string branch = ddlBranch.SelectedItem != null ? ddlBranch.SelectedItem.Text : "Not Selected";
                string imageName = fuImage.HasFile ? fuImage.FileName : "No Image Selected";

                lblMessage.Text = "<div style='text-align: left; display: inline-block; border-top: 1px solid #ccc; padding-top: 15px;'>" +
                                  "<h3>Registration Successfully Completed:</h3>" +
                                  "<b>Name:</b> " + txtName.Text.Trim() + "<br/>" +
                                  "<b>GR No:</b> " + txtGRNo.Text.Trim() + "<br/>" +
                                  "<b>Email:</b> " + txtEmail.Text.Trim() + "<br/>" +
                                  "<b>Age:</b> " + txtAge.Text.Trim() + "<br/>" +
                                  "<b>Gender:</b> " + gender + "<br/>" +
                                  "<b>Branch:</b> " + branch + "<br/>" +
                                  "<b>Events:</b> " + events + "<br/>" +
                                  "<b>Date:</b> " + txtDate.Text + "<br/>" +
                                  "<b>Image:</b> " + imageName +
                                  "</div>";
            }
        }
    }
}