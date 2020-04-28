<%@ Page Title="Tide Table Information" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %></h1>
            </hgroup>

        </div>
    </section>
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="main">
        <div class="main-content">
            <div class="container-fluid">
                <h3 class="page-title">Tide Height Calculations</h3>
                <div class="row">
                    <div class="col-md-12">

                        <div class="panel">
                            <div class="panel-heading">
                                <h3 class="panel-title"></h3>
                            </div>
                            <div class="panel-body">
                                <div class="form-group">
                                    <label for="txtLat">Latitude</label>
                                    <asp:TextBox runat="server" ID="txtLat" CssClass="form-control" placeHolder="Latitude (in decimal degrees) of the location for which to return the tidal data"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="txtLat">Longitude</label>
                                    <asp:TextBox runat="server" ID="txtLon" CssClass="form-control" placeHolder="Longitude (in decimal degrees) of the location for which to return the tidal data"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="txtLat">Heights</label>
                                    <asp:TextBox runat="server" ID="txtHeight" CssClass="form-control" placeHolder="Heights will be returned from 6 hours ago to 42 hours in the future in 30 minutes intervals"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="txtLat">Length</label>
                                    <asp:TextBox runat="server" ID="txtLength" CssClass="form-control" placeHolder="Length (in seconds) of the interval to retrieve the tidal heights or extremes for."></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="txtLat">Step</label>
                                    <asp:TextBox runat="server" ID="txtSteps" CssClass="form-control" placeHolder="Step size (in seconds) to retrieve the tidal heights for"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="txtLat">Extremes</label>
                                    <asp:TextBox runat="server" ID="txtExtremes" CssClass="form-control" placeHolder="If this parameter is present the low and high tides will be returned"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="txtLat">Datum</label>
                                    <asp:DropDownList runat="server" ID="drpDatum" CssClass="form-control">
                                        <asp:ListItem Value="HAT">HAT = Highest Astronomical Tide</asp:ListItem>
                                        <asp:ListItem Value="MHHWS">MHHWS = Mean Higher High Water Spring</asp:ListItem>
                                        <asp:ListItem Value="MHWS">MHWS = Mean High Water Spring</asp:ListItem>
                                        <asp:ListItem Value="MLHWS">MLHWS = Mean Lower High Water Spring</asp:ListItem>
                                        <asp:ListItem Value="MHHW">MHHW = Mean Higher High Water</asp:ListItem>
                                        <asp:ListItem Value="MHW">MHW = Mean High Water</asp:ListItem>
                                        <asp:ListItem Value="MLHW">MLHW = Mean Lower High Water</asp:ListItem>
                                        <asp:ListItem Value="MHHWN">MHHWN = Mean Higher High Water Neaps</asp:ListItem>
                                        <asp:ListItem Value="MHWN">MHWN = Mean High Water Neaps</asp:ListItem>
                                        <asp:ListItem Value="MLHWN">MLHWN = Mean Lower High Water Neaps</asp:ListItem>
                                        <asp:ListItem Value="MTL">MTL = Mean Tide Level</asp:ListItem>
                                        <asp:ListItem Value="MHLWN">MHLWN = Mean Higher Low Water Neaps</asp:ListItem>
                                        <asp:ListItem Value="MLWN">MLWN = Mean Low Water Neaps</asp:ListItem>
                                        <asp:ListItem Value="MLLWN">MLLWN = Mean Lower Low Water Neaps</asp:ListItem>
                                        <asp:ListItem Value="MHLW">MHLW = Mean Higher Low Water</asp:ListItem>
                                        <asp:ListItem Value="MLW">MLW = Mean Low Water</asp:ListItem>
                                        <asp:ListItem Value="MLLW">MLLW = Mean Lower Low Water</asp:ListItem>
                                        <asp:ListItem Value="MHLWS">MHLWS = Mean Higher Low Water Spring</asp:ListItem>
                                        <asp:ListItem Value="MLWS">MLWS = Mean Low Water Spring</asp:ListItem>
                                        <asp:ListItem Value="MLLWS">MLLWS = Mean Lower Low Water Spring</asp:ListItem>
                                        <asp:ListItem Value="LAT">LAT = Lowest Astronomical Tide</asp:ListItem>
                                        <asp:ListItem Value="CD">CD = Chart Datum</asp:ListItem>
                                        <asp:ListItem Value="MSL">MSL = Mean Sea Level</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col-md-12">
                                    <asp:Button runat="server" ID="btnGetTideHeights" CssClass="btn btn-danger pull-right" Text="Get Tide Data" OnClick="btnGetTideHeights_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
