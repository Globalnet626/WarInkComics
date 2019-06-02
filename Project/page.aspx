<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeBehind="page.aspx.cs" Inherits="Project.page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">

    <div class ="d-flex align-items-center">
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
        <EmptyDataTemplate>
            <span>Page does not exist</span>
        </EmptyDataTemplate>
        <ItemTemplate>
          <div class ="row">
            <asp:Image ID="comicImage" runat="server" ImageUrl='<%# Bind("PageURL") %>' class="img-fluid"/>
            <asp:Label ID="PageNumberLabel" runat="server" Text='<%# Eval("PageNumber") %>' /> <br />
        </ItemTemplate>
        <LayoutTemplate>
            </div>
            <div class ="row"> 
            <div id="itemPlaceholderContainer" runat="server" style="">
                <span runat="server" id="itemPlaceholder" />
            </div>
           
            <div style="d-flex justify-content-start">
                <%--<asp:DataPager ID="DataPager1" runat="server" PageSize="1" >
        <Fields>
       <asp:NextPreviousPagerField ButtonType="Button"
            ShowFirstPageButton="true"
            ShowNextPageButton="true"
            ShowPreviousPageButton="true" />
          <asp:NumericPagerField ButtonCount="10" />
          <asp:NextPreviousPagerField ButtonType="Button"
            ShowLastPageButton="true"
            ShowNextPageButton="true"
            ShowPreviousPageButton="true"/>
                    </Fields>
                </asp:DataPager>--%>
            </div>
          </div>
        </LayoutTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [PageURL], [PageNumber] FROM [ComicPage] WHERE ([IssueID] = @IssueID)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="1" Name="IssueID" QueryStringField="issueID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
        </div>
                            <!--<asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" /> -->
</asp:Content>

