using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment1
{
    /*
      Name: Aldrin Jerome Almacin
      Purpose: Get the slugging of a baseball player
    */
    public partial class slugging : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        /*
          Method that listens to click events
          Purpose: Calculate the slugging of the baseball player
        */
        protected void btnCalculateSlugging_Click(object sender, EventArgs e)
        {
            // If valid values entered
            if (validateAllHitsCompareAtBats())
            {
                labelCompareHitsToAtBats.Visible = false;
                double singles = Convert.ToDouble(txtSingles.Text);
                double doubles = Convert.ToDouble(txtDoubles.Text) * 2;
                double triples = Convert.ToDouble(txtTriples.Text) * 3;
                double homeruns = Convert.ToDouble(txtHomeRuns.Text) * 4;
                double atbats = Convert.ToDouble(txtAtBats.Text);
                // Show the slugging results
                lblSluggingResult.Text = "Slugging: " + Math.Round(((singles + doubles + triples + homeruns) / atbats), 3);
            }
            else
            {
                // Show the label that says that the atBat must be greater than all the values combined.
                labelCompareHitsToAtBats.Visible = true;
                lblSluggingResult.Text = "";
            }
        }

        /*
          Purpose: Validates the values entered by the user. Check if the atBat is greater than all the kind of hits combined
        */
        public bool validateAllHitsCompareAtBats()
        {
            return (Convert.ToDouble(txtSingles.Text) + Convert.ToDouble(txtDoubles.Text) + Convert.ToDouble(txtTriples.Text) + Convert.ToDouble(txtHomeRuns.Text)) <= Convert.ToDouble(txtAtBats.Text);
        }
    }
}
