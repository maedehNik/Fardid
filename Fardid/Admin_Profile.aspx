<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Admin_Profile.aspx.cs" Inherits="Fardid.Admin_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_Css" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_Modal" runat="server">

    <div class="modal fade p-0" id="uploader" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered tshuploader-dialog" role="document">
            <div class="modal-content tshuploader-content">
                <div class="modal-header">
                    <h5 class="modal-title col-12">
                        <ul class="uploader-header col-12">
                            <li class="row">
                                <li class="col-6">
                                    <span class="active-upload upload-btn"><i class="fa fa-upload"></i>
                                        آپلود
                                    </span>
                                </li>
                                <li class="col-6">
                                    <span class="gal-btn"><i class="fa fa-images"></i>
                                        گالری
                                    </span>
                                </li>
                            </li>
                        </ul>
                    </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="close" style="position: absolute; left: 15px; top: 25px;">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body" style="overflow-y: auto; overflow-x: hidden;">
                    <div class="upload-fields col-12">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="form-group m-form__group col-lg-4" style="padding: 0;">
                                    <div class="col-lg-12">
                                        <label class="form-control-label">نام عکس:</label>
                                        <input type="text" class="form-control m-input picname" placeholder="" value="">
                                    </div>
                                </div>
                                <div class="form-group m-form__group col-lg-4" style="padding: 0;">
                                    <div class="col-lg-12">
                                        <label class="form-control-label">لیبل:</label>
                                        <input type="text" class="form-control m-input piclabel" placeholder="" value="">
                                    </div>
                                </div>
                                <div class="form-group m-form__group col-lg-4" style="padding: 0;">
                                    <div class="col-lg-12">
                                        <label class="form-control-label">توضیح مختصر:</label>
                                        <input type="text" class="form-control m-input picdesc" placeholder="" value="">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="upload-div col-12">
                        <div class="col-12 dropzone-uploader">
                            <div class="m-dropzone dropzone" action="inc/api/dropzone/upload.php" id="m-dropzone-one">
                                <div class="m-dropzone__msg dz-message needsclick">
                                    <h3 class="m-dropzone__msg-title">فایل را اینجا رها کنید یا انتخاب کنید</h3>
                                    <span class="m-dropzone__msg-desc">فقط امکان انتخاب یک فایل وجود دارد</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="gal-div col-12" style="display: none; height: 100%;">
                        <div class="row" style="height: 100%;">
                            <div class="col-lg-12 upload-right">
                                <div class="gal-img col-lg-12" style="padding: 0; float: right">
                                    <h3 class="gal-h3 h3-active"><i class="fa fa-images"></i>
                                        عکس
                                    </h3>
                                    <div class="inner-gal">
                                        <div class="col-lg-3">
                                            <div style="position: relative;">
                                                <label class="m-checkbox m-checkbox--bold m-checkbox--state-brand" style="position: absolute; right: -8px; top: -10px; z-index: 999;">
                                                    <input type="checkbox">
                                                    <span style="background-color: white!important;"></span>
                                                </label>
                                                <img src="AdminAssets/demo/default/media/img/misc/preservation-copy.jpg" class="uimg" data-name="نام عکس" data-label="لیبل" data-desc="توضیحات" alt="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="gal-img col-lg-12" style="padding: 0; float: right">
                                    <h3 class="gal-h3"><i class="fa fa-video"></i>
                                        ویدیو
                                    </h3>
                                    <div class="inner-gal" style="display: none">
                                        <div class="col-lg-3">
                                            <div style="position: relative;">
                                                <label class="m-checkbox m-checkbox--bold m-checkbox--state-brand" style="position: absolute; right: -8px; top: -10px; z-index: 999;">
                                                    <input type="checkbox">
                                                    <span style="background-color: white!important;"></span>
                                                </label>
                                                <img src="AdminAssets/demo/default/media/img/misc/preservation-copy.jpg" class="uimg" data-name="نام عکس" data-label="لیبل" data-desc="توضیحات" alt="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="gal-img col-lg-12" style="padding: 0; float: right">
                                    <h3 class="gal-h3"><i class="fa fa-file"></i>
                                        فایل
                                    </h3>
                                    <div class="inner-gal" style="display: none">
                                        <div class="col-lg-3">
                                            <div style="position: relative;">
                                                <label class="m-checkbox m-checkbox--bold m-checkbox--state-brand" style="position: absolute; right: -8px; top: -10px; z-index: 999;">
                                                    <input type="checkbox">
                                                    <span style="background-color: white!important;"></span>
                                                </label>
                                                <img src="AdminAssets/demo/default/media/img/misc/preservation-copy.jpg" class="uimg" data-name="نام عکس" data-label="لیبل" data-desc="توضیحات" alt="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 upload-left">
                                <div class="col-12">
                                    <img src="AdminAssets/demo/default/media/img/misc/preservation-copy.jpg" class="left-img" alt="">
                                </div>
                                <div class="mt-3">
                                    <div class="form-group m-form__group col-12" style="padding: 0;">
                                        <div class="col-lg-12">
                                            <label class="form-control-label">نام عکس:</label>
                                            <input type="text" class="form-control m-input picname picinps" disabled="disabled" placeholder="" value="">
                                        </div>
                                    </div>
                                    <div class="form-group m-form__group col-12" style="padding: 0;">
                                        <div class="col-lg-12">
                                            <label class="form-control-label">لیبل:</label>
                                            <input type="text" class="form-control m-input piclabel picinps" disabled="disabled" placeholder="" value="">
                                        </div>
                                    </div>
                                    <div class="form-group m-form__group col-12" style="padding: 0;">
                                        <div class="col-lg-12">
                                            <label class="form-control-label">توضیح مختصر:</label>
                                            <input type="text" class="form-control m-input picdesc picinps" disabled="disabled" placeholder="" value="">
                                        </div>
                                    </div>
                                    <div class="form-group m-form__group col-12 btn-uploader">
                                        <button class="btn btn-brand ubtn1">
                                            <i class="fa fa-edit"></i>
                                            ویرایش
                                        </button>
                                        <button class="btn btn-danger ubtn2 deleteimgbtn" data-target="#deleteimg" data-toggle="modal" data-name="نام عکس">
                                            <i class="fa fa-trash"></i>
                                            حذف
                                        </button>
                                        <button class="btn btn-success ubtn3" style="display: none">
                                            <i class="fa fa-save"></i>
                                            ذخیره
                                        </button>
                                        <button class="btn btn-warning ubtn4" style="display: none">
                                            <i class="fa fa-times"></i>
                                            انصراف
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="modal fade" id="deleteimg" tabindex="-1" role="dialog" aria-hidden="true" style="background-color: rgba(0,0,0,.4);">
                                <div class="modal-dialog modal-dialog-centered" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title">پاک کردن عکس</h5>
                                            <button type="button" class="close" onclick="closeDI();" aria-label="close">
                                                <span aria-hidden="true">×</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <p>
                                                عکس
											<span id="data-name"></span>
                                                پاک شود؟
                                            </p>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" onclick="closeDI();">خیر</button>
                                            <button type="button" class="btn btn-danger">بله</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-warning" data-dismiss="modal">انصراف</button>
                    <button type="button" class="btn btn-success select-uploader" style="display: none">انتخاب</button>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <!-- BEGIN: Subheader -->
    <div class="m-subheader">
        <div class="d-flex align-items-center">
            <div class="mr-auto">
                <span class="m-subheader__daterange" id="m_dashboard_daterangepicker">
                    <span class="m-subheader__daterange-label">
                        <h3 class="m-subheader__title" style="padding-left: 0!important; margin: 0 0 0 2px!important;">پیشخوان
									<i class="fa fa-chevron-left tshfontsize2" style="transform: translateY(3px); color: #aaaeb8; margin-right: 2px;"></i>
                            <span class="m-subheader__daterange-title tshfontsize2" style="margin-right: 2px; margin-left: 2px;">پروفایل</span>
                            <!--
                                    <i class="fa fa-chevron-left" style="transform: translateY(3px);color: #aaaeb8;"></i>
                                    <span class="m-subheader__daterange-title" style="margin-right: 2px;">نمایش همه ی پست ها</span>
                                    -->
                        </h3>
                    </span>
                </span>
            </div>
        </div>
    </div>


    <div class="m-content">
        <div class="row">
            <div class="col-lg-12">
                <div class="m-portlet m-portlet--full-height m-portlet--tabs  ">
                    <div class="m-portlet__head">
                        <div class="m-portlet__head-tools">
                            <ul class="nav nav-tabs m-tabs m-tabs-line   m-tabs-line--left m-tabs-line--primary" role="tablist">
                                <li class="nav-item m-tabs__item">
                                    <a class="nav-link m-tabs__link active" data-toggle="tab" href="#m_user_profile_tab_1" role="tab">
                                        <i class="flaticon-share m--hide"></i>
                                        پروفایل
                                    </a>
                                </li>
                                <!--<li class="nav-item m-tabs__item">
                                            <a class="nav-link m-tabs__link" data-toggle="tab" href="#m_user_profile_tab_2" role="tab">
                                                پیام ها
                                            </a>
                                        </li>
                                        <li class="nav-item m-tabs__item">
                                            <a class="nav-link m-tabs__link" data-toggle="tab" href="#m_user_profile_tab_3" role="tab">
                                                تنظیمات
                                            </a>
                                        </li>-->
                            </ul>
                        </div>
                    </div>
                    <div class="tab-content">
                        <div class="tab-pane active" id="m_user_profile_tab_1">
                            <div class="m-form m-form--fit m-form--label-align-right" id="profile-form">
                                <div class="m-portlet__body">
                                    <div class="m-card-profile">
                                        <div class="m-card-profile__pic">
                                            <div class="m-card-profile__pic-wrapper">
                                               <%-- <img src="./AdminAssets/app/media/img/users/user4.jpg" alt="">--%>
                                                <asp:HiddenField ID="HiddenField_AdminId" runat="server" />
                                                <asp:Image ID="Image1" runat="server" />
                                            </div>
                                        </div>
                                        <div class="m-section__content container-fluid tshtextcenter mb-3">
                                            <button class="btn btn-brand btn-sm" type="button" data-target="#uploader" data-toggle="modal">انتخاب عکس</button>
                                            <asp:HiddenField ID="HiddenField_Profile" runat="server" />
                                        </div>
                                        <div class="m-card-profile__details">
                                            <%--<span class="m-card-profile__name">امیرحسین عرب
                                            </span>--%>
                                            <asp:Label ID="AdminNameLBL" runat="server" CssClass="m-card-profile__name"></asp:Label>
                                           <%-- <a class="m-card-profile__email m-link tshcurpoi">شماره کاربری : 97776543</a>--%>
                                        </div>
                                    </div>
                                    <div class="form-group m-form__group row">
                                        <div class="col-10 ml-auto">
                                            <h3 class="m-form__section">1. اطلاعات شخصی</h3>
                                        </div>
                                    </div>
                                    <div class="form-group m-form__group row">
                                        <label for="firstname" class="col-lg-4 col-xs-12 col-form-label">نام</label>
                                        <div class="col-lg-5 col-xs-12">
                                            <%--<input class="form-control m-input" id="firstname" name="firstname" type="text" value="امیرحسین">--%>
                                            <asp:TextBox ID="TextBox_Namle" runat="server" CssClass="form-control m-input"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group m-form__group row">
                                        <label for="lastname" class="col-lg-4 col-xs-12 col-form-label">نام خانوادگی</label>
                                        <div class="col-lg-5 col-xs-12">
                                            <%--<input class="form-control m-input" id="lastname" name="lastname" type="text" value="عرب">--%>
                                            <asp:TextBox ID="TextBox_Family" runat="server" CssClass="form-control m-input"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group m-form__group row">
                                        <label for="email" class="col-lg-4 col-xs-12 col-form-label">ایمیل</label>
                                        <div class="col-lg-5 col-xs-12">
                                            <%--<input class="form-control m-input" id="email" name="email" type="text" value="test@test.com">--%>
                                            <asp:TextBox ID="TextBox_Email" runat="server" CssClass="form-control m-input"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group m-form__group row">
                                        <label for="phone" class="col-lg-4 col-xs-12 col-form-label">شماره تلفن</label>
                                        <div class="col-lg-5 col-xs-12">
                                            <%--<input class="form-control m-input" id="phone" name="phone" type="text" value="09197386684">--%>
                                            <asp:TextBox ID="TextBox_Phone" runat="server" CssClass="form-control m-input"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="m-form__seperator m-form__seperator--dashed m-form__seperator--space-2x"></div>

                                    <div class="form-group m-form__group row">
                                        <div class="col-10 ml-auto">
                                            <h3 class="m-form__section">2. رمز عبور
														<small style="display: block; font-size: 14px; margin-top: 10px;">برای تغییر رمز عبور فرم زیر را پر کنید.</small>
                                            </h3>
                                        </div>
                                    </div>

                                    <div class="form-group m-form__group row">
                                        <label for="password" class="col-lg-4 col-xs-12 col-form-label">رمز عبور</label>
                                        <div class="col-lg-5 col-xs-12">
                                           <%-- <input class="form-control m-input" id="password" name="password" type="password" value="">--%>
                                            <asp:TextBox ID="TextBox_Pass1" runat="server" CssClass="form-control m-input" TextMode="Password" ></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group m-form__group row">
                                        <label for="repassword" class="col-lg-4 col-xs-12 col-form-label">تکرار رمز عبور</label>
                                        <div class="col-lg-5 col-xs-12">
                                            <%--<input class="form-control m-input" id="repassword" name="repassword" type="password" value="">--%>
                                            <asp:TextBox ID="TextBox_Pass2" runat="server" CssClass="form-control m-input" TextMode="Password"></asp:TextBox>
                                        </div>
                                    </div>

                                </div>
                                <div class="m-portlet__foot m-portlet__foot--fit">
                                    <div class="m-form__actions">
                                        <div class="row">
                                            <div class="col-2">
                                            </div>
                                            <asp:Label ID="Label_error" runat="server" Text="" ForeColor="Red"></asp:Label>
                                            <div class="col-7 tshtextleft">
                                                <%--<button type="submit" class="btn btn-accent m-btn m-btn--air m-btn--custom">ذخیره</button>&nbsp;&nbsp;--%>
                                                <asp:Button ID="Button1" runat="server" Text="ذخیره" CssClass="btn btn-accent m-btn m-btn--air m-btn--custom" OnClick="Button1_Click"/>
                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane " id="m_user_profile_tab_2">
                        </div>
                        <div class="tab-pane " id="m_user_profile_tab_3">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder_Scripts" runat="server">
</asp:Content>
