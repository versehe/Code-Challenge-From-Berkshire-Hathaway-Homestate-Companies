<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Candidate.aspx.cs" Inherits="BHHC.Candidate" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManagerCandidate" runat="server"></asp:ScriptManager>
    <link rel="stylesheet" href="BHHCstylesheet.css">


    <label>Find me at LindedIn: <a href="https://www.linkedin.com/in/versehe">Click Me</a></label>
    <%-- Use Ajax Tab Container to display my skills in different domains--%>
    <ajaxToolkit:TabContainer ID="TabContainerCandidate" runat="server" ActiveTabIndex="0" CssClass="Tab" >
        <ajaxToolkit:TabPanel runat="server" ID="TabPanelSDE">
            <%-- Tab 1: Show my experience/interests in Software Development --%>
            <HeaderTemplate>Software Engineering</HeaderTemplate>
            <ContentTemplate>
                <h1>Experience</h1>
                <ul>
                    <li>C# Programming Language: 2 years</li>
                    <li>ASP.NET Framework: 2 years</li>
                    <li>JavaScipt: 1 year</li>
                    <P>WEB UI</P>
                    <li>JQuery: 1 year </li>
                    <li>Bootstrap: 1 year</li>
                    <li>Ajax: 2 years </li>
                    <P>Database Access</P>
                    <li>ADO.NET: 2 years </li>
                    <li>Entity Framework: 2 years </li>
                    <P>Source Code Control</P>
                    <li>Team Foundation Server: 1 year </li>
                    <li>Apache Subversion (SVN): 1 year </li>
                </ul>
                <h1>Exicted to Learn</h1>
                <ul>
                    <li>ASP.NET MVC Framework (Model-View-Controller)</li>
                    <li>Dapper</li>
                    <li>Kendo UI</li>
                    <li>REST API</li>
                    <li>.NET Core</li>
                    <li>Entity Framework Core</li>
                    <li>Cloud Service</li>
                </ul>
            </ContentTemplate>
        </ajaxToolkit:TabPanel>
        <%-- Tab 1: Show my experience/interests in Data Management --%>
        <ajaxToolkit:TabPanel ID="TabPanelDS" runat="server">
            <HeaderTemplate>Data Management</HeaderTemplate>
            <ContentTemplate>
                <h1>Experience</h1>
                <ul>
                    <P>Database and ETL</P>
                    <li><a href="https://github.com/versehe/stark-sealing-solutions">MS SQL Server:</a> 4 years</li>
                    <li>SQL Server Reporting Services (SSRS) : 3 years</li>
                    <li>SQL Server Integration Services (SSIS): 1 year</li>
                    <li>Visual Basic Macro: 1 year </li>
                    <P>Business Intelligence</P>
                    <li><a href="https://public.tableau.com/profile/verse.he#!/vizhome/PoliticalVisualizationProjectUpdated/PresidentialElectionResults">Tableau:</a> 2 year</li>
                    <li>MircoStrategy: 1 year </li>
                    <P>Data Science</P>
                    <li ><a href="https://github.com/versehe/Fund-Raising-Prediction---Direct-Marketing-to-PVA-Donors">Python:</a> 1 year </li>
                    <li>RapidMiner: 1 year </li>
                    <li>Other: <a href="https://github.com/versehe/2016_Travelers_UCONN_vs_UMASS_Analytics_Case_Competition">R</a>, SAS... </li>
                </ul>
                <h1>Exicted to Learn</h1>
                <ul>
                    <li>NoSQL Database</li>
                    <li>Big Data Framework</li>
                </ul>
            </ContentTemplate>
        </ajaxToolkit:TabPanel>
        <%-- Tab 1: Show my soft skills --%>
         <ajaxToolkit:TabPanel ID="TabPanelPM" runat="server">
            <HeaderTemplate>Project Management</HeaderTemplate>
            <ContentTemplate>
                <h1>Good at...</h1>
                <ul>
                    <li>Work quickly in a small-team Agile/Waterfall development environment</li>
                    <li>Define Business Questions into Techincal Requests</li>
                    <li>Write clean, understandable, resuable codes</li>
                    <li>Document business process</li>
                </ul>
            </ContentTemplate>
        </ajaxToolkit:TabPanel>
    </ajaxToolkit:TabContainer>
</asp:Content>
