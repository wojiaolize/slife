<html>
<head>
    <title>系统用户编辑</title>

    <link href="${base}/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="${base}/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="${base}/css/animate.css" rel="stylesheet">
    <link href="${base}/css/style.css?v=4.1.0" rel="stylesheet">
    <link href="${base}/css/slife.css" rel="stylesheet">
    <link href="${base}/css/plugins/select2/select2.css" rel="stylesheet">

    <link href="${base}/css/plugins/dropzone/dropzone.css" rel="stylesheet">
    <!-- 全局js -->
    <script src="${base}/js/jquery.min.js?v=2.1.4"></script>
    <script src="${base}/js/bootstrap.min.js?v=3.3.6"></script>
    <script src="${base}/js/plugins/validate/jquery.validate.min.js"></script>
    <script src="${base}/js/plugins/validate/messages_zh.min.js"></script>
    <script src="${base}/js/plugins/layer/layer.min.js"></script>
    <script src="${base}/js/jquery.form.js"></script>

    <script src="${base}/js/plugins/select2/select2.min.js"></script>
    <script src="${base}/js/plugins/dropzone/dropzone.min.js"></script>
    <script>
        var url = "${url}";
    </script>
</head>

<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">
                <div class="ibox-content">

                    <form action="${base}/sys/user/${action}" class="form-horizontal form-bordered" method="POST"
                          id="slifeForm" enctype="multipart/form-data">
                        <input type="hidden" name="id" value="${sysUser.id}"/>
                        <input type="hidden" name="photo" value="${sysUser.photo}" id="photo"/>

                        <div class="form-group">
                            <label class="col-sm-3 control-label">头像</label>
                            <div class="col-sm-2">
                                <div id="localImag" style="margin-left:15px;">
                                    <div class="img_box" id="imgBox">
                                            <img id="imgshowdiv" style="width: 60px" src="${sysUser.photo}"
                                                 onerror="javascript:errimg()" class="img_file img-rounded"/>

                              <#--          <div class="img_edit_box">
                                            <a class="img_desr" href="javascript:doDeleteImg()">删除</a>
                                        </div>-->
                                    </div>
                                </div>
                            </div>
                        <#if action !='detail'>
                            <div class="col-sm-4">
                                <div id="mydropzone" class="dropzone"></div>
                            </div>
                        </#if>
                        </div>


                        <div class="form-group">
                            <label class="col-sm-3 control-label">登录名<span class="required">*</span></label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" name="loginName" placeholder="请输入登录名"
                                       value="${sysUser.loginName}" required aria-required="true"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 control-label">用户名<span class="required">*</span></label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" name="name" placeholder="请输入用户名"
                                       value="${sysUser.name}"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 control-label">电子邮件<span class="required">*</span></label>

                            <div class="col-sm-8">
                                <input name="email" type="email" class="form-control" value="${sysUser.email}"
                                       placeholder="电子邮件地址">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 control-label">密码<#if action =='insert'><span
                                    class="required">*</span></#if></label>

                            <div class="col-sm-8">
                                <div class="input-icon right">
                                    <input name="password" type="password" class="form-control"
                                           placeholder="请输入登录密码">
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 control-label">工号</label>

                            <div class="col-sm-8">
                                <input name="no" type="text" class="form-control" value="${sysUser.no}"
                                       placeholder="工号">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 control-label">电话</label>

                            <div class="col-sm-3">
                                <div class="input-group">
                                    <input name="phone" type="text" class="form-control" value="${sysUser.phone}"
                                           placeholder="电话">
                                </div>
                            </div>

                            <label class="col-sm-2 control-label">手机</label>

                            <div class="col-sm-3">
                                <input name="mobile" type="text" class="form-control" value="${sysUser.mobile}"
                                       placeholder="手机">
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="col-sm-3 control-label">备注</label>

                            <div class="col-sm-8">
                                <input name="remark" type="text" class="form-control" value="${sysUser.remark}"
                                       placeholder="备注">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 control-label">状态</label>

                            <div class="col-sm-8">
                                <select name="status" class="form-control">
                                    <option value="Y">启用</option>
                                    <option value="N">禁用</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">角色</label>

                            <div class="col-sm-8">
                                <select name="ids" multiple="multiple" class="select" style="width: 100%;">
                                <#list roles as r>
                                    <option value="${r.id}">${r.name}</option>
                                </#list>
                                </select>
                            </div>
                        </div>

                    <#if action !='detail'>
                        <div class="form-actions fluid">
                            <div class="col-md-offset-3 col-md-9">
                                <button type="button" class="btn green" onclick="saveForm()">保存</button>

                            </div>
                        </div>
                    </#if>
                    </form>

                </div>
            </div>
        </div>
    </div>
