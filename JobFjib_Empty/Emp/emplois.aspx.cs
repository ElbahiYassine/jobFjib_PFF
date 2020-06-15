using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobFjib_Empty.Emp
{
    public partial class emplois : System.Web.UI.Page
    {
        jobContextDataContext db = new jobContextDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            var domains = from x in db.Domaines select x;

            dlDomain.DataTextField = "Designation";
            dlDomain.DataValueField = "IdDomaine";
            dlDomain.DataSource = domains;
            dlDomain.DataBind();

            dlDomain.Items.Insert(0, new ListItem("-Domain--", "0"));
        }
    }
}