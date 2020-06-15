﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace JobFjib_Empty
{
    public partial class CInfosC : System.Web.UI.Page
    {
        jobContextDataContext db = new jobContextDataContext();

        public void RemplirCombo()
        {
            var diploms = from x in db.Diplomes select x;

            var niveau = from y in db.NiveauEtudes select y;

            dlDiplom.DataSource = diploms;
            dlDiplom.DataValueField = "IdDiplome";
            dlDiplom.DataTextField = "Designation";
            dlDiplom.DataBind();

            dlNiveau.DataSource = niveau;
            dlNiveau.DataTextField = "designation";
            dlNiveau.DataValueField = "IdNiveau";
            dlNiveau.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            RemplirCombo();
        }

        protected void btnComp_Click(object sender, EventArgs e)
        {

            int id = int.Parse(Session["idUser"].ToString());

            Candidat cd = db.Candidats.SingleOrDefault(x => x.candidatId == id);


            if (photoUp.PostedFile != null)
            {
                string strPath = Path.GetExtension(photoUp.PostedFile.FileName);
                strPath = strPath.ToLower();
                if (strPath != ".jpg" && strPath != ".jpeg" && strPath != ".gif" && strPath != ".png")
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "ImageAlert", "ImageInvalide()", true);
                }
                else
                {
                    string filup = Path.GetFileName(photoUp.PostedFile.FileName);
                    photoUp.SaveAs(Server.MapPath("/UserImages/") + filup);
                    cd.photo =  filup;
                }
            }
            if (cvUP.PostedFile != null)
            {
                string strPath2 = Path.GetExtension(cvUP.PostedFile.FileName);

                if (strPath2 != ".pdf" && strPath2 != ".doc" && strPath2 != ".docx" && strPath2 != ".txt" && strPath2 != ".ppt")
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "CVAlert", "CVInvalide()", true);
                }
                else
                {
                    string filup = Path.GetFileName(cvUP.PostedFile.FileName);
                    cvUP.SaveAs(Server.MapPath("/CandidatCV/") + filup);
                    cd.cv = "/CandidatCV/" + filup;
                }
            }
            
            cd.nom = txtNom.Text;
            cd.prenom = txtPrenom.Text;
            cd.dateNaissance = DateTime.Parse(txtDate.Text);

            if (rbHomme.Checked == true)
            {
                cd.genre = rbHomme.Value;
            }
            else if (rbFemme.Checked == true)
            {
                cd.genre = rbFemme.Value;
            }
            cd.ville = txtVille.Text;
            cd.profil = txtProfil.Text;
            cd.experience = int.Parse(txtExpe.Text);
            cd.tel = txtPhone.Text;
            cd.Profession = txtProffesion.Text;
            cd.NiveauEtude_IdNiveau = int.Parse(dlNiveau.SelectedValue);

            db.SubmitChanges();
            Response.Redirect("~/Home.aspx");
    
        }
    }
}









