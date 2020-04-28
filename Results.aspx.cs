using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Results : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["TideData"] != null)
        {
            TideData tideData = (TideData)Session["TideData"];
            txtDatum.Text = tideData.RequestDatum;
            txtLat.Text = tideData.ResponseLat.ToString();
            txtLon.Text = tideData.ResponseLon.ToString();
            txtStation.Text = tideData.Station;
            lstHeightData.DataSource = tideData.Heights;
            lstHeightData.DataBind();
            lstExtreme.DataSource = tideData.Extremes;
            lstExtreme.DataBind();
        }
    }

    protected void btnGoBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}