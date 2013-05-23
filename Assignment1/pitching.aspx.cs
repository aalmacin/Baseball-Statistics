using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment1
{
    public partial class pitching : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalculatePitching_Click(object sender, EventArgs e)
        {
            lblPitchingResult.Text = "ERA: " + Math.Round((Convert.ToDouble(txtEarnedRuns.Text) / Convert.ToDouble(txtInnings.Text)) * 9, 3);
        }
    }
}