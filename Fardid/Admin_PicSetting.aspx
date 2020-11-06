<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Admin_PicSetting.aspx.cs" Inherits="Fardid.Admin_PicSetting" %>

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

    <div class="m-subheader">
        <div class="d-flex align-items-center">
            <div class="mr-auto">
                <span class="m-subheader__daterange" id="m_dashboard_daterangepicker">
                    <span class="m-subheader__daterange-label">
                        <h3 class="m-subheader__title" style="padding-left: 0!important; margin: 0 0 0 2px!important;">پیشخوان
									<i class="fa fa-chevron-left tshfontsize2" style="transform: translateY(3px); color: #aaaeb8; margin-right: 2px;"></i>
                            <span class="m-subheader__daterange-title tshfontsize2" style="margin-right: 2px; margin-left: 2px;">تنظیمات تصاویر</span>
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
                                        <cust_title>
													تنظیمات تصاویر
												</cust_title>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="tab-content">
                        <div class="tab-pane active" id="m_user_profile_tab_1">
                            <form class="m-form m-form--fit m-form--label-align-right" onsubmit="return false;" id="newportfolio" autocomplete="off">
                                <div class="m-portlet__body" style="padding-bottom: 0">
                                    <div class="container-fluid">
                                        <div class="col-12 rowresml0">
                                            <div class="row mt-res-0" style="padding-top: 0; margin-top: 30px;">
                                                <div class="col-md-6">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <label class="form-control-label col-12">لوگو اصلی</label>
                                                            <div class="m-section__content tshtextright col-12">
                                                                <button class="btn btn-brand btn-sm" type="button" data-target="#uploader" data-toggle="modal" style="margin-bottom: 30px;">انتخاب عکس</button>
                                                                <%--<input hidden id="MainLogoId" value="<%= Models.MainLogo_Id %>"/>--%>
                                                                <asp:HiddenField ID="HiddenFieldMainLogoId" runat="server" Value="<%= Models.MainLogo_Id %>"/>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="col-12 selected-img-div" style="margin: 0 0 30px 0;">
                                                                <div class="selected-pic" style="position: relative;">
                                                                    <button type="button" class="btn btn-danger delete-selected-pic" style="position: absolute; right: -8px; top: -10px; z-index: 999; padding: 4px 5px;"><i class="fa fa-trash"></i></button>
                                                                    <img src="<%= Models.MainLogo_Path %>" class="uimg" data-name="نام عکس" data-label="لیبل" data-desc="توضیحات" alt="">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="row">
                                                        <div class="col-md-6 res-mt-39">
                                                            <label class="form-control-label col-12">فو آیکن</label>
                                                            <div class="m-section__content tshtextright col-12">
                                                                <button class="btn btn-brand btn-sm" type="button" data-target="#uploader" data-toggle="modal" style="margin-bottom: 30px;">انتخاب عکس</button>
                                                         <%--       <input hidden id="FoIconId" value="<%= Models.FoIcon_Id %>"/>--%>
                                                                <asp:HiddenField ID="HiddenField_FoIconId" runat="server" Value="<%= Models.FoIcon_Id %>" />
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="col-12 selected-img-div" style="margin: 0 0 30px 0;">
                                                                <div class="selected-pic" style="position: relative;">
                                                                    <button type="button" class="btn btn-danger delete-selected-pic" style="position: absolute; right: -8px; top: -10px; z-index: 999; padding: 4px 5px;"><i class="fa fa-trash"></i></button>
                                                                    <img src="<%= Models.FoIcon_Path %>" class="uimg" data-name="نام عکس" data-label="لیبل" data-desc="توضیحات" alt="">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row mt-res-0" style="padding-top: 0; margin-top: 30px;">
                                                <div class="col-md-6">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <label class="form-control-label col-12">لوگو فوتر</label>
                                                            <div class="m-section__content tshtextright col-12">
                                                                <button class="btn btn-brand btn-sm" type="button" data-target="#uploader" data-toggle="modal" style="margin-bottom: 30px;">انتخاب عکس</button>
                                                                <%--<input hidden id="FooterLogoId" value="<%= Models.FooterLogo_Id %>"/>--%>
                                                                <asp:HiddenField ID="HiddenField_FooterLogoId" runat="server" Value="<%= Models.FooterLogo_Id %>"/>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="col-12 selected-img-div" style="margin: 0 0 30px 0;">
                                                                <div class="selected-pic" style="position: relative;">
                                                                    <button type="button" class="btn btn-danger delete-selected-pic" style="position: absolute; right: -8px; top: -10px; z-index: 999; padding: 4px 5px;"><i class="fa fa-trash"></i></button>
                                                                    <img src="<%= Models.FooterLogo_Path %>" class="uimg" data-name="نام عکس" data-label="لیبل" data-desc="توضیحات" alt="">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="row">
                                                        <div class="col-md-6 res-mt-39">
                                                            <label class="form-control-label col-12">لوگو ویدیو ها</label>
                                                            <div class="m-section__content tshtextright col-12">
                                                                <button class="btn btn-brand btn-sm" type="button" data-target="#uploader" data-toggle="modal" style="margin-bottom: 30px;">انتخاب عکس</button>
                                                                <%--<input hidden id="VideoLogoId" value="<%= Models.VideoLogo_Id %>"/>--%>
                                                                <asp:HiddenField ID="HiddenField_VideoLogoId" runat="server" Value="<%= Models.VideoLogo_Id %>"/>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="col-12 selected-img-div" style="margin: 0 0 30px 0;">
                                                                <div class="selected-pic" style="position: relative;">
                                                                    <button type="button" class="btn btn-danger delete-selected-pic" style="position: absolute; right: -8px; top: -10px; z-index: 999; padding: 4px 5px;"><i class="fa fa-trash"></i></button>
                                                                    <img src="<%= Models.VideoLogo_Path %>" class="uimg" data-name="نام عکس" data-label="لیبل" data-desc="توضیحات" alt="">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row mt-res-0" style="padding-top: 0; margin-top: 30px;">
                                                <div class="col-md-6">
                                                    <div class="row">
                                                        <div class="col-md-6 res-mt-39">
                                                            <label class="form-control-label col-12">لوگو منو</label>
                                                            <div class="m-section__content tshtextright col-12">
                                                                <button class="btn btn-brand btn-sm" type="button" data-target="#uploader" data-toggle="modal" style="margin-bottom: 30px;">انتخاب عکس</button>
                                                                <%--<input hidden id="MenuLogoId" value="<%= Models.MenuLogo_Id %>"/>--%>
                                                                <asp:HiddenField ID="HiddenField_MenuLogoId" runat="server" Value="<%= Models.MenuLogo_Id %>"/>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="col-12 selected-img-div" style="margin: 0 0 30px 0;">
                                                                <div class="selected-pic" style="position: relative;">
                                                                    <button type="button" class="btn btn-danger delete-selected-pic" style="position: absolute; right: -8px; top: -10px; z-index: 999; padding: 4px 5px;"><i class="fa fa-trash"></i></button>
                                                                    <img src="<%= Models.MenuLogo_Path %>" class="uimg" data-name="نام عکس" data-label="لیبل" data-desc="توضیحات" alt="">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="m-portlet__foot m-portlet__foot--fit col-12 mt-3">
                                            <div class="m-form__actions">
                                                <div class="row">
                                                    <div class="col-lg-12 tshtextleft" style="padding-left: 0;">
                                                       <%-- <button type="submit" class="btn btn-accent m-btn m-btn--air m-btn--custom sendblg">ذخیره</button>--%>
                                                        <asp:Button ID="Button1" runat="server" Text="ذخیره" CssClass="btn btn-accent m-btn m-btn--air m-btn--custom sendblg" OnClick="Button1_Click"/>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder_Scripts" runat="server">

    <script>
        var Treeview = {
            init: function () {
                $("#m_tree_1").jstree({ core: { themes: { responsive: !1 } }, types: { default: { icon: "fa fa-folder" }, file: { icon: "fa fa-file" } }, plugins: ["types"] }),
                    $("#m_tree_2").jstree({ core: { themes: { responsive: !1 } }, types: { default: { icon: "fa fa-folder m--font-warning" }, file: { icon: "fa fa-file  m--font-warning" } }, plugins: ["types"] }),
                    $("#m_tree_2").on("select_node.jstree", function (e, t) {
                        var n = $("#" + t.selected).find("a");
                        if ("#" != n.attr("href") && "javascript:;" != n.attr("href") && "" != n.attr("href")) return "_blank" == n.attr("target") && (n.attr("href").target = "_blank"), (document.location.href = n.attr("href")), !1;
                    }),
                    $("#m_tree_3").jstree({
                        plugins: ["wholerow", "checkbox", "types"],
                        core: {
                            themes: { responsive: !1 },
                            data: [
                                {
                                    text: "تمامی دسته بندی ها",
                                    children: [
                                        { text: "ساب منو ساب من ساب منو" },
                                        { text: "ساب منو ساب منو" },
                                        { text: "سب منو" },
                                    ],
                                },
                                {
                                    text: "تمامی دسته بندی ها",
                                    children: [
                                        { text: "ساب منو ساب من ساب منو" },
                                        { text: "ساب منو ساب منو" },
                                        { text: "سب منو" },
                                    ],
                                },
                                {
                                    text: "تمامی دسته بندی ها",
                                    children: [
                                        { text: "ساب منو ساب من ساب منو" },
                                        { text: "ساب منو ساب منو" },
                                        { text: "سب منو" },
                                    ],
                                },
                                {
                                    text: "تمامی دسته بندی ها",
                                    children: [
                                        { text: "ساب منو ساب من ساب منو" },
                                        { text: "ساب منو ساب منو" },
                                        { text: "سب منو" },
                                    ],
                                },
                                {
                                    text: "تمامی دسته بندی ها",
                                    children: [
                                        { text: "ساب منو ساب من ساب منو" },
                                        { text: "ساب منو ساب منو" },
                                        { text: "سب منو" },
                                    ],
                                },
                            ],
                        },
                        types: { default: { icon: "fa fa-folder m--font-warning" }, file: { icon: "fa fa-file  m--font-warning" } },
                    }),
                    $("#m_tree_4").jstree({
                        core: {
                            themes: { responsive: !1 },
                            check_callback: !0,
                            data: [
                                {
                                    text: " انتخاب همه",
                                    children: [
                                        { text: "انتخاب شده", state: { selected: !0 } },
                                        { text: "آیکون سفارشی", icon: "fa fa-warning m--font-danger" },
                                        { text: "باز", icon: "fa fa-folder m--font-success", state: { opened: !0 }, children: [{ text: "دیگر گره ها", icon: "fa fa-file m--font-waring" }] },
                                        { text: "دیگر آیکون سفارشی", icon: "fa fa-warning m--font-waring" },
                                        { text: " انتخاب همه غیرفعال ", icon: "fa fa-check m--font-success", state: { disabled: !0 } },
                                        {
                                            text: "زیر گره ها",
                                            icon: "fa fa-folder m--font-danger",
                                            children: [
                                                { text: "آیتم 1", icon: "fa fa-file m--font-waring" },
                                                { text: "آیتم 2", icon: "fa fa-file m--font-success" },
                                                { text: "آیتم 3", icon: "fa fa-file m--font-default" },
                                                { text: "آیتم 4", icon: "fa fa-file m--font-danger" },
                                                { text: "آیتم 5", icon: "fa fa-file m--font-info" },
                                            ],
                                        },
                                    ],
                                },
                                "دیگر انتخاب همه",
                            ],
                        },
                        types: { default: { icon: "fa fa-folder m--font-brand" }, file: { icon: "fa fa-file  m--font-brand" } },
                        state: { key: "demo2" },
                        plugins: ["contextmenu", "state", "types"],
                    }),
                    $("#m_tree_5").jstree({
                        core: {
                            themes: { responsive: !1 },
                            check_callback: !0,
                            data: [
                                {
                                    text: " انتخاب همه",
                                    children: [
                                        { text: "انتخاب شده", state: { selected: !0 } },
                                        { text: "آیکون سفارشی", icon: "fa fa-warning m--font-danger" },
                                        { text: "باز", icon: "fa fa-folder m--font-success", state: { opened: !0 }, children: [{ text: "دیگر گره ها", icon: "fa fa-file m--font-waring" }] },
                                        { text: "دیگر آیکون سفارشی", icon: "fa fa-warning m--font-waring" },
                                        { text: "غیرفعال", icon: "fa fa-check m--font-success", state: { disabled: !0 } },
                                        {
                                            text: "زیر گره",
                                            icon: "fa fa-folder m--font-danger",
                                            children: [
                                                { text: "آیتم 1", icon: "fa fa-file m--font-waring" },
                                                { text: "آیتم 2", icon: "fa fa-file m--font-success" },
                                                { text: "آیتم 3", icon: "fa fa-file m--font-default" },
                                                { text: "آیتم 4", icon: "fa fa-file m--font-danger" },
                                                { text: "آیتم 5", icon: "fa fa-file m--font-info" },
                                            ],
                                        },
                                    ],
                                },
                                "دیگر انتخاب همه",
                            ],
                        },
                        types: { default: { icon: "fa fa-folder m--font-success" }, file: { icon: "fa fa-file  m--font-success" } },
                        state: { key: "demo2" },
                        plugins: ["dnd", "state", "types"],
                    }),
                    $("#m_tree_6").jstree({
                        core: {
                            themes: { responsive: !1 },
                            check_callback: !0,
                            data: {
                                url: function (e) {
                                    return "https://keenthemes.com/metronic/themes/themes/metronic/dist/preview/inc/api/jstree/ajax_data.php";
                                },
                                data: function (e) {
                                    return { parent: e.id };
                                },
                            },
                        },
                        types: { default: { icon: "fa fa-folder m--font-brand" }, file: { icon: "fa fa-file  m--font-brand" } },
                        state: { key: "demo3" },
                        plugins: ["dnd", "state", "types"],
                    });
            },
        };
        jQuery(document).ready(function () {
            Treeview.init();
        });

    </script>
    <script>
        var ActionsDemo = { init: function () { $(".summernote").summernote({ height: 350 }) } }; jQuery(document).ready(function () { ActionsDemo.init() });
    </script>


</asp:Content>
