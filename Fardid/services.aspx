<%@ Page Title="" Language="C#" MasterPageFile="~/CusromerSideMaster.Master" AutoEventWireup="true" CodeBehind="services.aspx.cs" Inherits="Fardid.services" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="main">
    <section class="slider col-lg-12 col-md=12 col-sm-12 col-xs-12" style="background-image: url('assets/images/slider.jpeg')">
        <div class="scroll"></div>
        <div class="slider-title">
            <h1>
                / influencer marketing
            </h1>
        </div>
    </section>
    <section class="prd-section services-prd col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="container">
            <ul class="md-transform-x">
                <li class="col-lg-3 col-md-3 col-sm-4 col-xs-12">
                    <div>
                        <img class="full-size-img" src="assets/images/services-img.png" alt="Services">
                    </div>
                </li>
                <li class="col-lg-3 services-li transform-translate-x-50 col-md-3 col-sm-4 col-xs-12">
                    <div class="services-desc">
                        <p>
                            فردرد با توجه به شبکه ای گشترده از اینفلوئنسرها ، این امکان را دارد که کمپیم های مختلف و بزرگی را در سطح شبکه های اجتماعی اجرا کند.
                        </p>
                        <p>
                            / ترغیب مخاطب به خرید محصول به صورت غیر مستقیم از طریق شبکه های اجتماعی
                        </p>
                        <p>
                            / تولید محتوای اصلی و موثز بازاریابی بر اساس سناروی از پیش تریف شده مختص به کسب و مار مورد نظر ، برای صاحبان کسب و کار
                        </p>
                        <p>
                            / معرفی محصول یا خدمات از طریق رابطه ی قوی با مخاطب و به سبب اعتماد مخاطبین به اینفلوئنسرها
                        </p>
                        <p>
                            دستیابی به مخاطبان خاص و مرتبط با کسب و کار مورد نظر از طریق اینفلوئنسر ویژه آن کسب و کار
                        </p>
                    </div>
                    <button class="view-more scroll-bottom"><span></span></button>
                </li>
                <li class="custom-height-xs col-lg-3 col-lg-push-3 col-md-3 col-sm-4 col-xs-12">
                    <div>
                        <div class="inner-prd" style="background-image: url('assets/images/slider.jpeg');">
                            <h3 class="fix-h3 prd-bg-rtl">LAXMI</h3>
                            <div class="rgba-bg active-rgba-bg"></div>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </section>
    <section id="client-section" class="clients-section col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="container">
            <h2 class="title">
                SOME OF OUR CLIENTS
            </h2>
            <ul class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <li class="col-lg-1 col-lg-push-1 col-xs-3">
                    <img src="assets/images/logo.png" alt="">
                </li>
                <li class="col-lg-1 col-lg-push-1 col-xs-3">
                    <img src="assets/images/logo.png" alt="">
                </li>
                <li class="col-lg-1 col-lg-push-1 col-xs-3">
                    <img src="assets/images/logo.png" alt="">
                </li>
                <li class="col-lg-1 col-lg-push-1 col-xs-3">
                    <img src="assets/images/logo.png" alt="">
                </li>
                <li class="col-lg-1 col-lg-push-1 col-xs-3 not-de-translate">
                    <img src="assets/images/logo.png" alt="">
                </li>
                <li class="col-lg-1 col-lg-push-1 col-xs-3 not-de-translate">
                    <img src="assets/images/logo.png" alt="">
                </li>
                <li class="col-lg-1 col-lg-push-1 col-xs-3 not-de-translate">
                    <img src="assets/images/logo.png" alt="">
                </li>
            </ul>
            <div class="text-center">
                <a href="portfolio.aspx">
                    <button class="view-more"><span>VIEW ALL WORKS <i class="fal fa-arrow-right"></i></span></button>
                </a>
            </div>
        </div>
    </section>
    <section class="video-section col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <img class="video-bg" src="assets/images/video-bg2.png" alt="Video BG">
        <div class="inner-video purple-text">
            <img src="assets/images/logo4.png" alt="">
            <div>
                <h3>
                    MAKE A VIDEO CLIP
                </h3>
                <h2>
                    FOR LAXMI BRAND
                </h2>
            </div>
        </div>
        <span class="video-controller" data-toggle="modal" data-target="#videoModal">
            <i class="fa fa-play"></i>
        </span>
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
