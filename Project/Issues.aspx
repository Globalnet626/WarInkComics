<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeBehind="Issues.aspx.cs" Inherits="Project.Issues" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <div class="d-flex justify-content-center" runat="server" style="">
        <asp:DataList ID="DataList1" runat="server" DataKeyField="IssueID" DataSourceID="SqlDataSource1"
            RepeatColumns="4" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                <a href="pages.aspx?IssueID=<%# Eval("IssueID") %>">
                    <asp:Image ID="comicImage" runat="server" ImageUrl='<%# Bind("IssueURL") %>'
                        CssClass="img-preview" />
                    <br />
                </a>
                <div class="d-flex justify-content-center" runat="server" style="">
                    Issue Name:
                    <asp:Label ID="IssueNameLabel" runat="server" Text='<%# Eval("IssueName") %>' />
                </div>
                <div class="d-flex justify-content-center" runat="server" style="">
                    Description:
                </div>
                <div class="d-flex justify-content-center" runat="server" style="">
                    <asp:Label ID="IssueDescriptionLabel" runat="server" Text='<%# Eval("IssueDescription") %>' />
                </div>
                <br />
            </ItemTemplate>
        </asp:DataList>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT * FROM [ComicIssue] WHERE ([VolumeID] = @VolumeID)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="" Name="VolumeID" QueryStringField="VolumeID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>