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
                <p>
                    ما دو سه نفر بودیم و نقطه اشتراکمون از بچگی، تنفرمون از تبلیغات بازرگانی بود! ما از این تنفر، یه هدف ساختیم و یه تیم تبلیغاتی راه انداختیم!
                </p>
                <p>
                    تو این راه هم از کسایی که شبیه خودمون بودن استفاده کردیم و تیممون بزرگ و بزرگ‌تر شد تا رسید به یه فکر به اسمِ فردیده.
                </p>
                <p>
                    «فردید» یه بچه‌ی پرانرژی و فعاله که یه جا بند نمی‌شه؛ از چیزای تکراری خوشش نمی‌آد و عاشق سرگرمی‌های جدیده؛ صداش بلنده و همیشه به‌جای قدم زدن، مسیرش و می‌دوئه و از این دویدن لذت می‌بره.
                </p>
                <p>
                    حالا ما که دیگه فقط دو سه نفر نیستیم، تو خونواده‌ی بزرگمون هر ثانیه در حال فکر کردن، طراحی، کارگردانی، ویدئو و موشن‌گرافی، تدوین، عکاسی و پیدا کردن بهترین ارتباط و نفوذ به ذهن دنیاییم.
                </p>
                <p>
                    درِ این خونه هم همیشه به روی بهترین‌ها بازه.
                </p>
                <p>
                    محتوا سازی و تبلیغ وسیع و هوشمند تو «دیجیتال مارکتینگ» برای ما فقط یه «کار» شبانه‌روز و «عشق» نیست، یه ابر پروژه‌ی مادام‌العمره که باید هر ثانیه بهتره از ثانیه‌ی قبل بشه.
                </p>
                <p>
                    ازنظر «فردید»، هیچ کسب‌وکار، شغل و حرفه‌ای ناموفق نیست، فقط هنوز باهامون آشنا نشده!
                </p>
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