</div>


<script type="text/javascript">

    function saveForm() {
        $.ajax({
            cache : true,
            type : "POST",
            url : "${base}/sys/user/${action}",
            data : $('#slifeForm').serialize(),// 你的formid
            async : false,
            error : function(request) {
                parent.layer.alert("Connection error");
            },
            success : function(data) {
                if (data.code == 200) {
                    parent.layer.msg("操作成功");
                    parent.re_load();
                    var index = parent.layer.getFrameIndex(window.name); // 获取窗口索引
                    parent.layer.close(index);

                } else {
                    parent.layer.alert(data.error)
                }

            }
        });

    }

    function errimg() {
        $("#photo").val("/img/log9.png");
        $("#imgshowdiv").attr('src', "/img/log9.png");
    }

    /**
     * 删除头像
     */

    function doDeleteImg() {

        var name = $("#photo").val();
        layer.confirm('确定要删除头像吗？', {
            btn: ['确定', '取消']
        }, function () {
            $.ajax({
                url: url + "delete/photo",
                type: "POST",
                data: {
                    'name': name
                },
                success: function (r) {
                    if (r.code == 200) {
                        errimg();

                    } else {
                        layer.msg(r.error);
                    }
                }
            });
        })

    }



    var select = $(".select").select2();

    <#if action !='insert'>
    $("select[name=status] option[value='${sysUser.status}']").attr("selected", "selected");
    var data = [];
        <#list sysUser.sysRoles as r>
        data.push({id:${r.id}, text: '${r.name}'});
        </#list>

    select.select2("data", data);
    </#if>

    var form = $('#slifeForm');
    var error = $('.alert-danger', form);
    form.validate({
        errorElement: 'span',
        errorClass: 'help-block help-block-error',
        focusInvalid: true,
        messages: {
            loginName: {remote: "登陆名已经存在"}
        },
        rules: {
            loginName: {
                minlength: 2,
                maxlength: 30,
                required: true,
                remote: '${base}/sys/user/check/${sysUser.id}'
            },
            name: {
                required: true
            },
            email: {
                required: true,
                email: true
            },
            active: {
                required: true
            },
            password: {
                maxlength: 16,
                required: true
            },
            no: {
                maxlength: 100,
                required: true
            }
        },
        invalidHandler: function (event, validator) {
            error.show();
            Metronic.scrollTo(error, -200);
        },
        highlight: function (element) {
            $(element).closest('.form-group').addClass('has-error');
        },
        unhighlight: function (element) {
            $(element).closest('.form-group').removeClass('has-error');
        },
        success: function (label) {
            label.closest('.form-group').removeClass('has-error');
        },
        submitHandler: function (form) {
            error.hide();
            form.submit();
        }
    });


    var myDropzone = new Dropzone("div#mydropzone", {
        url: "/file/upload/avatar",
        filesizeBase: 1024,//定义字节算法 默认1000
        maxFiles: 2,//最大文件数量
        maxFilesize: 100, //MB
        fallback: function () {
            layer.alert('暂不支持您的浏览器上传!');
        },
        uploadMultiple: false,
        addRemoveLinks: true,
        dictFileTooBig: '您的文件超过' + 100 + 'MB!',
        dictInvalidInputType: '不支持您上传的类型',
        dictMaxFilesExceeded: '您的文件超过1个!',
        init: function () {
            this.on('queuecomplete', function (files) {
                // layer.alert('上传成功');
            });
            this.on('success', function (uploadimfo,result) {
                console.info(result);
                $("#photo").val(result.message[0].s_url);
                $("#imgshowdiv").attr('src', result.message[0].s_url);
                layer.alert('上传成功');
            });
            this.on('error', function (a, errorMessage, result) {
                if (!result) {
                    layer.alert(result.error || '上传失败');
                }
            });
            this.on('maxfilesreached', function () {
                this.removeAllFiles(true);
                layer.alert('文件数量超出限制');
            });
            this.on('removedfile', function () {
                $("#photo").val("${sysUser.photo}");
                $("#imgshowdiv").attr('src'," {sysUser.photo}");
                layer.alert('删除成功');
            });

        }
    });


</script>


</body>

</html>