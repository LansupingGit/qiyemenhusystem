<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"/>
    <title>戈蓝得企业门户系统后台管理</title>
    <!--                       CSS                       -->
    <!-- Reset Stylesheet -->
    <link rel="stylesheet" href="resources/css/reset.css" type="text/css" media="screen"/>
    <!-- Main Stylesheet -->
    <link rel="stylesheet" href="resources/css/style.css" type="text/css" media="screen"/>
    <!-- Invalid Stylesheet. This makes stuff look pretty. Remove it if you want the CSS completely valid -->
    <link rel="stylesheet" href="resources/css/invalid.css" type="text/css" media="screen"/>
    <!--                       Javascripts                       -->
    <!-- jQuery -->
    <script type="text/javascript" src="resources/scripts/jquery-1.3.2.min.js"></script>
    <!-- jQuery Configuration -->
    <script type="text/javascript" src="resources/scripts/simpla.jquery.configuration.js"></script>
    <!-- Facebox jQuery Plugin -->
    <script type="text/javascript" src="resources/scripts/facebox.js"></script>
    <!-- jQuery WYSIWYG Plugin -->
    <script type="text/javascript" src="resources/scripts/jquery.wysiwyg.js"></script>

</head>
<body>

<div id="body-wrapper">
    <!-- Wrapper for the radial gradient background -->


    <%@ include file="left.jsp" %>


    <div id="main-content">

        <div class="clear"></div>
        <!-- End .clear -->
        <div class="content-box">
            <!-- Start Content Box -->
            <div class="content-box-header">
                <h3>${title }</h3>
                <ul class="content-box-tabs">

                </ul>
                <div class="clear"></div>
            </div>
            <!-- End .content-box-header -->
            <div class="content-box-content">


                <div class="tab-content default-tab" id="tab1">
                    <form action="${url }" method="post" enctype="multipart/form-data">
                        <fieldset>

                            <p>
                                <label>姓名</label>
                                <input class="text-input small-input" type="text" name="xingming"
                                       value="${bean.xingming }" disabled="disabled"/>
                            </p>

                            <p>
                                <label>邮件地址</label>
                                <input class="text-input small-input" type="text" name="youjianl"
                                       value="${bean.youjianl }" disabled="disabled"/>
                            </p>


                            <p>
                                <label>电话</label>
                                <input class="text-input small-input" type="text" name="dianhua"
                                       value="${bean.dianhua }" disabled="disabled"/>
                            </p>


                            <p>
                                <label>传真</label>
                                <input class="text-input small-input" type="text" name="chuanzhen"
                                       value="${bean.chuanzhen }" disabled="disabled"/>
                            </p>


                            <p>
                                <label>地址</label>
                                <input class="text-input small-input" type="text" name="dizhi" value="${bean.dizhi }"
                                       disabled="disabled"/>
                            </p>


                            <p>
                                <label>邮编</label>
                                <input class="text-input small-input" type="text" name="youbian"
                                       value="${bean.youbian }" disabled="disabled"/>
                            </p>


                            <p>
                                <label>留言内容</label>
                                <textarea name="neirong" cols="79" rows="15"
                                          disabled="disabled">${bean.neirong }</textarea>
                            </p>

                            <p>
                                <label>回复内容</label>
                                <textarea name="reply" cols="79" rows="15">${bean.reply}</textarea>
                            </p>


                            <p>
                                <input class="button" type="submit" value="回复"/>

                                <input class="button" type="button" value="返回" onclick="javascript:history.go(-1);"/>
                            </p>
                        </fieldset>
                        <div class="clear"></div>
                        <!-- End .clear -->
                    </form>
                </div>
                <!-- End #tab2 -->
            </div>
            <!-- End .content-box-content -->
        </div>


    </div>
    <!-- End #main-content -->
</div>
<script>
    function reply() {
        var replyContent = prompt('请输入回复内容');
        if (replyContent != null) {

        }
    }
</script>


</body>

</html>
