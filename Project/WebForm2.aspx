<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Project.WebForm2" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <center>
    <asp:GridView ID="grdMain" runat="server" ShowHeader="False" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ComicPageID" DataSourceID="SqlDataSource1" PageSize="1" EnableTheming="True" BorderStyle="None" BorderWidth="0px">
        <Columns>
            <asp:TemplateField HeaderText="PageURL" SortExpression="PageURL">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("PageURL") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <br />
                    <asp:Image ID="comicImage" runat="server" ImageUrl='<%# Bind("PageURL") %>' class="img-responsive"/>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="PageNumber" HeaderText="PageNumber" SortExpression="PageNumber" />
        </Columns>
        <PagerSettings Mode="NextPreviousFirstLast" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [ComicPage] WHERE ([IssueID] = @IssueID)">
        <SelectParameters>
            <asp:Parameter DefaultValue="1" Name="IssueID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <div _designerregion="0">
    </div>
        </center>
</asp:Content>
