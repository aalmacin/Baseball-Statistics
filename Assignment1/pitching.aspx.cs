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
      Purpose: Get the earned run average of a pitcher.
    */
    public partial class pitching : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        /*
          Method that listens to click events
          Purpose: Calculate the era
        */
        protected void btnCalculatePitching_Click(object sender, EventArgs e)
        {
            // Set the text of the pitching era result to the era ((earnedRuns/atBats) * 9)
            lblPitchingResult.Text = "ERA: " + Math.Round((Convert.ToDouble(txtEarnedRuns.Text) / Convert.ToDouble(txtInnings.Text)) * 9, 3);
        }
    }
}
