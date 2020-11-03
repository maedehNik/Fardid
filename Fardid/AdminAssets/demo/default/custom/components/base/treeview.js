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
                            text: "انتخاب همه",
                            children: [
                                { text: "اولین انتخاب شده", state: { selected: !1 } },
                                { text: "آیکون سفارشی", icon: "fa fa-warning m--font-danger" },
                                { text: "باز", icon: "fa fa-folder m--font-default", state: { opened: !0 }, children: ["دیگر گره ها"] },
                                { text: "آیکون سفارشی", icon: "fa fa-warning m--font-waring" },
                                { text: "گره های غیرفعال", icon: "fa fa-check m--font-success", state: { disabled: !0 } },
                            ],
                        },
                        "انتخاب کل",
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
