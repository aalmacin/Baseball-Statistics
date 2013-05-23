using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment1
{
    public partial class slugging : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalculateSlugging_Click(object sender, EventArgs e)
        {
            lblSluggingResult.Text = "Slugging: " + Math.Round(((Convert.ToDecimal(txtSingles.Text)) + (Convert.ToDecimal(txtDoubles.Text) * 2) + (Convert.ToDecimal(txtTriples.Text) * 3)) / (Convert.ToDecimal(txtAtBats.Text)), 3);
        }
    }
}