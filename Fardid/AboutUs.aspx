<%@ Page Title="" Language="C#" MasterPageFile="~/CusromerSideMaster.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="Fardid.AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="main">
    <section class="about-section col-lg-12 col-md=12 col-sm-12 col-xs-12">
        <div class="container">
            <div class="about-title">
                <span class="col-lg-6 col-md-6 col-sm-6 col-xs-6 float-right text-right about-main-fa-title">درباره فردید</span>
                <span class="col-lg-6 col-md-6 col-sm-6 col-xs-6 float-left text-left">ABOUT US</span>
            </div>
            <div class="about-content col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <%= AboutUs_Text %>
            </div>
        </div>
    </section>
    <section class="nl-section col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="container">
            <h2 class="title">
                Subscribe Our Newsletter
            </h2>
            <h5 class="sub-title">
                Get the best news and stories delivered to your inbox
            </h5>
            <form action="" method="post" id="nl-form" autocomplete="off">
                <div class="nl-div col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <input type="text" id="email-nl-form" name="email" class="col-lg-4 col-lg-push-3 col-sm-7 col-sm-push-1 col-xs-8" placeholder="Enter Your Email">
                    <input type="submit" id="submit-nl-form" class="col-lg-2 col-lg-push-3 col-sm-3 col-sm-push-1 col-xs-4" value="Subscribe">
                </div>
            </form>
        </div>
    </section>
</div>

</asp:Content>
