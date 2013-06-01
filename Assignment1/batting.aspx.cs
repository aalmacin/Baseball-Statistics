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
      Purpose: To get the batting average or On base percentage based on a batter's stats.
    */
    public partial class _Batting : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        /*
          Method that listens to click events
          Purpose: Calculate the batting average or on-base %.
        */
        protected void btnCalculateBatting_Click(object sender, EventArgs e)
        {
            if (dllStatType.SelectedValue == "Batting Average")
            {
                // Set the text of the batting result to the batting average (hits/atBats)
                lblBattingResult.Text = "Batting Average: " + Math.Round(Convert.ToDouble(txtHits.Text) / Convert.ToDouble(txtAtBats.Text), 3);
            }
            else
            {
                // Set the text of the batting result to the on base % ((hits+walks+hitByPitch)/atBats)
                lblBattingResult.Text = "On-Base %: " + Math.Round((Convert.ToDouble(txtHits.Text) + Convert.ToDouble(txtWalks.Text) + Convert.ToDouble(txtHitByPitch.Text)) / Convert.ToDouble(txtAtBats.Text), 3);
            }
        }
    }
}
