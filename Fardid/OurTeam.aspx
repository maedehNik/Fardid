<%@ Page Title="" Language="C#" MasterPageFile="~/CusromerSideMaster.Master" AutoEventWireup="true" CodeBehind="OurTeam.aspx.cs" Inherits="Fardid.OurTeam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="main">
        <section class="prd-section prd-li-p-xs sm-li-padding col-lg-12 col-md-12 col-sm-12 col-xs-12" style="padding-bottom: 0;">
            <div class="container">
                <div class="ourteam-title col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    / our team
                </div>
                <ul>
                    <% foreach (var item in OurTeams)
                        { %>
                    <li class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <div>
                            <div class="inner-prd" style="background-image: url('<%= item.Pic_Path %>');">
                                <h3 class="prd-bg-rtl"><%= item.Job %></h3>
                                <div class="rgba-bg"></div>
                                <p><span class="ourteam-name"><%= item.Name %></span></p>
                            </div>
                        </div>
                    </li>
                    <% } %>

                </ul>
            </div>
        </section>
        <section class="nl-section col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="container">
                <h2 class="title">Subscribe Our Newsletter
                </h2>
                <h5 class="sub-title">Get the best news and stories delivered to your inbox
                </h5>
                <div id="nlForm" autocomplete="off">
                    <div class="nl-div col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <%-- <input type="text" id="email-nl-form" name="email" class="col-lg-4 col-lg-push-3 col-sm-7 col-sm-push-1 col-xs-8" placeholder="Enter Your Email">--%>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="col-lg-4 col-lg-push-3 col-sm-7 col-sm-push-1 col-xs-8" PlaceHolder="Enter Your Email"></asp:TextBox>
                        <%--<input type="submit" id="submit-nl-form" class="col-lg-2 col-lg-push-3 col-sm-3 col-sm-push-1 col-xs-4" value="Subscribe">--%>
                        <asp:Button ID="Button1" runat="server" Text="Subscribe" CssClass="col-lg-2 col-lg-push-3 col-sm-3 col-sm-push-1 col-xs-4" OnClick="Button1_Click" />
                    </div>
                </div>
            </div>
        </section>
    </div>

</asp:Content>
