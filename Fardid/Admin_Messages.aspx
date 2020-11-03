<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Admin_Messages.aspx.cs" Inherits="Fardid.Admin_Messages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_Css" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_Modal" runat="server">

    <div class="modal fade" id="view-message" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">نمایش پیام</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="بستن">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label for="view-message-modal-name" class="form-control-label">نام و نام خانوادگی</label>
                            <input type="text" class="form-control" id="view-message-modal-name" disabled="disabled">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="view-message-modal-subject" class="form-control-label">موضوع</label>
                            <input type="text" class="form-control" id="view-message-modal-subject" disabled="disabled">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="view-message-modal-email" class="form-control-label">ایمیل</label>
                        <input type="text" class="form-control" id="view-message-modal-email" disabled="disabled">
                    </div>
                    <div class="form-group">
                        <label for="view-message-modal-message" class="form-control-label">پیام</label>
                        <textarea class="form-control textarea-padding resize-none" id="view-message-modal-message" disabled="disabled" style="height: 150px;"></textarea>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">بستن</button>
                    <button type="button" class="btn btn-primary send-message-btn-view-modal" data-dismiss="modal" data-toggle="modal" data-target="#send-message">پاسخ</button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="send-message" tabindex="-1" role="dialog" aria-hidden="true" style="overflow-y: auto; overflow-x: hidden;">
        <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
            <div class="modal-content">
                <form action="" method="post" autocomplete="off" id="send-message-form">
                    <div class="modal-header">
                        <h5 class="modal-title">ارسال پیام</h5>
                        <button type="button" class="close" data-dismiss="modal" data-toggle="modal" data-target="#view-message" aria-label="بستن">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label for="send-message-modal-name" class="form-control-label">دریافت کننده</label>
                                <input type="text" class="form-control" id="send-message-modal-name" disabled="disabled">
                                <small class="text-right" style="display: block"></small>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="send-message-modal-email" class="form-control-label">ایمیل</label>
                                <input type="text" class="form-control" id="send-message-modal-email" disabled="disabled">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="send-message-modal-message" class="form-control-label">پیام های ارسالی قبل</label>
                            <p class="rep-messages">
                                پیام پیام
                            </p>
                            <p class="rep-messages">
                                لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است، و برای شرایط فعلی تکنولوژی مورد نیاز، و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد، کتابهای زیادی در شصت و سه درصد گذشته حال و آینده، شناخت فراوان جامعه و متخصصان را می طلبد، تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی، و فرهنگ پیشرو در زبان فارسی ایجاد کرد، در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها، و شرایط سخت تایپ به پایان رسد و زمان مورد نیاز شامل حروفچینی دستاوردهای اصلی، و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.
                            </p>
                        </div>
                        <div class="form-group">
                            <label for="send-message-modal-message" class="form-control-label">پیام</label>
                            <textarea class="form-control textarea-padding resize-none" name="sefs3" id="send-message-modal-message" style="height: 150px;"></textarea>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal" data-toggle="modal" data-target="#view-message">بازگشت</button>
                        <button type="submit" class="btn btn-primary">ارسال</button>
                    </div>
                </form>
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
                            <span class="m-subheader__daterange-title tshfontsize2" style="margin-right: 2px; margin-left: 2px;">پیام ها</span>
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
													پیام ها
												</cust_title>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="tab-content">
                        <div class="tab-pane active" id="m_user_profile_tab_1">
                            <form class="m-form m-form--fit m-form--label-align-right" onsubmit="return false;">
                                <div class="m-portlet__body" style="padding-bottom: 0">
                                    <div class="col-12">
                                        <div class="container-fluid">
                                            <table class="cust-table table table-striped table-hover m-table m-table--head-separator-primary">
                                                <thead>
                                                    <tr>
                                                        <th>#</th>
                                                        <th>نام و نام خانوادگی</th>
                                                        <th>موضوع</th>
                                                        <th>تاریخ ارسال</th>
                                                        <th>وضعیت</th>
                                                        <th>عملیات</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <asp:DataList ID="DataList1" runat="server">
                                                        <ItemTemplate>
                                                            <tr>
                                                                <th scope="row"><%# Eval("Num") %></th>
                                                                <td><%# Eval("Name") %></td>
                                                                <td><%# Eval("Name") %></td>
                                                                <td><%# Eval("Date") %></td>
                                                                <td>
                                                                    <%
                                                                        if ((int)Eval("Seen") == 1)
                                                                        {
                                                                            if ((int)Eval("Answered") == 1)
                                                                            { %>
                                                                    <button class="btn btn-success tshpcustom">پاسخ داده شده</button>
                                                                    <% }
                                                                        else
                                                                        {%>
                                                                    <button class="btn btn-warning tshpcustom">بدون پاسخ</button>
                                                                    <% }
                                                                    }
                                                                    else
                                                                    { %>
                                                                    <button class="btn btn-danger tshpcustom">دیده نشده</button>
                                                                    <%} %>
                                                                </td>
                                                                <td>
                                                                    <button class="btn btn-brand tshpcustom view-message-btn" data-toggle="modal" data-target="#view-message" data-name="<%# Eval("Name") %>" data-subject="<%# Eval("Name") %>" data-email="<%# Eval("Email") %>" data-message="<%# Eval("Message") %>"><i class="fa fa-eye tshfa"></i>نمایش</button>
                                                                </td>
                                                            </tr>
                                                        </ItemTemplate>
                                                    </asp:DataList>
                                                </tbody>
                                            </table>
                                            <table style="display: none;" class="cust-table cust-table-2 table table-striped table-hover m-table m-table--head-separator-primary">
                                                <tr>
                                                    <th>#</th>
                                                    <td>1</td>

                                                </tr>
                                                <tr>
                                                    <th>نام و نام خانوادگی</th>
                                                    <td>امیرحسین عرب</td>
                                                </tr>
                                                <tr>
                                                    <th>موضوع</th>
                                                    <td>ساخت تیزر</td>
                                                    <tr>
                                                        <th>تاریخ ارسال</th>
                                                        <td>1399/05/19</td>
                                                    </tr>
                                                <tr>
                                                    <th>وضعیت</th>
                                                    <td>
                                                        <button class="btn btn-warning tshpcustom">بدون پاسخ</button>
                                                        <button class="btn btn-danger tshpcustom">دیده نشده</button>
                                                        <button class="btn btn-success tshpcustom">پاسخ داده شده</button>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th>عملیات</th>
                                                    <td>
                                                        <button class="btn btn-brand tshpcustom view-message-btn" data-toggle="modal" data-target="#view-message" data-name="امیرحسین عرب" data-subject="ساخت تیزر" data-email="amir@gmail.com" data-message="پیام پیام پیام"><i class="fa fa-eye tshfa"></i>نمایش</button>
                                                    </td>
                                                </tr>
                                            </table>
                                            <div class="col-lg-12 mt-4 mb-4">
                                                <span class="col-lg-3">صفحه
															<span>50</span>
                                                    از
															<span>170</span>
                                                </span>
                                                <ul style="display:none" class="tshpaglist col-lg-9 mb-5">
                                                    <li class="btn btn-brand disabled">قبلی</li>
                                                    <li class="btn btn-brand active-pag">1</li>
                                                    <li class="btn btn-brand">2</li>
                                                    <li class="btn btn-brand">3</li>
                                                    <li class="btn btn-brand">4</li>
                                                    <li class="btn btn-brand">5</li>
                                                    <li class="btn btn-brand">6</li>
                                                    <li class="btn btn-brand">7</li>
                                                    <li class="btn btn-brand">8</li>
                                                    <li class="btn btn-brand">9</li>
                                                    <li class="btn btn-brand">10</li>
                                                    <li class="btn btn-brand">بعدی</li>
                                                </ul>
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
