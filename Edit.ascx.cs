/*
' Copyright (c) 2016  Jitinder
'  All rights reserved.
' 
' THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED
' TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
' THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF
' CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
' DEALINGS IN THE SOFTWARE.
' 
*/

using System;
using DotNetNuke.Entities.Users;
using DotNetNuke.Modules.MyDNN.Components;
using DotNetNuke.Services.Exceptions;

namespace DotNetNuke.Modules.MyDNN
{
    /// -----------------------------------------------
    /// <summary>   
    /// The Edit class is used to manage content
    /// 
    /// Typically your edit control would be used to create new content, or edit existing content within your module.
    /// The ControlKey for this control is "Edit", and is defined in the manifest (.dnn) file.
    /// 
    /// Because the control inherits from MyDNNModuleBase you have access to any custom properties
    /// defined there, as well as properties from DNN such as PortalId, ModuleId, TabId, UserId and many more.
    /// 
    /// </summary>
    /// ----------------------------------------------
    public partial class Edit : MyDNNModuleBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //Implement your edit logic for your module
                if (!Page.IsPostBack)
                {
                    //get a list of users to assign the user to the Object
                    //check if we have an ID passed in via a querystring parameter, if so, load that item to edit.
                    //ItemId is defined in the ItemModuleBase.cs file
                    if (ItemId > 0)
                    {
                        var tc = new ItemController();

                        var t = tc.GetItem(ItemId, ModuleId);
                        txtReadMore.ReadOnly = true;
                        CheckBoxReadMore.Checked = false;
                        if (t != null)
                        {
                            ddlIcon.SelectedIndex = t.IconId;
                            txtTitle.Text = t.ItemTitle;
                            txtContent.Text = t.ItemContent;
                            if (t.ItemReadMore == "")
                            {
                                txtReadMore.ReadOnly = true;
                                CheckBoxReadMore.Checked = false;
                            }
                            else
                            {
                                txtReadMore.ReadOnly = false;
                                CheckBoxReadMore.Checked = true;
                            }
                            txtReadMore.Text = t.ItemReadMore;
                            ddlIcon.Items.FindByValue(t.IconId.ToString()).Selected = true;
                        }
                    }
                }
            }
            catch (Exception exc) //Module failed to load
            {
                Exceptions.ProcessModuleLoadException(this, exc);
            }
        }


        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            var t = new Item();
            var tc = new ItemController();
            string readmore = "";
            if (CheckBoxReadMore.Checked == false)
            {
                readmore = "";
            }
            else {
                readmore = txtReadMore.Text.Trim();
            }
            if (ItemId > 0)
            {
                t = tc.GetItem(ItemId, ModuleId);
                t.IconId = Convert.ToInt32(ddlIcon.SelectedValue);
                t.ItemTitle = txtTitle.Text.Trim();
                t.ItemContent = txtContent.Text.Trim();
                t.ItemReadMore = readmore;
                t.LastModifiedByUserId = UserId;
                t.LastModifiedOnDate = DateTime.Now;

            }
            else
            {
                t = new Item()
                {
                    IconId = Convert.ToInt32(ddlIcon.SelectedValue),
                    CreatedByUserId = UserId,
                    CreatedOnDate = DateTime.Now,
                    ItemTitle = txtTitle.Text.Trim(),
                    ItemContent = txtContent.Text.Trim(),
                    ItemReadMore = readmore,
                };
            }

            t.LastModifiedOnDate = DateTime.Now;
            t.LastModifiedByUserId = UserId;
            t.ModuleId = ModuleId;

            if (t.ItemId > 0)
            {
                tc.UpdateItem(t);
            }
            else
            {
                tc.CreateItem(t);
            }
            Response.Redirect(DotNetNuke.Common.Globals.NavigateURL());
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect(DotNetNuke.Common.Globals.NavigateURL());
        }

        protected void CheckBoxReadMore_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBoxReadMore.Checked == true)
            {
                txtReadMore.ReadOnly = false;
            }
            else {
                txtReadMore.Text = "";
                txtReadMore.ReadOnly = true;
            }

        }
    }
}
