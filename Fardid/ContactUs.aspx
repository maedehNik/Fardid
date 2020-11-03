<%@ Page Title="" Language="C#" MasterPageFile="~/CusromerSideMaster.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Fardid.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="main">
    <section class="contact-section col-lg-12 col-md=12 col-sm-12 col-xs-12">
        <div class="container">
            <div class="container custom-alert">
                <div>

                </div>
            </div>
            <form action="" method="post" id="contact-form" autocomplete="off">
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    <label for="nameinp">
                        NAME:
                    </label>
                    <input type="text" name="name" id="nameinp" placeholder="Enter Your Name">
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    <label for="emailinp">
                        EMAIL:
                    </label>
                    <input type="text" name="email" id="emailinp" placeholder="Enter Your Email">
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    <label for="subjectinp">
                        SUBJECT:
                    </label>
                    <input type="text" name="subject" id="subjectinp" placeholder="Enter Your Subject">
                </div>
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <label for="messageinp">
                        MESSAGE:
                    </label>
                    <textarea name="message" id="messageinp" placeholder="Your Message Here..."></textarea>
                </div>
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <input type="submit" value="SEND MESSAGE" id="sendinp">
                </div>
            </form>
        </div>
    </section>
</div>

</asp:Content>
