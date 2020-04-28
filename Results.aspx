<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Results.aspx.cs" Inherits="Results" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="main">
        <div class="main-content">
            <div class="container-fluid">
                <h3 class="page-title">Tide Height Calculation - Results</h3>
                <div class="row">
                    <div class="col-md-12">

                        <div class="panel">
                            <div class="panel-heading">
                                <h3 class="panel-title"></h3>
                            </div>
                            <div class="panel-body">
                                <div class="form-group">
                                    <label for="txtLat">Latitude : </label>
                                    <asp:Label runat="server" ID="txtLat"></asp:Label>
                                </div>
                                <div class="form-group">
                                    <label for="txtLat">Longitude : </label>
                                    <asp:Label runat="server" ID="txtLon"></asp:Label>
                                </div>
                                <div class="form-group">
                                    <label for="txtLat">Station : </label>
                                    <asp:Label runat="server" ID="txtStation"></asp:Label>
                                </div>
                                <div class="form-group">
                                    <label for="txtLat">Datum : </label>
                                    <asp:Label runat="server" ID="txtDatum"></asp:Label>
                                </div>
                                <div class="form-group">
                                    <label for="txtLat">Heights Table</label>
                                    <section class="content">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <asp:ListView ID="lstHeightData" runat="server" ItemPlaceholderID="groupPlaceHolder1">
                                                    <LayoutTemplate>
                                                        <div class="card-body">
                                                            <table id="example2" class="table table-bordered table-hover">
                                                                <thead>
                                                                    <tr>
                                                                        <th>Date</th>
                                                                        <th>Height</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <asp:PlaceHolder runat="server" ID="groupPlaceHolder1"></asp:PlaceHolder>
                                                                </tbody>
                                                                <tfoot>
                                                                    <tr>
                                                                        <td colspan="9"></td>
                                                                    </tr>
                                                                </tfoot>
                                                            </table>
                                                        </div>
                                                    </LayoutTemplate>
                                                    <ItemTemplate>
                                                        <tr>
                                                            <td><%# Eval("Date") %></td>
                                                            <td><%# Eval("HeightHeight") %></td>
                                                        </tr>
                                                    </ItemTemplate>
                                                </asp:ListView>
                                            </div>
                                        </div>
                                    </section>
                                </div>
                                <div class="form-group">
                                    <label for="txtLat">Extremes Table</label>
                                    <section class="content">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <asp:ListView ID="lstExtreme" runat="server" ItemPlaceholderID="groupPlaceHolder1">
                                                    <LayoutTemplate>
                                                        <div class="card-body">
                                                            <table id="example2" class="table table-bordered table-hover">
                                                                <thead>
                                                                    <tr>
                                                                        <th>Date</th>
                                                                        <th>Height</th>
                                                                        <th>Type</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <asp:PlaceHolder runat="server" ID="groupPlaceHolder1"></asp:PlaceHolder>
                                                                </tbody>
                                                                <tfoot>
                                                                    <tr>
                                                                        <td colspan="9"></td>
                                                                    </tr>
                                                                </tfoot>
                                                            </table>
                                                        </div>
                                                    </LayoutTemplate>
                                                    <ItemTemplate>
                                                        <tr>
                                                            <td><%# Eval("Date") %></td>
                                                            <td><%# Eval("HeightHeight") %></td>
                                                            <td><%# Eval("type") %></td>
                                                        </tr>
                                                    </ItemTemplate>
                                                </asp:ListView>
                                            </div>
                                        </div>
                                    </section>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <asp:Button runat="server" ID="btnGoBack" OnClick="btnGoBack_Click" CssClass="btn btn-danger pull-right" Text="Try Another One"  />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

