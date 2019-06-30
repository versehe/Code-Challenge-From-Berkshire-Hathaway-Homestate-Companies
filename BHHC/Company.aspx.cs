using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Serialization;

namespace BHHC
{
    public partial class Company : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Page Initialization
            // By default, Market UI Section show 2017 data
            if (!Page.IsPostBack)
            {
                //find all available years and bind into dropdownlist
                var YearList = Services.RankManager.GetYearList();
                DropDownListYear.DataSource = YearList;
                DropDownListYear.DataBind();

                // by default, bind 2017 data to gridview
                BindDataToGridView(2017);
                // by default, bind 2017 data to visualization
                ImageMarketShare.ImageUrl = "~/JsonData/2017 market share.PNG";
            }
        }

        // Partially postback update panel
        protected void DropDownListYear_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Bind datasource by selected year
            int selectedYear = int.Parse(DropDownListYear.SelectedValue);
            BindDataToGridView(selectedYear);
            // Bind visualization by selected year
            string ImgURL = "~/JsonData/"+selectedYear + " market share.PNG";
            ImageMarketShare.ImageUrl = ImgURL;


        }
        // single function to bind data into gridview
        private void BindDataToGridView ( int year)
        {
            var CompanyInfo = Services.RankManager.GetCompanyInfo(year);

            // save a copy of data object into JSON file, this file will be called by D3.JS in future
            var serializer = new JavaScriptSerializer();
            var serializedResult = serializer.Serialize(CompanyInfo);
            System.IO.File.WriteAllText(Server.MapPath("~/JsonData/jsondata.json"), serializedResult);

            GridViewCompanyInfo.DataSource = CompanyInfo;
            GridViewCompanyInfo.DataBind();
        }
    }
}