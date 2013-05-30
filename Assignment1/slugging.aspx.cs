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
            if (validateAllHitsCompareAtBats())
            {
                labelCompareHitsToAtBats.Visible = false;
                double singles = Convert.ToDouble(txtSingles.Text);
                double doubles = Convert.ToDouble(txtDoubles.Text) * 2;
                double triples = Convert.ToDouble(txtTriples.Text) * 3;
                double homeruns = Convert.ToDouble(txtHomeRuns.Text) * 4;
                double atbats = Convert.ToDouble(txtAtBats.Text);
                lblSluggingResult.Text = "Slugging: " + Math.Round(((singles + doubles + triples + homeruns) / atbats), 3);
            }
            else
            {
                labelCompareHitsToAtBats.Visible = true;
                lblSluggingResult.Text = "";
            }
        }

        public bool validateAllHitsCompareAtBats()
        {
            return (Convert.ToDouble(txtSingles.Text) + Convert.ToDouble(txtDoubles.Text) + Convert.ToDouble(txtTriples.Text) + Convert.ToDouble(txtHomeRuns.Text)) <= Convert.ToDouble(txtAtBats.Text);
        }
    }
}