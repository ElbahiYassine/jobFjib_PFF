using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobFjib_Empty
{
    public partial class mainLayout : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["idUser"]==null)
            {
                liBtns.Visible = true;
                dash.Visible = false;
            }
            else
            {
                liBtns.Visible = false;
                dash.Visible = true;
                //if (Session["UserType"].ToString()=="candidat")
                //{
                //    lbl_Bien.Text = "bienvenu : " + Session["NomCandidat"].ToString();
                //}
                //else if (Session["UserType"].ToString() == "entreprise")
                //{
                //    lbl_Bien.Text = "bienvenu : " + Session["NomEntreprises"].ToString();
                //}

            }
            
        }

        protected void deconnecter_ServerClick(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("/Home.aspx");
        }
    }
}