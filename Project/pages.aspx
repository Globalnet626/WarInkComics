<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeBehind="pages.aspx.cs" Inherits="Project.pages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <asp:DynamicDataManager ID="DynamicDataManager1" runat="server" AutoLoadForeignKeys="true" />

    <asp:ListView ID="ListView1" runat="server" DataKeyNames="ComicPageID" DataSourceID="SqlDataSource1"
        OnPagePropertiesChanged="ListView1_PagePropertiesChanged" OnDataBound="OnLayoutCreated">
        <EmptyDataTemplate>
            <div class="d-flex justify-content-center" runat="server" style="">
                <tr>
                    <td>Page was not found.</td>
                </tr>
            </div>
        </EmptyDataTemplate>
        <ItemTemplate>
            <div class="d-flex justify-content-center" runat="server" style="">
                <asp:Image ID="comicImage" runat="server" ImageUrl='<%# Bind("PageURL") %>' CssClass="img-flex" />
            </div>
            <div class="d-flex justify-content-center" runat="server" style="">
                <asp:Label ID="PageNumberLabel" runat="server" Text='<%# Eval("PageNumber") %>' />

                <asp:Label ID="comicPageID" runat="server" Text='<%# Eval("ComicPageID") %>' Visible="False" />
            </div>
        </ItemTemplate>
        <LayoutTemplate>
            <div class="d-flex justify-content-center" runat="server" style="">
                <asp:DataPager ID="DataPager2" runat="server" PageSize="1">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True"
                            ShowLastPageButton="True" />
                    </Fields>
                </asp:DataPager>
            </div>
            <div runat="server" id="itemPlaceholderContainer"></div>
            <div runat="server" id="itemPlaceholder"></div>
            <div class="d-flex justify-content-center" runat="server" style="">
                <asp:DataPager ID="DataPager1" runat="server" PageSize="1">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True"
                            ShowLastPageButton="True" />
                    </Fields>
                </asp:DataPager>
            </div>
        </LayoutTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT [PageURL], [PageNumber], [ComicPageID] FROM [ComicPage] WHERE ([IssueID] = @IssueID)"
        OnSelecting="SqlDataSource1_Selecting">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="1" Name="IssueID" QueryStringField="IssueID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Label ID="lblPageID" runat="server" Font-Bold="True" Visible="False">1</asp:Label>
</asp:Content>