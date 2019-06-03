<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeBehind="comics.aspx.cs" Inherits="Project.comics" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <div class="d-flex justify-content-center" runat="server" style="">
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="4">
            <ItemTemplate>
                <a href="issues.aspx?VolumeID=<%# Eval("VolumeID") %>">
                    <asp:Image ID="comicImage" runat="server" ImageUrl='<%# Bind("VolumeCoverURL") %>'
                        CssClass="img-preview" />
                </a>
                <br />
                <div class="d-flex justify-content-center">
                    <asp:Label ID="VolumeNameLabel" runat="server" Text='<%# Eval("VolumeName") %>' Font-Bold="true" />
                    <br />
                </div>
                <div class="d-flex justify-content-center">
                    Created by:
                    <asp:Label ID="VolumeArtistLabel" runat="server" Text='<%# Eval("VolumeArtist") %>' />
                    <br />
                </div>
                <div class="d-flex justify-content-center">
                    <asp:Label ID="VolumeDescriptionLabel" runat="server" Text='<%# Eval("VolumeDescription") %>' />
                    <br />
                </div>
                <div class="d-flex justify-content-center">
                    Total Issues:
                    <asp:Label ID="VolumeTotalLabel" runat="server" Text='<%# Eval("VolumeTotal") %>' />
                    <br />
                </div>

                <br />
            </ItemTemplate>

        </asp:DataList>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT * FROM [ComicVolume]"></asp:SqlDataSource>
</asp:Content>