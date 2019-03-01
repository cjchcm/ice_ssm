/// <reference path="jquery-2.1.0.js" />
/// <reference path="jquery-ui-1.10.4.js" />
/// <reference path="jquery.validate.js" />
/// <reference path="jquery.validate.unobtrusive.js" />
/// <reference path="knockout-2.2.0.debug.js" />
/// <reference path="modernizr-2.7.1.js" />
//以上部分用于vs的智能感知

$(function () {
    //判断简历编辑返回cookie是否存在并刷新页面
    if (getCookie("resumeReturnCookie") == 1) {
        document.cookie = "resumeReturnCookie=2; path=/";
        window.location.reload();
    }
    //去除href历史记录
    $(".j_page a").click(function () {
        window.location.replace($(this).attr('href'));
        return false;
    });

})

//webkit后退缓存判断
window.onpageshow = function (event) {
    if (event.persisted) {
        if (getCookie("resumeReturnCookie") == 1) {
            document.cookie = "resumeReturnCookie=2; path=/";
            window.location.reload();
        }
    }
};

/**
    对话框界面的取消按钮点击
*/
function dialogCloseAction() {
    window.history.back();
}

/*下载页面的cookie名称*/
var downCookieName = 'hashowbanner';

function clearCookie() {
    if (checkCookie() == false) return;
    var date = new Date();
    date.setTime(date.getTime() - 10000);
    document.cookie = "zp-auth=0; expires=" + date.toGMTString() + "; path=/";
}
function userLogout() {
    clearCookie();
    location.href = "/";
}
function userLogin(noreturn) {

    if (checkCookie() == false) {
        alert("您的浏览器不支持cookie将无法登录,请使用其它浏览器");
        return;
    }
    _gaq.push(['_trackEvent', 'Login_Event', 'clicked']);
    if (noreturn) {
        window.location.href = "/account/login?prevUrl=" + escape(window.location.href) + "";
    } else {
        window.location.replace("/account/login?prevUrl=" + escape(window.location.href) + "");
    }

}

/**
    用于向当前页面中推入一个新页面
    url : 要推入的url地址
    hash : 是否将此hash写入历史记录
*/
function pushPage(url, hash, relodpage) {
    window.location.href = url;
    _gaq.push(['_trackPageview', 'http://m.zhaopin.com/account/regist']);
}

function indexCookie(v) {
    document.cookie = "indexc=1";
    if (v) {
        if (getCookie('indexc')) {
            $.mobile.changePage("/account/login", { role: "dialog", changeHash: false });
            document.cookie = "indexc=0";
        }
    }
}

function getCookie(objName) {
    var arrStr = document.cookie.split("; ");
    for (var i = 0; i < arrStr.length; i++) {
        var temp = arrStr[i].split("=");
        if (temp[0] == objName) return unescape(temp[1]);
    }
}

/**
    从当前页面导航栈中推出一个页面
    url : 要导向的URL 如果此参数为空，将使用 window.history.back()
          如果此参数有值，使用此url做为目标url
    hash : 是否将其此次更改写入历史记录，默认为false

    relodpage:是否重新加载页面
*/

//获取url主域名
function domainURI(str) {
    var durl = /(http|ftp|https):\/\/([^\/]+)\//i;
    domain = str.match(durl);
    return domain[0];
}

//从简历页返回时存cookie
function resumeReturnCookie() {
    document.cookie = "resumeReturnCookie=1; path=/";
}

function popPage(url, hash, relodpage) {
    if (document.referrer != "") {
        var refUrl = domainURI(document.referrer);
    }
    if (document.referrer != "" && refUrl.indexOf(window.location.host) == "-1") {
        window.location = "/";
        return false;
    } else if (window.history.length <= 1) {
        window.location = "/";
        return false;
    }
    if (url == undefined || url == '') {
        
        //if (/(iPhone|iPad|iPod)/i.test(navigator.userAgent)) {
        //    alert(window.document.referrer);
         //   window.location.replace(window.document.referrer);
        //} else {
            window.history.back();
        //}
    }
    else {
        location.href = url;
    }
    return false;
}

/**
 * 检查客户端是否已包含登录的cookie
 * @returns 返回bool表示是否已经登录
 * @type Boolean
 */
function checkCookie() {
    if (window.navigator.cookieEnabled)
        return true;
    else
        return false;
}

/**
    判断客户端类型
    返回客户端类型
    通过    .iphone和.android,.wphone判断
    如果    .iphone为true,则为iphone设备,.android为true，则为android设备
            .wphone为windows phone设备
*/
function checkDevice() {
    var ua = navigator.userAgent;
    var checker = {
        iphone: ua.match(/(iPhone|iPad|iPod)/) != undefined,
        android: ua.match(/Android/) != undefined,
        wphone: ua.match(/IEMobile/) != undefined
    }
    return checker;
}


