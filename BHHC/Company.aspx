<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Company.aspx.cs" Inherits="BHHC.Company" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="BHHCstylesheet.css">
    <%-- Import Web UI Bootstrap and Ajax --%>
    <script src="scripts/bootstrap.min.js"></script>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <%-- Import REST API for Facebook --%>
    <div id="fb-root"></div>
    <script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.3"></script>

    <%-- Industry Overview --%>
    <h1>Industry</h1>
    <div class="row">
        <label class="col-10">Workers' compensation is a publicly sponsored system that pays monetary benefits to workers who become injured or disabled in the course of their employment.</label>
        <label class="col-10">As of the year of 2017, the total direct written premiums are around 45.05 billion.</label>
    </div>
     <%-- Market Place UI --%>
     <%-- This section is used for demonstrate how data flow from database to presentation layer --%>
     <h1>Market Place</h1>
     <asp:UpdatePanel ID="UpdatePanelMarketUI" runat="server">
        <ContentTemplate>
            <div class="col-4">
                <p>Select Year: 
                <asp:DropDownList ID="DropDownListYear" runat="server" OnSelectedIndexChanged="DropDownListYear_SelectedIndexChanged" AutoPostBack="true" class="form-control input-lg"> 
                </asp:DropDownList>
                </p>
             </div>
            <div class="row">
                <div class="col-md-6 col-sm-6">
                    <asp:GridView ID="GridViewCompanyInfo" runat="server" AutoGenerateColumns="False" class="table table-striped">
                        <Columns>
                             <asp:BoundField DataField="Rank" HeaderText="Industry Rank" ReadOnly="True" SortExpression="Rank" />
                             <asp:BoundField DataField="Insurer" HeaderText="Company Name" ReadOnly="True" SortExpression="Insurer" />
                             <asp:BoundField DataField="Premium" HeaderText="Premium" ReadOnly="True" SortExpression="Premium" />
                             <asp:BoundField DataField="MarketShare" HeaderText="MarketShare" ReadOnly="True" SortExpression="MarketShare" />
                        </Columns>
                    </asp:GridView>
                </div>    
                <div class="col-md-6 col-sm-4">
                  <asp:Image ID="ImageMarketShare" runat="server" />
                  <label>*Data released by National Association of Insurance Commissioners (NAIC).</label>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <%-- Demonstrate Ajax Patial Postback --%>
    <h1>Benefits</h1>
    <div class="checkbox">
        <asp:CheckBoxList ID="CheckBoxListBenefit" runat="server" >
            <asp:ListItem Selected="True"> Fantastic growth and advancement opportunities</asp:ListItem>
            <asp:ListItem Selected="True"> Relaxed Atmosphere with Casual Dress Code</asp:ListItem>
            <asp:ListItem Selected="True"> Tuition Assistance Reimbursement</asp:ListItem>
            <asp:ListItem Selected="True"> Discounts across companies such as GEICO, See’s Candies, etc.</asp:ListItem>
            <asp:ListItem Selected="True"> Excellent Benefits (Medical, Dental, Vision, 401k, etc)</asp:ListItem>
        </asp:CheckBoxList>
    </div>
    <%-- Embed REST API --%>
    <h1>Social Network</h1>
    <div class="row">
        <%-- Embed Twitter Timeline --%>
        <div class="col-md-6" >
            <a class="twitter-timeline" data-height="500" data-theme="light" data-link-color="#19CF86" href="https://twitter.com/WeAreBHHC?ref_src=twsrc%5Etfw">Tweets by WeAreBHHC</a> 
            <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
        </div>
        <%-- Embed Facebook Timeline --%>
        <div class="col-md-6">
            <div class="fb-page" data-height="500" data-href="https://www.facebook.com/Berkshire-Hathaway-Homestate-Companies-102556566579862/" data-tabs="timeline" data-width="" data-height="" data-small-header="true" data-adapt-container-width="true" data-hide-cover="true" data-show-facepile="false">
                <blockquote cite="https://www.facebook.com/Berkshire-Hathaway-Homestate-Companies-102556566579862/" class="fb-xfbml-parse-ignore">
                    <a href="https://www.facebook.com/Berkshire-Hathaway-Homestate-Companies-102556566579862/">Berkshire Hathaway Homestate Companies
                    </a>
                 </blockquote>
            </div>
        </div>
     </div>
    
</asp:Content>
