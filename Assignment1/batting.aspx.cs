using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment1
{
    public partial class _Batting : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            if (dllStatType.SelectedValue == "Batting Average")
            {
                lblResult.Text = "Batting Average: " + Math.Round(Convert.ToDouble(txtHits.Text) / Convert.ToDouble(txtAtBats.Text), 3);
            }
            else
            {
                lblResult.Text = "On-Base %: " + Math.Round((Convert.ToDouble(txtHits.Text) + Convert.ToDouble(txtWalks.Text) + Convert.ToDouble(txtHitByPitch.Text)) / Convert.ToDouble(txtAtBats.Text), 3);
            }
        }
    }
}