/**
处理网站所有ajax get 请求结果的回调
data,textStatus,jqxhr  与$.get()中的函数返回一致
funcSusess表示如果成功后的回调
*/
function handleGetAjaxResult(data, textStatus, jqxhr, funcSusess) {
    //判断是否请求成功
    if (textStatus != "success") {
        alert("联网失败");
        return;
    }
    if (data == undefined) {//没有收到请求数据
        alert("联网失败");
        return;
    }
    funcSusess(data);
}

/**
    处理网站所有ajaxpost请求结果的回调
    data : ajax请求得到的data
    textStatus : ajax请求得到的textStatus
    jqXHR : ajax请求得到的jqXHR
    funcSusess : 用于处理成功回调的函数
*/
function handlePostAjaxResult(data, textStatus, jqXHR, funcSusess) {
    //"success", "notmodified", "error", "timeout", "abort", or "parsererror"
    //判断是否请求成功
    if (textStatus != "success") {
        alert("联网失败");

        return;
    }
    if (data == undefined) {//没有收到请求数据
        alert("联网失败");
        return;
    }
    if (data.StatusCode != 200) {//服务器产生的异常
        //如果是208 表示用户uticket过期，将cookie清除
        if (data.StatusCode == 208) {
            //清空用户登录的cookie
            clearCookie();
            alert("登录凭证已过期");
            return;
        }
        //如果是209 表示用户名已存在
        if (data.StatusCode == 209) {
            //清空用户登录的cookie
            alert(data.StatusDescription);
            return;
        }
        //如果是NeedVerifyCode 表示提示输入验证码
        if (data.NeedVerifyCode == true) {
            funcSusess(data);
            return;
        }
        //如果是600 表示登陆验证码为空
        if (data.StatusCode == 600) {
            //清空用户登录的cookie
            funcSusess(data);
            return;
        }
        //如果是601 表示登陆验证码错误
        if (data.StatusCode == 601) {
            //清空用户登录的cookie
            funcSusess(data);
            return;
        }

        alert(data.StatusDescription);
        return;
    }
    //请求成功
    funcSusess(data);
}
///ios的下载地址
var dl_ios_url = "http://itunes.apple.com/cn/app/id488033535";
///android的下载地址
var dl_android_url = "http://images.zhaopin.com/2012/other/mobile/zhaopin_mzhan.apk";

//page页面跳转
function pagechange(_this) {
    var a = $(_this).val();
    window.location.replace(a);

}

//验证手机号码
function cheakMobile(obj) {
    var re = /^1[3|4|5|7|8][0-9]\d{8}$/;
    var a = re.test($(obj).val());
    return (a);
}

//获取ga统计cookie(utmcsr)
function parseAnalyticsCookie() {
    var values = {};
    var cookie = readCookie("__utmz");
    if (cookie) {
        var z = cookie.split('.');
        if (z.length >= 4) {
            var y = z[4].split('|');
            for (i = 0; i < y.length; i++) {
                var pair = y[i].split("=");
                values[pair[0]] = pair[1];
            }
        }
    }
    return values;
}
var ga_utmz_utmcsr = parseAnalyticsCookie() || {};

//ga读取cookie
function readCookie(name) {
    var nameEQ = name + "=";
    var ca = document.cookie.split(';');
    for (var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') c = c.substring(1, c.length);
        if (c.indexOf(nameEQ) == 0) {
            return c.substring(nameEQ.length, c.length);
        }
    }
    return null;
}



//倒计时
function theCountdown() {
    var $text = $("#theCountdown").children(".num");
    var $wrap = $(".status_tit");
    var i = 10;
    var time = setInterval(function () {
        i--;
        $text.text(i);
        if (i == 0) {
            clearInterval(time);
            $wrap.addClass("h");
            $("#theCountdown").hide();
            wx.closeWindow();
        }
    }, 1000);
    $("#theCountdown").children(".stop").click(function () {
        clearInterval(time);
        $wrap.addClass("h");
        $("#theCountdown").hide();
    });
}


//创建简历
function ResumeCreate(flag) {
    if ($("#indexListInfo .resumeListWrap").length >= 3) {
        alert("最多可创建3份简历");
        return false;
    }

    $.post('/Resume/ResumeCreate',
        {
            source: ga_utmz_utmcsr.utmcsr,
            resumeType: flag
        },
        function (data, textStatus, jqxhr) {
        handlePostAjaxResult(data, textStatus, jqxhr, function (data) {
            pushPage(data.Url, false);
        });
    }, "json");
}

$(function () {
    $("#minheight").css("min-height", $(window).height() - 111);
})
//ga统计页面pv
$(document).ready(function () {
    $("#retutnIndex").click(function () {
        var citycode = getCookie("citycode");
        if (citycode != undefined && citycode != null) { 
        window.location.href = "/?citycode=" + getCookie("citycode");
        return false;
        }
    });
});

