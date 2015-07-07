<!DOCTYPE html>
<html lang="en">
<head>
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta charset="utf-8">
  <title>
  tequilasunset / auto-complete-latex 
  / ソース  / auto-complete-latex.el
 &mdash; Bitbucket
</title>
  <link rel="icon" type="image/png" href="https://d3oaxc4q5k2d6q.cloudfront.net/m/6c283f25a901/img/favicon.png">
  <meta id="bb-canon-url" name="bb-canon-url" content="https://bitbucket.org">
  
  
    
<link rel="stylesheet" href="https://d3oaxc4q5k2d6q.cloudfront.net/m/6c283f25a901/compressed/css/7445461a44c3.css" type="text/css" />
<link rel="stylesheet" href="https://d3oaxc4q5k2d6q.cloudfront.net/m/6c283f25a901/compressed/css/e847eb6b56e9.css" type="text/css" />

  
  <!--[if lt IE 9]><link rel="stylesheet" href="https://d3oaxc4q5k2d6q.cloudfront.net/m/6c283f25a901//lib/aui/css/aui-ie.css" media="all"><![endif]-->
  <!--[if IE 9]><link rel="stylesheet" href="https://d3oaxc4q5k2d6q.cloudfront.net/m/6c283f25a901//lib/aui/css/aui-ie9.css" media="all"><![endif]-->
  <!--[if IE]><link rel="stylesheet" href="https://d3oaxc4q5k2d6q.cloudfront.net/m/6c283f25a901/css/aui-overrides-ie.css" media="all"><![endif]-->
  <meta name="description" content=""/>
  <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="Bitbucket" />
  
  
    <link href="/tequilasunset/auto-complete-latex/rss" rel="alternate nofollow" type="application/rss+xml" title="RSS feed for auto-complete-latex" />
  

<script type="text/javascript">(window.NREUM||(NREUM={})).loader_config={xpid:"VwMGVVZSGwIIUFBQDwU="};window.NREUM||(NREUM={}),__nr_require=function(t,e,n){function r(n){if(!e[n]){var o=e[n]={exports:{}};t[n][0].call(o.exports,function(e){var o=t[n][1][e];return r(o?o:e)},o,o.exports)}return e[n].exports}if("function"==typeof __nr_require)return __nr_require;for(var o=0;o<n.length;o++)r(n[o]);return r}({1:[function(t,e){function n(t,e,n){n||(n={});for(var r=o[t],a=r&&r.length||0,s=n[i]||(n[i]={}),u=0;a>u;u++)r[u].apply(s,e);return s}function r(t,e){var n=o[t]||(o[t]=[]);n.push(e)}var o={},i="nr@context";e.exports={on:r,emit:n}},{}],2:[function(t){function e(t,e,o,a,u){return s?s-=1:n("err",[u||new UncaughtException(t,e,o)]),"function"==typeof i?i.apply(this,r(arguments)):!1}function UncaughtException(t,e,n){this.message=t||"Uncaught error with no additional information",this.sourceURL=e,this.line=n}var n=t("handle"),r=t(6),o=t(5),i=window.onerror,a=!1,s=0;t("loader").features.push("err"),window.onerror=e;try{throw new Error}catch(u){"stack"in u&&(t(1),t(2),"addEventListener"in window&&t(3),window.XMLHttpRequest&&XMLHttpRequest.prototype&&XMLHttpRequest.prototype.addEventListener&&t(4),a=!0)}o.on("fn-start",function(){a&&(s+=1)}),o.on("fn-err",function(t,e,r){a&&(this.thrown=!0,n("err",[r,(new Date).getTime()]))}),o.on("fn-end",function(){a&&!this.thrown&&s>0&&(s-=1)}),o.on("internal-error",function(t){n("ierr",[t,(new Date).getTime(),!0])})},{1:5,2:4,3:3,4:6,5:1,6:14,handle:"D5DuLP",loader:"G9z0Bl"}],3:[function(t){function e(t){r.inPlace(t,["addEventListener","removeEventListener"],"-",n)}function n(t){return t[1]}var r=t(1),o=(t(3),t(2));if(e(window),"getPrototypeOf"in Object){for(var i=document;i&&!i.hasOwnProperty("addEventListener");)i=Object.getPrototypeOf(i);i&&e(i);for(var a=XMLHttpRequest.prototype;a&&!a.hasOwnProperty("addEventListener");)a=Object.getPrototypeOf(a);a&&e(a)}else XMLHttpRequest.prototype.hasOwnProperty("addEventListener")&&e(XMLHttpRequest.prototype);o.on("addEventListener-start",function(t){if(t[1]){var e=t[1];"function"==typeof e?this.wrapped=e["nr@wrapped"]?t[1]=e["nr@wrapped"]:e["nr@wrapped"]=t[1]=r(e,"fn-"):"function"==typeof e.handleEvent&&r.inPlace(e,["handleEvent"],"fn-")}}),o.on("removeEventListener-start",function(t){var e=this.wrapped;e&&(t[1]=e)})},{1:15,2:1,3:14}],4:[function(t){var e=(t(3),t(1)),n=t(2);e.inPlace(window,["requestAnimationFrame","mozRequestAnimationFrame","webkitRequestAnimationFrame","msRequestAnimationFrame"],"raf-"),n.on("raf-start",function(t){t[0]=e(t[0],"fn-")})},{1:15,2:1,3:14}],5:[function(t){function e(t){var e=t[0];"string"==typeof e&&(e=new Function(e)),t[0]=n(e,"fn-")}var n=(t(3),t(1)),r=t(2);n.inPlace(window,["setTimeout","setInterval","setImmediate"],"setTimer-"),r.on("setTimer-start",e)},{1:15,2:1,3:14}],6:[function(t){function e(){o.inPlace(this,s,"fn-")}function n(t,e){o.inPlace(e,["onreadystatechange"],"fn-")}function r(t,e){return e}var o=t(1),i=t(2),a=window.XMLHttpRequest,s=["onload","onerror","onabort","onloadstart","onloadend","onprogress","ontimeout"];window.XMLHttpRequest=function(t){var n=new a(t);return i.emit("new-xhr",[],n),o.inPlace(n,["addEventListener","removeEventListener"],"-",function(t,e){return e}),n.addEventListener("readystatechange",e,!1),n},window.XMLHttpRequest.prototype=a.prototype,o.inPlace(XMLHttpRequest.prototype,["open","send"],"-xhr-",r),i.on("send-xhr-start",n),i.on("open-xhr-start",n)},{1:15,2:1}],7:[function(t){function e(){function e(t){if("string"==typeof t&&t.length)return t.length;if("object"!=typeof t)return void 0;if("undefined"!=typeof ArrayBuffer&&t instanceof ArrayBuffer&&t.byteLength)return t.byteLength;if("undefined"!=typeof Blob&&t instanceof Blob&&t.size)return t.size;if("undefined"!=typeof FormData&&t instanceof FormData)return void 0;try{return JSON.stringify(t).length}catch(e){return void 0}}function n(t){var n=this.params,r=this.metrics;if(!this.ended){this.ended=!0;for(var i=0;u>i;i++)t.removeEventListener(s[i],this.listener,!1);if(!n.aborted){if(r.duration=(new Date).getTime()-this.startTime,4===t.readyState){n.status=t.status;var a=t.responseType,d="arraybuffer"===a||"blob"===a||"json"===a?t.response:t.responseText,p=e(d);if(p&&(r.rxSize=p),this.sameOrigin){var f=t.getResponseHeader("X-NewRelic-App-Data");f&&(n.cat=f.split(", ").pop())}}else n.status=0;r.cbTime=this.cbTime,o("xhr",[n,r])}}}function r(t,e){var n=i(e),r=t.params;r.host=n.hostname+":"+n.port,r.pathname=n.pathname,t.sameOrigin=n.sameOrigin}t("loader").features.push("xhr");var o=t("handle"),i=t(1),a=t(5),s=["load","error","abort","timeout"],u=s.length,d=t(2);t(3),t(4),a.on("new-xhr",function(){this.totalCbs=0,this.called=0,this.cbTime=0,this.end=n,this.ended=!1,this.xhrGuids={}}),a.on("open-xhr-start",function(t){this.params={method:t[0]},r(this,t[1]),this.metrics={}}),a.on("open-xhr-end",function(t,e){"loader_config"in NREUM&&"xpid"in NREUM.loader_config&&this.sameOrigin&&e.setRequestHeader("X-NewRelic-ID",NREUM.loader_config.xpid)}),a.on("send-xhr-start",function(t,n){var r=this.metrics,o=t[0],i=this;if(r&&o){var d=e(o);d&&(r.txSize=d)}this.startTime=(new Date).getTime(),this.listener=function(t){try{"abort"===t.type&&(i.params.aborted=!0),("load"!==t.type||i.called===i.totalCbs&&(i.onloadCalled||"function"!=typeof n.onload))&&i.end(n)}catch(e){a.emit("internal-error",e)}};for(var p=0;u>p;p++)n.addEventListener(s[p],this.listener,!1)}),a.on("xhr-cb-time",function(t,e,n){this.cbTime+=t,e?this.onloadCalled=!0:this.called+=1,this.called!==this.totalCbs||!this.onloadCalled&&"function"==typeof n.onload||this.end(n)}),a.on("xhr-load-added",function(t,e){var n=""+d(t)+!!e;this.xhrGuids&&!this.xhrGuids[n]&&(this.xhrGuids[n]=!0,this.totalCbs+=1)}),a.on("xhr-load-removed",function(t,e){var n=""+d(t)+!!e;this.xhrGuids&&this.xhrGuids[n]&&(delete this.xhrGuids[n],this.totalCbs-=1)}),a.on("addEventListener-end",function(t,e){e instanceof XMLHttpRequest&&"load"===t[0]&&a.emit("xhr-load-added",[t[1],t[2]],e)}),a.on("removeEventListener-end",function(t,e){e instanceof XMLHttpRequest&&"load"===t[0]&&a.emit("xhr-load-removed",[t[1],t[2]],e)}),a.on("fn-start",function(t,e,n){e instanceof XMLHttpRequest&&("onload"===n&&(this.onload=!0),("load"===(t[0]&&t[0].type)||this.onload)&&(this.xhrCbStart=(new Date).getTime()))}),a.on("fn-end",function(t,e){this.xhrCbStart&&a.emit("xhr-cb-time",[(new Date).getTime()-this.xhrCbStart,this.onload,e],e)})}window.XMLHttpRequest&&XMLHttpRequest.prototype&&XMLHttpRequest.prototype.addEventListener&&!/CriOS/.test(navigator.userAgent)&&e()},{1:8,2:11,3:3,4:6,5:1,handle:"D5DuLP",loader:"G9z0Bl"}],8:[function(t,e){e.exports=function(t){var e=document.createElement("a"),n=window.location,r={};e.href=t,r.port=e.port;var o=e.href.split("://");return!r.port&&o[1]&&(r.port=o[1].split("/")[0].split(":")[1]),r.port&&"0"!==r.port||(r.port="https"===o[0]?"443":"80"),r.hostname=e.hostname||n.hostname,r.pathname=e.pathname,"/"!==r.pathname.charAt(0)&&(r.pathname="/"+r.pathname),r.sameOrigin=!e.hostname||e.hostname===document.domain&&e.port===n.port&&e.protocol===n.protocol,r}},{}],handle:[function(t,e){e.exports=t("D5DuLP")},{}],D5DuLP:[function(t,e){function n(t,e){var n=r[t];return n?n.apply(this,e):(o[t]||(o[t]=[]),void o[t].push(e))}var r={},o={};e.exports=n,n.queues=o,n.handlers=r},{}],11:[function(t,e){function n(t){if(!t||"object"!=typeof t&&"function"!=typeof t)return-1;if(t===window)return 0;if(o.call(t,"__nr"))return t.__nr;try{return Object.defineProperty(t,"__nr",{value:r,writable:!0,enumerable:!1}),r}catch(e){return t.__nr=r,r}finally{r+=1}}var r=1,o=Object.prototype.hasOwnProperty;e.exports=n},{}],loader:[function(t,e){e.exports=t("G9z0Bl")},{}],G9z0Bl:[function(t,e){function n(){var t=c.info=NREUM.info;if(t&&t.agent&&t.licenseKey&&t.applicationID){c.proto="https"===f.split(":")[0]||t.sslForHttp?"https://":"http://",a("mark",["onload",i()]);var e=u.createElement("script");e.src=c.proto+t.agent,u.body.appendChild(e)}}function r(){"complete"===u.readyState&&o()}function o(){a("mark",["domContent",i()])}function i(){return(new Date).getTime()}var a=t("handle"),s=window,u=s.document,d="addEventListener",p="attachEvent",f=(""+location).split("?")[0],c=e.exports={offset:i(),origin:f,features:[]};u[d]?(u[d]("DOMContentLoaded",o,!1),s[d]("load",n,!1)):(u[p]("onreadystatechange",r),s[p]("onload",n)),a("mark",["firstbyte",i()])},{handle:"D5DuLP"}],14:[function(t,e){function n(t,e,n){e||(e=0),"undefined"==typeof n&&(n=t?t.length:0);for(var r=-1,o=n-e||0,i=Array(0>o?0:o);++r<o;)i[r]=t[e+r];return i}e.exports=n},{}],15:[function(t,e){function n(t,e,n,r){function nrWrapper(){try{var a,u=s(arguments),d=this,p=n&&n(u,d)||{}}catch(f){i([f,"",[u,d,r],p])}o(e+"start",[u,d,r],p);try{return a=t.apply(d,u)}catch(c){throw o(e+"err",[u,d,c],p),c}finally{o(e+"end",[u,d,a],p)}}return t&&"function"==typeof t&&t.apply&&!t._wrapped?(e||(e=""),nrWrapper._wrapped=!0,nrWrapper):t}function r(t,e,r,o){r||(r="");var i,a,s,u="-"===r.charAt(0);for(s=0;s<e.length;s++)a=e[s],i=t[a],i&&"function"==typeof i&&i.apply&&!i._wrapped&&(t[a]=n(i,u?a+r:r,o,a,t))}function o(t,e,n){try{a.emit(t,e,n)}catch(r){i([r,t,e,n])}}function i(t){try{a.emit("internal-error",t)}catch(e){}}var a=t(1),s=t(2);e.exports=n,n.inPlace=r},{1:1,2:14}]},{},["G9z0Bl",2,7]);</script></head>
<body class="production  aui-page-fixed"
      data-base-url="https://bitbucket.org"
      data-no-avatar-image="https://d3oaxc4q5k2d6q.cloudfront.net/m/6c283f25a901/img/default_avatar/16/user_blue.png"
      data-current-user="{&quot;isKbdShortcutsEnabled&quot;: true, &quot;isSshEnabled&quot;: false, &quot;isAuthenticated&quot;: false}"
      
      
      data-flag-upload-image="true"
       data-current-repo="{&quot;scm&quot;: &quot;hg&quot;, &quot;readOnly&quot;: false, &quot;mainbranch&quot;: {&quot;name&quot;: &quot;default&quot;}, &quot;language&quot;: &quot;&quot;, &quot;owner&quot;: {&quot;username&quot;: &quot;tequilasunset&quot;, &quot;isTeam&quot;: false}, &quot;fullslug&quot;: &quot;tequilasunset/auto-complete-latex&quot;, &quot;slug&quot;: &quot;auto-complete-latex&quot;, &quot;id&quot;: 42579, &quot;pygmentsLanguage&quot;: null}"
       data-current-cset="6c534e7733747ffb5deb9138f874216d4a6c5daa"
      
      
      
      >
<script type="text/javascript" src="https://d3oaxc4q5k2d6q.cloudfront.net/m/6c283f25a901/compressed/js/7a107bcc2ab3.js"></script>

<div id="page">
  <div id="wrapper">
    
  
    <header id="announcement" role="banner"
            class="aui-message-banner warning">
      <div class="aui-message-banner-inner">
        <span class="aui-icon aui-icon-warning"></span>
        <strong>We're migrating some repositories to new hardware. Read our <a href="http://blog.bitbucket.org/2014/04/22/were-migrating-repositories-to-new-hardware/">blog</a> for details.</strong>
      </div>
    </header>
  


    <header id="header" role="banner">
      
  
    
  

      <nav class="aui-header aui-dropdown2-trigger-group" role="navigation">
        <div class="aui-header-inner">
          <div class="aui-header-primary">
            
  

            
              <h1 class="aui-header-logo aui-header-logo-bitbucket logged-out" id="logo">
                <a href="/">
                  <span class="aui-header-logo-device">Bitbucket</span>
                </a>
              </h1>
            
            
  <script id="repo-dropdown-template" type="text/html">
  

[[#hasViewed]]
  <div class="aui-dropdown2-section">
    <strong class="viewed">最近閲覧したリポジトリ</strong>
    <ul class="aui-list-truncate">
      [[#viewed]]
        <li class="[[#is_private]]private[[/is_private]][[^is_private]]public[[/is_private]] repository">
          <a href="[[url]]" title="[[owner]]/[[name]]" class="aui-icon-container recently-viewed repo-link">
            <img class="repo-avatar size16" src="[[{avatar}]]" alt="[[owner]]/[[name]] avatar"/>
            [[owner]] / [[name]]
          </a>
        </li>
      [[/viewed]]
    </ul>
  </div>
[[/hasViewed]]
[[#hasUpdated]]
<div class="aui-dropdown2-section">
  <strong class="updated">最近更新したリポジトリ</strong>
  <ul class="aui-list-truncate">
    [[#updated]]
    <li class="[[#is_private]]private[[/is_private]][[^is_private]]public[[/is_private]] repository">
      <a href="[[url]]" title="[[owner]]/[[name]]" class="aui-icon-container recently-updated repo-link">
        <img class="repo-avatar size16" src="[[{avatar}]]" alt="[[owner]]/[[name]] avatar"/>
        [[owner]] / [[name]]
      </a>
    </li>
    [[/updated]]
  </ul>
</div>
[[/hasUpdated]]

</script>
  <ul class="aui-nav">
    
      <li>
        <a href="/features">
          機能
        </a>
      </li>
      <li>
        <a href="/plans">
            料金
        </a>
      </li>
    
  </ul>

          </div>
          <div class="aui-header-secondary">
            
  <ul role="menu" class="aui-nav">
    
    <li>
      <form action="/repo/all" method="get" class="aui-quicksearch">
        <label for="search-query" class="assistive">owner/repository</label>
        <input id="search-query" class="search" type="text" placeholder="owner/repository" name="name">
      </form>
    </li>
    <li>
      <a class="aui-dropdown2-trigger" id="help-dropdown-trigger"
         aria-controls="header-help-dropdown" aria-owns="header-help-dropdown"
         aria-haspopup="true" data-container="#header .aui-header-inner" href="#header-help-dropdown">
        <span class="aui-icon aui-icon-small aui-iconfont-help">ヘルプ</span><span class="aui-icon-dropdown"></span>
      </a>
      <nav id="header-help-dropdown" class="aui-dropdown2 aui-style-default aui-dropdown2-in-header" aria-hidden="true">
        <div class="aui-dropdown2-section">
          <ul>
            <li>
              <a href="/whats-new" id="features-link">
                最新の機能
              </a>
            </li>
          </ul>
        </div>
        <div class="aui-dropdown2-section">
          <ul>
            <li>
              <a class="support-ga"
                 data-support-gaq-page="DocumentationHome"
                 href="https://confluence.atlassian.com/x/bgozDQ"
                 target="_blank">
                ドキュメント
              </a>
            </li>
            <li>
              <a class="support-ga"
                 data-support-gaq-page="Documentation101"
                 href="https://confluence.atlassian.com/x/cgozDQ"
                 target="_blank">
                Bitbucket 101 (入門書)
              </a>
            </li>
            <li>
              <a class="support-ga"
                 data-support-gaq-page="DocumentationKB"
                 href="https://confluence.atlassian.com/x/2w4zDQ"
                 target="_blank">
                サポート情報
              </a>
            </li>
          </ul>
        </div>
        <div class="aui-dropdown2-section">
          <ul>
            <li>
              <a class="support-ga"
                 data-support-gaq-page="Answers"
                 href="https://answers.atlassian.com/tags/bitbucket/"
                 target="_blank">
                Atlassian AnswersページのBitbucket関連トピック
              </a>
            </li>
            <li>
              <a class="support-ga"
                 data-support-gaq-page="Home"
                 href="/support">
              サポート
            </a>
            </li>
          </ul>
        </div>
      </nav>
    </li>
      
        
          <li>
            <a class="aui-dropdown2-trigger" href="#header-language"
              aria-controls="header-language" aria-owns="header-language"
              aria-haspopup="true" data-container="#header .aui-header-inner">
              <span>日本語</span></a>
            <nav id="header-language" class="aui-dropdown2 aui-style-default aui-dropdown2-radio aui-dropdown2-in-header"
                aria-hidden="true">
              <form method="post" action="/account/language/setlang/">
                <input type='hidden' name='csrfmiddlewaretoken' value='CiMSvF5H64Ln4hZ3OsgzPY3qefr0gkAj' />
                <input type="hidden" name="language" value="">
                <ul>
                <li><a class="aui-dropdown2-radio interactive "
                      data-value="en" href="#en">English</a></li>
                
                <li><a class="aui-dropdown2-radio interactive checked"
                      data-value="ja" href="#ja">日本語</a></li>
                </ul>
              </form>
            </nav>
          </li>
        
      
    
        <li id="header-signup-button">
          <a id="sign-up-link" class="aui-button aui-button-primary aui-style" href="/account/signup/">
            サインアップ
          </a>
        </li>
      <li id="user-options">
        
          
            <a href="/account/signin/?next=/tequilasunset/auto-complete-latex/src/6c534e7733747ffb5deb9138f874216d4a6c5daa/auto-complete-latex.el%3Fat%3Dversion%25200.1.3" class="aui-nav-link login-link">ログイン</a>
          
        
      </li>
    
  </ul>

          </div>
        </div>
      </nav>
    </header>

    
  <header id="account-warning" role="banner" class="aui-message-banner warning
    ">
    <div class="aui-message-banner-inner">
      <span class="aui-icon aui-icon-warning"></span>
      <span class="message">
        
      </span>
    </div>
  </header>

    
    
      <header id="aui-message-bar">
        
      </header>
    


    <div id="content" role="main">
      
  <header id="repo-warning" role="banner" class="aui-message-banner warning">
    <div class="aui-message-banner-inner">
      <span class="aui-icon aui-icon-warning"></span>
      <span class="message">
      </span>
    </div>
  </header>
  <script id="repo-warning-template" type="text/html">
  




  このリポジトリの所有権は <a href="/[[username]]">[[username]]</a> に転送待ちです。
  詳しくは <a href="/tequilasunset/auto-complete-latex/admin/transfer">リポジトリの転送についてのページ</a> をご覧ください。


</script>
  
    

<header id="repo-header" class="aui-page-header" data-modules="repo/index">
      <div class="aui-page-header-inner">
        <div class="aui-page-header-image">
          <span class="aui-avatar aui-avatar-xlarge aui-avatar-project">
            <span class="aui-avatar-inner">
              <a class="repo-avatar-link" href="/tequilasunset/auto-complete-latex">
                 <span class="repo-avatar-container size64" title="tequilasunset/auto-complete-latex">
  <img alt="tequilasunset/auto-complete-latex" src="https://d3oaxc4q5k2d6q.cloudfront.net/m/6c283f25a901/img/language-avatars/default_64.png">
</span>

                
              </a>
            </span>
          </span>
        </div>
        <div class="aui-page-header-main">
          <h1><a class="repo-link" href="/tequilasunset/auto-complete-latex">auto-complete-latex</a></h1>
          <ul class="repo-metadata clearfix">
            <li>
              <a class="user" href="/tequilasunset" id="repo-owner-link">
                <span class="aui-icon aui-icon-small aui-iconfont-user">User icon</span>
                <span>tequilasunset</span>
              </a>
            </li>
            
            
            
          </ul>
        </div>
        <div id="repo-toolbar" class="aui-page-header-actions">
          
            <div class="aui-buttons">
              <a id="repo-clone-button" class="aui-button"
                href="https://bitbucket.org/tequilasunset/auto-complete-latex">
                <span class="aui-icon aui-icon-small aui-iconfont-devtools-clone"></span>
                <span>クローン</span>
                <span class="aui-icon-dropdown"></span>
              </a>
              
                
                  <a id="fork-button" class="aui-button"
                    href="/tequilasunset/auto-complete-latex/fork">
                    <span class="aui-icon aui-icon-small aui-iconfont-devtools-fork"></span>
                    <span>フォーク</span>
                  </a>
                
                <a id="compare-button" class="aui-button"
                  
                    href="/tequilasunset/auto-complete-latex/branches/compare">
                  
                  <span class="aui-icon aui-icon-small aui-iconfont-devtools-compare"></span>
                  <span>比較</span>
                </a>
              
            </div>
          
          
          

<div id="repo-clone-dialog" class="clone-dialog hidden">
  
<div class="clone-url">
  <div class="aui-buttons">
    <a href="https://bitbucket.org/tequilasunset/auto-complete-latex"
       class="aui-button aui-style aui-dropdown2-trigger" aria-haspopup="true"
       aria-owns="clone-url-dropdown-header">
      <span class="dropdown-text">HTTPS</span>
    </a>
    <div id="clone-url-dropdown-header" class="aui-dropdown2 aui-style-default">
      <ul class="aui-list-truncate">
        <li>
          <a href="https://bitbucket.org/tequilasunset/auto-complete-latex"
            
              data-command="hg clone https://bitbucket.org/tequilasunset/auto-complete-latex"
            
            class="item-link https">HTTPS
          </a>
        </li>
        <li>
          <a href="ssh://hg@bitbucket.org/tequilasunset/auto-complete-latex"
            
              data-command="hg clone ssh://hg@bitbucket.org/tequilasunset/auto-complete-latex"
            
            class="item-link ssh">SSH
          </a>
        </li>
      </ul>
    </div>
    <input type="text" readonly="readonly" class="clone-url-input"
           value="hg clone https://bitbucket.org/tequilasunset/auto-complete-latex">
  </div>
  
  <p>クローンについてヘルプが必要ですか？⏎<a href="https://confluence.atlassian.com/x/cgozDQ" target="_blank">Bitbucket 101</a> を訪れてください。</p>
  
</div>


  
  
  

<div class="sourcetree-callout clone-in-sourcetree"
  data-https-url="https://bitbucket.org/tequilasunset/auto-complete-latex"
  data-ssh-url="ssh://hg@bitbucket.org/tequilasunset/auto-complete-latex">

  <div>
    <button class="aui-button aui-style aui-button-primary">
      
        SourceTree にクローン
      
    </button>
  </div>

  <p class="windows-text">
      
        <a href="http://www.sourcetreeapp.com/?utm_source=internal&amp;utm_medium=link&amp;utm_campaign=clone_repo_win" target="_blank">Atlassian SourceTree</a>
        はWinows用の無料のGitとMercurialクライアントです。
  </p>
  <p class="mac-text">
      
        <a href="http://www.sourcetreeapp.com/?utm_source=internal&amp;utm_medium=link&amp;utm_campaign=clone_repo_mac" target="_blank">Atlassian SourceTree</a>
        はMac用の無料のGitとMercurialクライアントです。
      
  </p>
</div>

  
</div>

          
          
            <div class="hidden kb-shortcut-actions">
              <a id="repo-create-issue" href="/tequilasunset/auto-complete-latex/issues/new"></a>
            </div>
          
        </div>
      </div>
      <div class="clearfix"></div>
    </header>
    <nav id="repo-tabs" class="aui-navgroup aui-navgroup-horizontal aui-navgroup-horizontal-roomy">
      <div class="aui-navgroup-inner">
        <div class="aui-navgroup-primary">
          <ul class="aui-nav">
            
              <li>
                <a href="/tequilasunset/auto-complete-latex/overview" id="repo-overview-link">概要</a>
              </li>
            
            
              <li class="aui-nav-selected">
                <a href="/tequilasunset/auto-complete-latex/src" id="repo-source-link">ソース</a>
              </li>
            
            
              <li>
                <a href="/tequilasunset/auto-complete-latex/commits" id="repo-commits-link">
                  コミット
                </a>
              </li>
            
            
              <li>
                <a href="/tequilasunset/auto-complete-latex/branches" id="repo-branches-link">
                  ブランチ
                </a>
              </li>
            
            
              <li>
                <a href="/tequilasunset/auto-complete-latex/pull-requests" id="repo-pullrequests-link">
                  プルリクエスト
                  
                    
                  
                </a>
              </li>
            
            
              
            
              <li id="issues-tab" class="
                
                  
                
              ">
                <a href="/tequilasunset/auto-complete-latex/issues?status=new&amp;status=open" id="repo-issues-link">
                  課題
                  
                    
                  
                </a>
              </li>
              <li id="wiki-tab" class="
                  
                    hidden
                  
                ">
                <a href="/tequilasunset/auto-complete-latex/wiki" id="repo-wiki-link">Wiki</a>
              </li>
            
              <li>
              <a href="/tequilasunset/auto-complete-latex/downloads" id="repo-downloads-link">
                ダウンロード
                
                  
                
              </a>
              </li>
            
          </ul>
        </div>
        <div class="aui-navgroup-secondary">
          <ul class="aui-nav">
            
          </ul>
        </div>
      </div>
    </nav>
  

      
  <div class="aui-page-panel">
    <div class="aui-page-panel-inner">
      <div id="repo-content" class="aui-page-panel-content">
        
        
  <div id="source-container" data-modules="repo/source/index">
    



<header id="source-path">
  <div class="labels labels-csv">
    
      <div class="aui-buttons">
        <button data-branches-tags-url="/api/1.0/repositories/tequilasunset/auto-complete-latex/branches-tags"
                data-modules="components/branch-dialog"
                class="aui-button branch-dialog-trigger" title="version 0.1.3">
          
            
              <span class="aui-icon aui-icon-small aui-iconfont-devtools-branch">ブランチ</span>
            
            <span class="name">version 0.1.3</span>
          
          <span class="aui-icon-dropdown"></span>
        </button>
        <button class="aui-button" id="checkout-branch-button"
                title="このブランチをチェックアウト">
          <span class="aui-icon aui-icon-small aui-iconfont-devtools-clone">ブランチをチェックアウト</span>
          <span class="aui-icon-dropdown"></span>
        </button>
      </div>
      <script id="branch-checkout-template" type="text/html">
  

<div id="checkout-branch-contents">
  <div class="command-line">
    <p>
      手元のマシンで作業を始めるにはこのブランチをチェックアウトしてください。
    </p>
    <input type="text" class="checkout-command" readonly="readonly"
        
          value="hg pull && hg update [[branchName]]"
        
        >
  </div>
  
    

<div class="sourcetree-callout clone-in-sourcetree"
  data-https-url="https://bitbucket.org/tequilasunset/auto-complete-latex"
  data-ssh-url="ssh://hg@bitbucket.org/tequilasunset/auto-complete-latex">

  <div>
    <button class="aui-button aui-style aui-button-primary">
      
        SourceTreeにチェックアウト
      
    </button>
  </div>

  <p class="windows-text">
      
        <a href="http://www.sourcetreeapp.com/?utm_source=internal&amp;utm_medium=link&amp;utm_campaign=clone_repo_win" target="_blank">Atlassian SourceTree</a>
        はWinows用の無料のGitとMercurialクライアントです。
  </p>
  <p class="mac-text">
      
        <a href="http://www.sourcetreeapp.com/?utm_source=internal&amp;utm_medium=link&amp;utm_campaign=clone_repo_mac" target="_blank">Atlassian SourceTree</a>
        はMac用の無料のGitとMercurialクライアントです。
      
  </p>
</div>

  
</div>
</script>
    
  </div>
  <div class="secondary-actions">
    <div class="aui-buttons">
      
        <a href="/tequilasunset/auto-complete-latex/src/6c534e773374/auto-complete-latex.el?at=version%200.1.3"
           class="aui-button aui-style pjax-trigger" aria-pressed="true">
          ソース
        </a>
        <a href="/tequilasunset/auto-complete-latex/diff/auto-complete-latex.el?diff2=6c534e773374&at=version%200.1.3"
           class="aui-button aui-style pjax-trigger"
           title="以前の変更との差分">
          差分
        </a>
        <a href="/tequilasunset/auto-complete-latex/history-node/6c534e773374/auto-complete-latex.el?at=version%200.1.3"
           class="aui-button aui-style pjax-trigger">
          履歴
        </a>
      
    </div>
  </div>
  <h1>
    
      
        <a href="/tequilasunset/auto-complete-latex/src/6c534e773374?at=version%200.1.3"
          class="pjax-trigger root" title="tequilasunset/auto-complete-latex （6c534e773374）">auto-complete-latex</a> /
      
      
        
          
            
              <span class="file-name">auto-complete-latex.el</span>
            
          
        
      
    
  </h1>
  
    
    
  
  <div class="clearfix"></div>
</header>


    
      
    

    <div id="editor-container" class="maskable"
         data-modules="repo/source/editor"
         data-owner="tequilasunset"
         data-slug="auto-complete-latex"
         data-is-writer="false"
         data-has-push-access="true"
         data-hash="6c534e7733747ffb5deb9138f874216d4a6c5daa"
         data-branch="version 0.1.3"
         data-path="auto-complete-latex.el"
         data-source-url="/api/1.0/repositories/tequilasunset/auto-complete-latex/src/6c534e7733747ffb5deb9138f874216d4a6c5daa/auto-complete-latex.el">
      <div id="source-view" class="file-source-container"
           data-modules="repo/source/view-file">
        <div class="toolbar">
          <div class="primary">
            <div class="aui-buttons">
              
                <button id="file-history-trigger" class="aui-button aui-style changeset-info"
                        data-changeset="6c534e7733747ffb5deb9138f874216d4a6c5daa"
                        data-path="auto-complete-latex.el"
                        data-current="6c534e7733747ffb5deb9138f874216d4a6c5daa">
                  
                     

<img class="avatar avatar16" src="https://secure.gravatar.com/avatar/fbedaee8211bb1a6e15c56db74c330f8?d=https%3A%2F%2Fd3oaxc4q5k2d6q.cloudfront.net%2Fm%2F6c283f25a901%2Fimg%2Fdefault_avatar%2F16%2Fuser_blue.png&amp;s=16" alt="tequilasunset avatar" />
<span class="changeset-hash">6c534e7</span>
<time datetime="2010-02-23T19:42:46+00:00" class="timestamp"></time>
<span class="aui-icon-dropdown"></span>

                  
                </button>
              
            </div>
          <a href="/tequilasunset/auto-complete-latex/full-commit/6c534e773374/auto-complete-latex.el" id="full-commit-link"
              title="6c534e7　のすべてのコミットを表示する">Full commit</a>
          </div>
            <div class="secondary">
              <div class="aui-buttons">
                
                  <a href="/tequilasunset/auto-complete-latex/annotate/6c534e7733747ffb5deb9138f874216d4a6c5daa/auto-complete-latex.el?at=version%200.1.3"
                  class="aui-button aui-style pjax-trigger">Blame</a>
                
                
                  
                  <a id="embed-link" href="https://bitbucket.org/tequilasunset/auto-complete-latex/src/6c534e7733747ffb5deb9138f874216d4a6c5daa/auto-complete-latex.el?embed=t"
                    class="aui-button aui-style" data-modules="repo/source/embed">埋め込み</a>
                
                <a href="/tequilasunset/auto-complete-latex/raw/6c534e7733747ffb5deb9138f874216d4a6c5daa/auto-complete-latex.el"
                  class="aui-button aui-style">Raw形式で表示</a>
              </div>
              
            </div>
          <div class="clearfix"></div>
        </div>

        
          
            
              
                <div class="file-source">
                  <table class="highlighttable"><tr><td class="linenos"><div class="linenodiv"><pre><a href="#cl-1">  1</a>
<a href="#cl-2">  2</a>
<a href="#cl-3">  3</a>
<a href="#cl-4">  4</a>
<a href="#cl-5">  5</a>
<a href="#cl-6">  6</a>
<a href="#cl-7">  7</a>
<a href="#cl-8">  8</a>
<a href="#cl-9">  9</a>
<a href="#cl-10"> 10</a>
<a href="#cl-11"> 11</a>
<a href="#cl-12"> 12</a>
<a href="#cl-13"> 13</a>
<a href="#cl-14"> 14</a>
<a href="#cl-15"> 15</a>
<a href="#cl-16"> 16</a>
<a href="#cl-17"> 17</a>
<a href="#cl-18"> 18</a>
<a href="#cl-19"> 19</a>
<a href="#cl-20"> 20</a>
<a href="#cl-21"> 21</a>
<a href="#cl-22"> 22</a>
<a href="#cl-23"> 23</a>
<a href="#cl-24"> 24</a>
<a href="#cl-25"> 25</a>
<a href="#cl-26"> 26</a>
<a href="#cl-27"> 27</a>
<a href="#cl-28"> 28</a>
<a href="#cl-29"> 29</a>
<a href="#cl-30"> 30</a>
<a href="#cl-31"> 31</a>
<a href="#cl-32"> 32</a>
<a href="#cl-33"> 33</a>
<a href="#cl-34"> 34</a>
<a href="#cl-35"> 35</a>
<a href="#cl-36"> 36</a>
<a href="#cl-37"> 37</a>
<a href="#cl-38"> 38</a>
<a href="#cl-39"> 39</a>
<a href="#cl-40"> 40</a>
<a href="#cl-41"> 41</a>
<a href="#cl-42"> 42</a>
<a href="#cl-43"> 43</a>
<a href="#cl-44"> 44</a>
<a href="#cl-45"> 45</a>
<a href="#cl-46"> 46</a>
<a href="#cl-47"> 47</a>
<a href="#cl-48"> 48</a>
<a href="#cl-49"> 49</a>
<a href="#cl-50"> 50</a>
<a href="#cl-51"> 51</a>
<a href="#cl-52"> 52</a>
<a href="#cl-53"> 53</a>
<a href="#cl-54"> 54</a>
<a href="#cl-55"> 55</a>
<a href="#cl-56"> 56</a>
<a href="#cl-57"> 57</a>
<a href="#cl-58"> 58</a>
<a href="#cl-59"> 59</a>
<a href="#cl-60"> 60</a>
<a href="#cl-61"> 61</a>
<a href="#cl-62"> 62</a>
<a href="#cl-63"> 63</a>
<a href="#cl-64"> 64</a>
<a href="#cl-65"> 65</a>
<a href="#cl-66"> 66</a>
<a href="#cl-67"> 67</a>
<a href="#cl-68"> 68</a>
<a href="#cl-69"> 69</a>
<a href="#cl-70"> 70</a>
<a href="#cl-71"> 71</a>
<a href="#cl-72"> 72</a>
<a href="#cl-73"> 73</a>
<a href="#cl-74"> 74</a>
<a href="#cl-75"> 75</a>
<a href="#cl-76"> 76</a>
<a href="#cl-77"> 77</a>
<a href="#cl-78"> 78</a>
<a href="#cl-79"> 79</a>
<a href="#cl-80"> 80</a>
<a href="#cl-81"> 81</a>
<a href="#cl-82"> 82</a>
<a href="#cl-83"> 83</a>
<a href="#cl-84"> 84</a>
<a href="#cl-85"> 85</a>
<a href="#cl-86"> 86</a>
<a href="#cl-87"> 87</a>
<a href="#cl-88"> 88</a>
<a href="#cl-89"> 89</a>
<a href="#cl-90"> 90</a>
<a href="#cl-91"> 91</a>
<a href="#cl-92"> 92</a>
<a href="#cl-93"> 93</a>
<a href="#cl-94"> 94</a>
<a href="#cl-95"> 95</a>
<a href="#cl-96"> 96</a>
<a href="#cl-97"> 97</a>
<a href="#cl-98"> 98</a>
<a href="#cl-99"> 99</a>
<a href="#cl-100">100</a>
<a href="#cl-101">101</a>
<a href="#cl-102">102</a>
<a href="#cl-103">103</a>
<a href="#cl-104">104</a>
<a href="#cl-105">105</a>
<a href="#cl-106">106</a>
<a href="#cl-107">107</a>
<a href="#cl-108">108</a>
<a href="#cl-109">109</a>
<a href="#cl-110">110</a>
<a href="#cl-111">111</a>
<a href="#cl-112">112</a>
<a href="#cl-113">113</a>
<a href="#cl-114">114</a>
<a href="#cl-115">115</a>
<a href="#cl-116">116</a>
<a href="#cl-117">117</a>
<a href="#cl-118">118</a>
<a href="#cl-119">119</a>
<a href="#cl-120">120</a>
<a href="#cl-121">121</a>
<a href="#cl-122">122</a>
<a href="#cl-123">123</a>
<a href="#cl-124">124</a>
<a href="#cl-125">125</a>
<a href="#cl-126">126</a>
<a href="#cl-127">127</a>
<a href="#cl-128">128</a>
<a href="#cl-129">129</a>
<a href="#cl-130">130</a>
<a href="#cl-131">131</a>
<a href="#cl-132">132</a>
<a href="#cl-133">133</a>
<a href="#cl-134">134</a>
<a href="#cl-135">135</a>
<a href="#cl-136">136</a>
<a href="#cl-137">137</a>
<a href="#cl-138">138</a>
<a href="#cl-139">139</a>
<a href="#cl-140">140</a>
<a href="#cl-141">141</a>
<a href="#cl-142">142</a>
<a href="#cl-143">143</a>
<a href="#cl-144">144</a>
<a href="#cl-145">145</a>
<a href="#cl-146">146</a>
<a href="#cl-147">147</a>
<a href="#cl-148">148</a>
<a href="#cl-149">149</a>
<a href="#cl-150">150</a>
<a href="#cl-151">151</a>
<a href="#cl-152">152</a>
<a href="#cl-153">153</a>
<a href="#cl-154">154</a>
<a href="#cl-155">155</a>
<a href="#cl-156">156</a>
<a href="#cl-157">157</a>
<a href="#cl-158">158</a>
<a href="#cl-159">159</a>
<a href="#cl-160">160</a>
<a href="#cl-161">161</a>
<a href="#cl-162">162</a>
<a href="#cl-163">163</a>
<a href="#cl-164">164</a>
<a href="#cl-165">165</a>
<a href="#cl-166">166</a>
<a href="#cl-167">167</a>
<a href="#cl-168">168</a>
<a href="#cl-169">169</a>
<a href="#cl-170">170</a>
<a href="#cl-171">171</a>
<a href="#cl-172">172</a>
<a href="#cl-173">173</a>
<a href="#cl-174">174</a>
<a href="#cl-175">175</a>
<a href="#cl-176">176</a>
<a href="#cl-177">177</a>
<a href="#cl-178">178</a>
<a href="#cl-179">179</a>
<a href="#cl-180">180</a>
<a href="#cl-181">181</a>
<a href="#cl-182">182</a>
<a href="#cl-183">183</a>
<a href="#cl-184">184</a>
<a href="#cl-185">185</a>
<a href="#cl-186">186</a>
<a href="#cl-187">187</a>
<a href="#cl-188">188</a>
<a href="#cl-189">189</a>
<a href="#cl-190">190</a>
<a href="#cl-191">191</a>
<a href="#cl-192">192</a>
<a href="#cl-193">193</a>
<a href="#cl-194">194</a>
<a href="#cl-195">195</a>
<a href="#cl-196">196</a>
<a href="#cl-197">197</a>
<a href="#cl-198">198</a>
<a href="#cl-199">199</a>
<a href="#cl-200">200</a>
<a href="#cl-201">201</a>
<a href="#cl-202">202</a>
<a href="#cl-203">203</a>
<a href="#cl-204">204</a>
<a href="#cl-205">205</a>
<a href="#cl-206">206</a>
<a href="#cl-207">207</a>
<a href="#cl-208">208</a>
<a href="#cl-209">209</a>
<a href="#cl-210">210</a>
<a href="#cl-211">211</a>
<a href="#cl-212">212</a>
<a href="#cl-213">213</a>
<a href="#cl-214">214</a>
<a href="#cl-215">215</a>
<a href="#cl-216">216</a>
<a href="#cl-217">217</a>
<a href="#cl-218">218</a>
<a href="#cl-219">219</a>
<a href="#cl-220">220</a>
<a href="#cl-221">221</a>
<a href="#cl-222">222</a>
<a href="#cl-223">223</a>
<a href="#cl-224">224</a>
<a href="#cl-225">225</a>
<a href="#cl-226">226</a>
<a href="#cl-227">227</a>
<a href="#cl-228">228</a>
<a href="#cl-229">229</a>
<a href="#cl-230">230</a>
<a href="#cl-231">231</a>
<a href="#cl-232">232</a>
<a href="#cl-233">233</a>
<a href="#cl-234">234</a>
<a href="#cl-235">235</a>
<a href="#cl-236">236</a>
<a href="#cl-237">237</a>
<a href="#cl-238">238</a>
<a href="#cl-239">239</a>
<a href="#cl-240">240</a>
<a href="#cl-241">241</a>
<a href="#cl-242">242</a>
<a href="#cl-243">243</a>
<a href="#cl-244">244</a>
<a href="#cl-245">245</a>
<a href="#cl-246">246</a>
<a href="#cl-247">247</a>
<a href="#cl-248">248</a>
<a href="#cl-249">249</a>
<a href="#cl-250">250</a>
<a href="#cl-251">251</a>
<a href="#cl-252">252</a>
<a href="#cl-253">253</a>
<a href="#cl-254">254</a>
<a href="#cl-255">255</a>
<a href="#cl-256">256</a>
<a href="#cl-257">257</a>
<a href="#cl-258">258</a>
<a href="#cl-259">259</a>
<a href="#cl-260">260</a>
<a href="#cl-261">261</a>
<a href="#cl-262">262</a>
<a href="#cl-263">263</a>
<a href="#cl-264">264</a>
<a href="#cl-265">265</a>
<a href="#cl-266">266</a>
<a href="#cl-267">267</a>
<a href="#cl-268">268</a>
<a href="#cl-269">269</a>
<a href="#cl-270">270</a>
<a href="#cl-271">271</a>
<a href="#cl-272">272</a>
<a href="#cl-273">273</a>
<a href="#cl-274">274</a>
<a href="#cl-275">275</a>
<a href="#cl-276">276</a>
<a href="#cl-277">277</a>
<a href="#cl-278">278</a>
<a href="#cl-279">279</a>
<a href="#cl-280">280</a>
<a href="#cl-281">281</a>
<a href="#cl-282">282</a>
<a href="#cl-283">283</a>
<a href="#cl-284">284</a>
<a href="#cl-285">285</a>
<a href="#cl-286">286</a>
<a href="#cl-287">287</a>
<a href="#cl-288">288</a>
<a href="#cl-289">289</a>
<a href="#cl-290">290</a>
<a href="#cl-291">291</a>
<a href="#cl-292">292</a>
<a href="#cl-293">293</a>
<a href="#cl-294">294</a>
<a href="#cl-295">295</a>
<a href="#cl-296">296</a>
<a href="#cl-297">297</a>
<a href="#cl-298">298</a>
<a href="#cl-299">299</a>
<a href="#cl-300">300</a>
<a href="#cl-301">301</a>
<a href="#cl-302">302</a>
<a href="#cl-303">303</a>
<a href="#cl-304">304</a>
<a href="#cl-305">305</a>
<a href="#cl-306">306</a>
<a href="#cl-307">307</a>
<a href="#cl-308">308</a>
<a href="#cl-309">309</a>
<a href="#cl-310">310</a>
<a href="#cl-311">311</a>
<a href="#cl-312">312</a>
<a href="#cl-313">313</a>
<a href="#cl-314">314</a>
<a href="#cl-315">315</a>
<a href="#cl-316">316</a>
<a href="#cl-317">317</a>
<a href="#cl-318">318</a>
<a href="#cl-319">319</a>
<a href="#cl-320">320</a>
<a href="#cl-321">321</a>
<a href="#cl-322">322</a>
<a href="#cl-323">323</a>
<a href="#cl-324">324</a>
<a href="#cl-325">325</a>
<a href="#cl-326">326</a>
<a href="#cl-327">327</a>
<a href="#cl-328">328</a>
<a href="#cl-329">329</a>
<a href="#cl-330">330</a>
<a href="#cl-331">331</a>
<a href="#cl-332">332</a>
<a href="#cl-333">333</a>
<a href="#cl-334">334</a>
<a href="#cl-335">335</a>
<a href="#cl-336">336</a>
<a href="#cl-337">337</a>
<a href="#cl-338">338</a>
<a href="#cl-339">339</a>
<a href="#cl-340">340</a>
<a href="#cl-341">341</a>
<a href="#cl-342">342</a>
<a href="#cl-343">343</a>
<a href="#cl-344">344</a>
<a href="#cl-345">345</a>
<a href="#cl-346">346</a>
<a href="#cl-347">347</a>
<a href="#cl-348">348</a>
<a href="#cl-349">349</a>
<a href="#cl-350">350</a>
<a href="#cl-351">351</a>
<a href="#cl-352">352</a>
<a href="#cl-353">353</a>
<a href="#cl-354">354</a>
<a href="#cl-355">355</a>
<a href="#cl-356">356</a>
<a href="#cl-357">357</a>
<a href="#cl-358">358</a>
<a href="#cl-359">359</a>
<a href="#cl-360">360</a>
<a href="#cl-361">361</a>
<a href="#cl-362">362</a>
<a href="#cl-363">363</a>
<a href="#cl-364">364</a>
<a href="#cl-365">365</a>
<a href="#cl-366">366</a>
<a href="#cl-367">367</a>
<a href="#cl-368">368</a>
<a href="#cl-369">369</a>
<a href="#cl-370">370</a>
<a href="#cl-371">371</a>
<a href="#cl-372">372</a>
<a href="#cl-373">373</a>
<a href="#cl-374">374</a>
<a href="#cl-375">375</a>
<a href="#cl-376">376</a>
<a href="#cl-377">377</a>
<a href="#cl-378">378</a>
<a href="#cl-379">379</a>
<a href="#cl-380">380</a>
<a href="#cl-381">381</a>
<a href="#cl-382">382</a>
<a href="#cl-383">383</a>
<a href="#cl-384">384</a>
<a href="#cl-385">385</a>
<a href="#cl-386">386</a>
<a href="#cl-387">387</a>
<a href="#cl-388">388</a>
<a href="#cl-389">389</a>
<a href="#cl-390">390</a>
<a href="#cl-391">391</a>
<a href="#cl-392">392</a>
<a href="#cl-393">393</a>
<a href="#cl-394">394</a>
<a href="#cl-395">395</a>
<a href="#cl-396">396</a>
<a href="#cl-397">397</a>
<a href="#cl-398">398</a>
<a href="#cl-399">399</a>
<a href="#cl-400">400</a>
<a href="#cl-401">401</a>
<a href="#cl-402">402</a>
<a href="#cl-403">403</a>
<a href="#cl-404">404</a>
<a href="#cl-405">405</a>
<a href="#cl-406">406</a>
<a href="#cl-407">407</a>
<a href="#cl-408">408</a>
<a href="#cl-409">409</a>
<a href="#cl-410">410</a>
<a href="#cl-411">411</a>
<a href="#cl-412">412</a>
<a href="#cl-413">413</a>
<a href="#cl-414">414</a>
<a href="#cl-415">415</a>
<a href="#cl-416">416</a>
<a href="#cl-417">417</a>
<a href="#cl-418">418</a>
<a href="#cl-419">419</a>
<a href="#cl-420">420</a>
<a href="#cl-421">421</a>
<a href="#cl-422">422</a>
<a href="#cl-423">423</a>
<a href="#cl-424">424</a>
<a href="#cl-425">425</a>
<a href="#cl-426">426</a>
<a href="#cl-427">427</a>
<a href="#cl-428">428</a>
<a href="#cl-429">429</a>
<a href="#cl-430">430</a>
<a href="#cl-431">431</a>
<a href="#cl-432">432</a>
<a href="#cl-433">433</a>
<a href="#cl-434">434</a>
<a href="#cl-435">435</a>
<a href="#cl-436">436</a>
<a href="#cl-437">437</a>
<a href="#cl-438">438</a>
<a href="#cl-439">439</a>
<a href="#cl-440">440</a>
<a href="#cl-441">441</a>
<a href="#cl-442">442</a>
<a href="#cl-443">443</a>
<a href="#cl-444">444</a>
<a href="#cl-445">445</a>
<a href="#cl-446">446</a>
<a href="#cl-447">447</a>
<a href="#cl-448">448</a>
<a href="#cl-449">449</a>
<a href="#cl-450">450</a>
<a href="#cl-451">451</a>
<a href="#cl-452">452</a>
<a href="#cl-453">453</a>
<a href="#cl-454">454</a>
<a href="#cl-455">455</a>
<a href="#cl-456">456</a>
<a href="#cl-457">457</a>
<a href="#cl-458">458</a>
<a href="#cl-459">459</a>
<a href="#cl-460">460</a>
<a href="#cl-461">461</a>
<a href="#cl-462">462</a>
<a href="#cl-463">463</a>
<a href="#cl-464">464</a>
<a href="#cl-465">465</a>
<a href="#cl-466">466</a>
<a href="#cl-467">467</a>
<a href="#cl-468">468</a>
<a href="#cl-469">469</a>
<a href="#cl-470">470</a>
<a href="#cl-471">471</a>
<a href="#cl-472">472</a>
<a href="#cl-473">473</a>
<a href="#cl-474">474</a>
<a href="#cl-475">475</a>
<a href="#cl-476">476</a>
<a href="#cl-477">477</a>
<a href="#cl-478">478</a>
<a href="#cl-479">479</a>
<a href="#cl-480">480</a>
<a href="#cl-481">481</a>
<a href="#cl-482">482</a>
<a href="#cl-483">483</a>
<a href="#cl-484">484</a>
<a href="#cl-485">485</a>
<a href="#cl-486">486</a>
<a href="#cl-487">487</a>
<a href="#cl-488">488</a>
<a href="#cl-489">489</a>
<a href="#cl-490">490</a>
<a href="#cl-491">491</a>
<a href="#cl-492">492</a>
<a href="#cl-493">493</a>
<a href="#cl-494">494</a>
<a href="#cl-495">495</a>
<a href="#cl-496">496</a>
<a href="#cl-497">497</a>
<a href="#cl-498">498</a>
<a href="#cl-499">499</a>
<a href="#cl-500">500</a>
<a href="#cl-501">501</a>
<a href="#cl-502">502</a>
<a href="#cl-503">503</a>
<a href="#cl-504">504</a>
<a href="#cl-505">505</a>
<a href="#cl-506">506</a>
<a href="#cl-507">507</a>
<a href="#cl-508">508</a>
<a href="#cl-509">509</a>
<a href="#cl-510">510</a>
<a href="#cl-511">511</a>
<a href="#cl-512">512</a>
<a href="#cl-513">513</a>
<a href="#cl-514">514</a>
<a href="#cl-515">515</a>
<a href="#cl-516">516</a>
<a href="#cl-517">517</a>
<a href="#cl-518">518</a>
<a href="#cl-519">519</a>
<a href="#cl-520">520</a>
<a href="#cl-521">521</a>
<a href="#cl-522">522</a>
<a href="#cl-523">523</a>
<a href="#cl-524">524</a>
<a href="#cl-525">525</a>
<a href="#cl-526">526</a>
<a href="#cl-527">527</a>
<a href="#cl-528">528</a>
<a href="#cl-529">529</a>
<a href="#cl-530">530</a>
<a href="#cl-531">531</a>
<a href="#cl-532">532</a>
<a href="#cl-533">533</a>
<a href="#cl-534">534</a>
<a href="#cl-535">535</a>
<a href="#cl-536">536</a>
<a href="#cl-537">537</a>
<a href="#cl-538">538</a>
<a href="#cl-539">539</a>
<a href="#cl-540">540</a>
<a href="#cl-541">541</a>
<a href="#cl-542">542</a>
<a href="#cl-543">543</a>
<a href="#cl-544">544</a>
<a href="#cl-545">545</a>
<a href="#cl-546">546</a>
<a href="#cl-547">547</a>
<a href="#cl-548">548</a>
<a href="#cl-549">549</a>
<a href="#cl-550">550</a>
<a href="#cl-551">551</a>
<a href="#cl-552">552</a>
<a href="#cl-553">553</a>
<a href="#cl-554">554</a>
<a href="#cl-555">555</a>
<a href="#cl-556">556</a>
<a href="#cl-557">557</a>
<a href="#cl-558">558</a>
<a href="#cl-559">559</a>
<a href="#cl-560">560</a>
<a href="#cl-561">561</a>
<a href="#cl-562">562</a>
<a href="#cl-563">563</a>
<a href="#cl-564">564</a>
<a href="#cl-565">565</a>
<a href="#cl-566">566</a>
<a href="#cl-567">567</a>
<a href="#cl-568">568</a>
<a href="#cl-569">569</a>
<a href="#cl-570">570</a>
<a href="#cl-571">571</a>
<a href="#cl-572">572</a>
<a href="#cl-573">573</a>
<a href="#cl-574">574</a>
<a href="#cl-575">575</a>
<a href="#cl-576">576</a>
<a href="#cl-577">577</a>
<a href="#cl-578">578</a>
<a href="#cl-579">579</a>
<a href="#cl-580">580</a>
<a href="#cl-581">581</a>
<a href="#cl-582">582</a>
<a href="#cl-583">583</a>
<a href="#cl-584">584</a>
<a href="#cl-585">585</a>
<a href="#cl-586">586</a>
<a href="#cl-587">587</a>
<a href="#cl-588">588</a>
<a href="#cl-589">589</a>
<a href="#cl-590">590</a>
<a href="#cl-591">591</a>
<a href="#cl-592">592</a>
<a href="#cl-593">593</a>
<a href="#cl-594">594</a>
<a href="#cl-595">595</a>
<a href="#cl-596">596</a>
<a href="#cl-597">597</a>
<a href="#cl-598">598</a>
<a href="#cl-599">599</a>
<a href="#cl-600">600</a>
<a href="#cl-601">601</a>
<a href="#cl-602">602</a>
<a href="#cl-603">603</a>
<a href="#cl-604">604</a>
<a href="#cl-605">605</a>
<a href="#cl-606">606</a>
<a href="#cl-607">607</a>
<a href="#cl-608">608</a>
<a href="#cl-609">609</a>
<a href="#cl-610">610</a>
<a href="#cl-611">611</a>
<a href="#cl-612">612</a>
<a href="#cl-613">613</a>
<a href="#cl-614">614</a>
<a href="#cl-615">615</a>
<a href="#cl-616">616</a>
<a href="#cl-617">617</a>
<a href="#cl-618">618</a>
<a href="#cl-619">619</a>
<a href="#cl-620">620</a>
<a href="#cl-621">621</a>
<a href="#cl-622">622</a>
<a href="#cl-623">623</a>
<a href="#cl-624">624</a>
<a href="#cl-625">625</a>
<a href="#cl-626">626</a>
<a href="#cl-627">627</a>
<a href="#cl-628">628</a>
<a href="#cl-629">629</a>
<a href="#cl-630">630</a>
<a href="#cl-631">631</a>
<a href="#cl-632">632</a>
<a href="#cl-633">633</a>
<a href="#cl-634">634</a>
<a href="#cl-635">635</a>
<a href="#cl-636">636</a>
<a href="#cl-637">637</a>
<a href="#cl-638">638</a>
<a href="#cl-639">639</a>
<a href="#cl-640">640</a>
<a href="#cl-641">641</a>
<a href="#cl-642">642</a>
<a href="#cl-643">643</a>
<a href="#cl-644">644</a>
<a href="#cl-645">645</a>
<a href="#cl-646">646</a>
<a href="#cl-647">647</a>
<a href="#cl-648">648</a>
<a href="#cl-649">649</a>
<a href="#cl-650">650</a>
<a href="#cl-651">651</a>
<a href="#cl-652">652</a>
<a href="#cl-653">653</a>
<a href="#cl-654">654</a>
<a href="#cl-655">655</a>
<a href="#cl-656">656</a>
<a href="#cl-657">657</a>
<a href="#cl-658">658</a>
<a href="#cl-659">659</a>
<a href="#cl-660">660</a>
<a href="#cl-661">661</a>
<a href="#cl-662">662</a>
<a href="#cl-663">663</a>
<a href="#cl-664">664</a>
<a href="#cl-665">665</a>
<a href="#cl-666">666</a>
<a href="#cl-667">667</a>
<a href="#cl-668">668</a>
<a href="#cl-669">669</a>
<a href="#cl-670">670</a>
<a href="#cl-671">671</a>
<a href="#cl-672">672</a>
<a href="#cl-673">673</a>
<a href="#cl-674">674</a>
<a href="#cl-675">675</a>
<a href="#cl-676">676</a>
<a href="#cl-677">677</a>
<a href="#cl-678">678</a>
<a href="#cl-679">679</a>
<a href="#cl-680">680</a>
<a href="#cl-681">681</a>
<a href="#cl-682">682</a>
<a href="#cl-683">683</a>
<a href="#cl-684">684</a>
<a href="#cl-685">685</a>
<a href="#cl-686">686</a>
<a href="#cl-687">687</a>
<a href="#cl-688">688</a>
<a href="#cl-689">689</a>
<a href="#cl-690">690</a>
<a href="#cl-691">691</a>
<a href="#cl-692">692</a>
<a href="#cl-693">693</a>
<a href="#cl-694">694</a>
<a href="#cl-695">695</a>
<a href="#cl-696">696</a>
<a href="#cl-697">697</a>
<a href="#cl-698">698</a>
<a href="#cl-699">699</a>
<a href="#cl-700">700</a>
<a href="#cl-701">701</a>
<a href="#cl-702">702</a>
<a href="#cl-703">703</a>
<a href="#cl-704">704</a>
<a href="#cl-705">705</a>
<a href="#cl-706">706</a>
<a href="#cl-707">707</a>
<a href="#cl-708">708</a>
<a href="#cl-709">709</a>
<a href="#cl-710">710</a>
<a href="#cl-711">711</a>
<a href="#cl-712">712</a>
<a href="#cl-713">713</a>
<a href="#cl-714">714</a>
<a href="#cl-715">715</a>
<a href="#cl-716">716</a>
<a href="#cl-717">717</a>
<a href="#cl-718">718</a>
<a href="#cl-719">719</a>
<a href="#cl-720">720</a>
<a href="#cl-721">721</a>
<a href="#cl-722">722</a>
<a href="#cl-723">723</a>
<a href="#cl-724">724</a>
<a href="#cl-725">725</a>
<a href="#cl-726">726</a>
<a href="#cl-727">727</a>
<a href="#cl-728">728</a>
<a href="#cl-729">729</a>
<a href="#cl-730">730</a>
<a href="#cl-731">731</a>
<a href="#cl-732">732</a>
<a href="#cl-733">733</a>
<a href="#cl-734">734</a>
<a href="#cl-735">735</a>
<a href="#cl-736">736</a>
<a href="#cl-737">737</a>
<a href="#cl-738">738</a>
<a href="#cl-739">739</a>
<a href="#cl-740">740</a>
<a href="#cl-741">741</a>
<a href="#cl-742">742</a>
<a href="#cl-743">743</a>
<a href="#cl-744">744</a>
<a href="#cl-745">745</a>
<a href="#cl-746">746</a>
<a href="#cl-747">747</a>
<a href="#cl-748">748</a>
<a href="#cl-749">749</a>
<a href="#cl-750">750</a>
<a href="#cl-751">751</a>
<a href="#cl-752">752</a>
<a href="#cl-753">753</a>
<a href="#cl-754">754</a>
<a href="#cl-755">755</a>
<a href="#cl-756">756</a>
<a href="#cl-757">757</a>
<a href="#cl-758">758</a>
<a href="#cl-759">759</a>
<a href="#cl-760">760</a>
<a href="#cl-761">761</a>
<a href="#cl-762">762</a>
<a href="#cl-763">763</a>
<a href="#cl-764">764</a>
<a href="#cl-765">765</a>
<a href="#cl-766">766</a>
<a href="#cl-767">767</a>
<a href="#cl-768">768</a>
<a href="#cl-769">769</a>
<a href="#cl-770">770</a>
<a href="#cl-771">771</a>
<a href="#cl-772">772</a>
<a href="#cl-773">773</a>
<a href="#cl-774">774</a>
<a href="#cl-775">775</a>
<a href="#cl-776">776</a>
<a href="#cl-777">777</a>
<a href="#cl-778">778</a>
<a href="#cl-779">779</a>
<a href="#cl-780">780</a>
<a href="#cl-781">781</a>
<a href="#cl-782">782</a>
<a href="#cl-783">783</a>
<a href="#cl-784">784</a>
<a href="#cl-785">785</a>
<a href="#cl-786">786</a>
<a href="#cl-787">787</a>
<a href="#cl-788">788</a>
<a href="#cl-789">789</a>
<a href="#cl-790">790</a></pre></div></td><td class="code"><div class="highlight"><pre><a name="cl-1"></a><span class="c1">;;; auto-complete-latex.el --- A LaTeX extention for auto-complete-mode</span>
<a name="cl-2"></a>
<a name="cl-3"></a><span class="c1">;; Copyright (C) 2010 tequilasunset</span>
<a name="cl-4"></a>
<a name="cl-5"></a><span class="c1">;; Author:   tequilasunset &lt;tequilasunset.mac@gmail.com&gt;</span>
<a name="cl-6"></a><span class="c1">;; Keywords: LaTeX AUCTeX YaTeX</span>
<a name="cl-7"></a><span class="c1">;; Version:  0.1.3</span>
<a name="cl-8"></a>
<a name="cl-9"></a><span class="c1">;; This program is free software: you can redistribute it and/or modify</span>
<a name="cl-10"></a><span class="c1">;; it under the terms of the GNU General Public License as published by</span>
<a name="cl-11"></a><span class="c1">;; the Free Software Foundation, either version 3 of the License, or</span>
<a name="cl-12"></a><span class="c1">;; (at your option) any later version.</span>
<a name="cl-13"></a>
<a name="cl-14"></a><span class="c1">;; This program is distributed in the hope that it will be useful,</span>
<a name="cl-15"></a><span class="c1">;; but WITHOUT ANY WARRANTY; without even the implied warranty of</span>
<a name="cl-16"></a><span class="c1">;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the</span>
<a name="cl-17"></a><span class="c1">;; GNU General Public License for more details.</span>
<a name="cl-18"></a>
<a name="cl-19"></a><span class="c1">;; You should have received a copy of the GNU General Public License</span>
<a name="cl-20"></a><span class="c1">;; along with this program.  If not, see &lt;http://www.gnu.org/licenses/&gt;.</span>
<a name="cl-21"></a>
<a name="cl-22"></a><span class="c1">;;; Requirements:</span>
<a name="cl-23"></a>
<a name="cl-24"></a><span class="c1">;; http://github.com/m2ym/auto-complete/blob/v1.0/auto-complete.el</span>
<a name="cl-25"></a>
<a name="cl-26"></a><span class="c1">;;; Commentary:</span>
<a name="cl-27"></a>
<a name="cl-28"></a><span class="c1">;; Put this file into your load-path and add the following into your init file.</span>
<a name="cl-29"></a><span class="c1">;;</span>
<a name="cl-30"></a><span class="c1">;;   (require &#39;auto-complete-latex)</span>
<a name="cl-31"></a><span class="c1">;;</span>
<a name="cl-32"></a><span class="c1">;; If necessary, add the following into your init file.</span>
<a name="cl-33"></a><span class="c1">;;</span>
<a name="cl-34"></a><span class="c1">;;   (setq ac-modes (append ac-modes &#39;(foo-mode)))</span>
<a name="cl-35"></a><span class="c1">;;   (add-hook &#39;foo-mode-hook &#39;ac-l-setup)</span>
<a name="cl-36"></a><span class="c1">;;</span>
<a name="cl-37"></a>
<a name="cl-38"></a><span class="c1">;;; Tips:</span>
<a name="cl-39"></a>
<a name="cl-40"></a><span class="c1">;; Add more keywords (ex. gin, vodka, tequila)</span>
<a name="cl-41"></a><span class="c1">;; -------------------------------------------</span>
<a name="cl-42"></a><span class="c1">;;</span>
<a name="cl-43"></a><span class="c1">;; Add the following into your ~/.emacs.</span>
<a name="cl-44"></a><span class="c1">;;</span>
<a name="cl-45"></a><span class="c1">;;   (setq ac-l-source-user-keywords*</span>
<a name="cl-46"></a><span class="c1">;;         &#39;(&quot;gin&quot; &quot;vodka&quot; &quot;tequila&quot;))</span>
<a name="cl-47"></a><span class="c1">;;</span>
<a name="cl-48"></a><span class="c1">;;</span>
<a name="cl-49"></a><span class="c1">;; Change sources</span>
<a name="cl-50"></a><span class="c1">;; --------------</span>
<a name="cl-51"></a><span class="c1">;;</span>
<a name="cl-52"></a><span class="c1">;; Add the following into your ~/.emacs.</span>
<a name="cl-53"></a><span class="c1">;;</span>
<a name="cl-54"></a><span class="c1">;;   (setq ac-l-sources</span>
<a name="cl-55"></a><span class="c1">;;     &#39;(</span>
<a name="cl-56"></a><span class="c1">;;       ac-l-source-user-keywords</span>
<a name="cl-57"></a><span class="c1">;;       ac-l-source-basic-commands</span>
<a name="cl-58"></a><span class="c1">;;       ac-l-source-package-commands</span>
<a name="cl-59"></a><span class="c1">;;       ac-l-source-primitives</span>
<a name="cl-60"></a><span class="c1">;;       ac-l-source-style-commands</span>
<a name="cl-61"></a><span class="c1">;;       ac-l-source-latex-dot-ltx</span>
<a name="cl-62"></a><span class="c1">;;       ac-l-source-basic-options-&amp;-variables</span>
<a name="cl-63"></a><span class="c1">;;       ac-l-source-package-options-&amp;-variables</span>
<a name="cl-64"></a><span class="c1">;;       ))</span>
<a name="cl-65"></a><span class="c1">;;</span>
<a name="cl-66"></a>
<a name="cl-67"></a><span class="c1">;;; History:</span>
<a name="cl-68"></a>
<a name="cl-69"></a><span class="c1">;; 2010/02/11</span>
<a name="cl-70"></a><span class="c1">;;      * version 0.1.3 released</span>
<a name="cl-71"></a><span class="c1">;;      * prefix `ac-l-&#39;</span>
<a name="cl-72"></a><span class="c1">;;      * modified name and contents of some sources</span>
<a name="cl-73"></a><span class="c1">;;</span>
<a name="cl-74"></a><span class="c1">;; 2010/02/10</span>
<a name="cl-75"></a><span class="c1">;;      * supported auto-complete.el v1.0</span>
<a name="cl-76"></a><span class="c1">;;      * added ac-latex-define-dictionary-source</span>
<a name="cl-77"></a><span class="c1">;;</span>
<a name="cl-78"></a><span class="c1">;; 2010/01/31</span>
<a name="cl-79"></a><span class="c1">;;      * version 0.1.2 released</span>
<a name="cl-80"></a><span class="c1">;;      * removed some sources from ac-latex-sources</span>
<a name="cl-81"></a><span class="c1">;;</span>
<a name="cl-82"></a><span class="c1">;; 2010/01/28</span>
<a name="cl-83"></a><span class="c1">;;      * fixed ac-source-latex-keywords</span>
<a name="cl-84"></a><span class="c1">;;</span>
<a name="cl-85"></a><span class="c1">;; 2010/01/26</span>
<a name="cl-86"></a><span class="c1">;;      * version 0.1.1 released</span>
<a name="cl-87"></a><span class="c1">;;      * added ac-source-latex-dot-ltx</span>
<a name="cl-88"></a><span class="c1">;;      * added 120 keywords in ac-source-latex-style-keywords</span>
<a name="cl-89"></a><span class="c1">;;      * integrated ac-source-latex-math-symbols into ac-source-latex-keywords</span>
<a name="cl-90"></a><span class="c1">;;</span>
<a name="cl-91"></a><span class="c1">;; 2010/01/25</span>
<a name="cl-92"></a><span class="c1">;;      * initial version 0.1.0</span>
<a name="cl-93"></a><span class="c1">;;</span>
<a name="cl-94"></a>
<a name="cl-95"></a><span class="c1">;;; Code:</span>
<a name="cl-96"></a>
<a name="cl-97"></a><span class="p">(</span><span class="nv">eval-when-compile</span> <span class="p">(</span><span class="nb">require</span> <span class="ss">&#39;cl</span><span class="p">))</span>
<a name="cl-98"></a>
<a name="cl-99"></a><span class="p">(</span><span class="nb">require</span> <span class="ss">&#39;auto-complete</span><span class="p">)</span>
<a name="cl-100"></a>
<a name="cl-101"></a><span class="p">(</span><span class="nb">defvar</span> <span class="nv">ac-l-source-user-keywords*</span> <span class="no">nil</span>
<a name="cl-102"></a>  <span class="s">&quot;A list of user keywords.&quot;</span><span class="p">)</span>
<a name="cl-103"></a>
<a name="cl-104"></a><span class="p">(</span><span class="nb">defvar</span> <span class="nv">ac-l-sources</span>
<a name="cl-105"></a>  <span class="o">&#39;</span><span class="p">(</span>
<a name="cl-106"></a>    <span class="nv">ac-l-source-user-keywords</span>
<a name="cl-107"></a>    <span class="nv">ac-l-source-basic-commands</span>
<a name="cl-108"></a>    <span class="nv">ac-l-source-package-commands</span>
<a name="cl-109"></a>    <span class="c1">;; ac-l-source-primitives</span>
<a name="cl-110"></a>    <span class="c1">;; ac-l-source-style-commands</span>
<a name="cl-111"></a>    <span class="c1">;; ac-l-source-latex-dot-ltx</span>
<a name="cl-112"></a>    <span class="nv">ac-l-source-basic-options-&amp;-variables</span>
<a name="cl-113"></a>    <span class="nv">ac-l-source-package-options-&amp;-variables</span>
<a name="cl-114"></a>    <span class="p">))</span>
<a name="cl-115"></a>
<a name="cl-116"></a><span class="p">(</span><span class="nb">defun</span> <span class="nv">ac-l-setup</span> <span class="p">()</span>
<a name="cl-117"></a>  <span class="p">(</span><span class="k">setq</span> <span class="nv">ac-sources</span> <span class="p">(</span><span class="nb">append</span> <span class="nv">ac-l-sources</span> <span class="nv">ac-sources</span><span class="p">)))</span>
<a name="cl-118"></a>
<a name="cl-119"></a><span class="p">(</span><span class="nb">defun</span> <span class="nv">ac-l-after-init-setup</span> <span class="p">()</span>
<a name="cl-120"></a>  <span class="p">(</span><span class="k">setq</span> <span class="nv">ac-modes</span> <span class="p">(</span><span class="nb">append</span> <span class="nv">ac-modes</span> <span class="o">&#39;</span><span class="p">(</span><span class="nv">latex-mode</span><span class="p">)))</span>
<a name="cl-121"></a>  <span class="p">(</span><span class="nv">add-hook</span> <span class="ss">&#39;latex-mode-hook</span> <span class="ss">&#39;ac-l-setup</span><span class="p">)</span>
<a name="cl-122"></a>  <span class="c1">;; for AUCTeX users</span>
<a name="cl-123"></a>  <span class="p">(</span><span class="nb">and</span> <span class="p">(</span><span class="nb">require</span> <span class="ss">&#39;tex-site</span> <span class="no">nil</span> <span class="no">t</span><span class="p">)</span>
<a name="cl-124"></a>       <span class="p">(</span><span class="nv">add-hook</span> <span class="ss">&#39;LaTeX-mode-hook</span> <span class="ss">&#39;ac-l-setup</span><span class="p">))</span>
<a name="cl-125"></a>  <span class="c1">;; for YaTeX users</span>
<a name="cl-126"></a>  <span class="p">(</span><span class="nb">when</span> <span class="p">(</span><span class="nb">fboundp</span> <span class="ss">&#39;yatex-mode</span><span class="p">)</span>
<a name="cl-127"></a>    <span class="p">(</span><span class="k">setq</span> <span class="nv">ac-modes</span> <span class="p">(</span><span class="nb">append</span> <span class="nv">ac-modes</span> <span class="o">&#39;</span><span class="p">(</span><span class="nv">yatex-mode</span><span class="p">)))</span>
<a name="cl-128"></a>    <span class="p">(</span><span class="nv">add-hook</span> <span class="ss">&#39;yatex-mode-hook</span> <span class="ss">&#39;ac-l-setup</span><span class="p">)))</span>
<a name="cl-129"></a>
<a name="cl-130"></a><span class="p">(</span><span class="nv">add-hook</span> <span class="ss">&#39;after-init-hook</span> <span class="ss">&#39;ac-l-after-init-setup</span><span class="p">)</span>
<a name="cl-131"></a>
<a name="cl-132"></a><span class="c1">;;;; keywords</span>
<a name="cl-133"></a>
<a name="cl-134"></a><span class="p">(</span><span class="nb">defmacro</span> <span class="nv">ac-l-define-dictionary-source</span> <span class="p">(</span><span class="nv">name</span> <span class="nb">list</span><span class="p">)</span>
<a name="cl-135"></a>  <span class="o">`</span><span class="p">(</span><span class="nv">defconst</span> <span class="o">,</span><span class="nv">name</span>
<a name="cl-136"></a>     <span class="o">&#39;</span><span class="p">((</span><span class="nv">candidates</span> <span class="o">.</span> <span class="p">(</span><span class="k">lambda</span> <span class="p">()</span> <span class="p">(</span><span class="nv">all-completions</span> <span class="nv">ac-prefix</span> <span class="o">,</span><span class="nb">list</span><span class="p">)))</span>
<a name="cl-137"></a>       <span class="p">)))</span>
<a name="cl-138"></a>
<a name="cl-139"></a><span class="c1">;; user keywords (command, option or varoable)</span>
<a name="cl-140"></a><span class="p">(</span><span class="nv">ac-l-define-dictionary-source</span>
<a name="cl-141"></a> <span class="nv">ac-l-source-user-keywords</span>
<a name="cl-142"></a> <span class="nv">ac-l-source-user-keywords*</span><span class="p">)</span>
<a name="cl-143"></a>
<a name="cl-144"></a><span class="c1">;; basic options and variables</span>
<a name="cl-145"></a><span class="p">(</span><span class="nv">ac-l-define-dictionary-source</span>
<a name="cl-146"></a> <span class="nv">ac-l-source-basic-options-&amp;-variables</span>
<a name="cl-147"></a> <span class="o">&#39;</span><span class="p">(</span><span class="s">&quot;a4paper&quot;</span> <span class="s">&quot;a5paper&quot;</span> <span class="s">&quot;abstract&quot;</span> <span class="s">&quot;array&quot;</span> <span class="s">&quot;article&quot;</span> <span class="s">&quot;b4paper&quot;</span> <span class="s">&quot;b5paper&quot;</span>
<a name="cl-148"></a>   <span class="s">&quot;book&quot;</span> <span class="s">&quot;bp&quot;</span> <span class="s">&quot;center&quot;</span> <span class="s">&quot;cm&quot;</span> <span class="s">&quot;dd&quot;</span> <span class="s">&quot;description&quot;</span> <span class="s">&quot;displaymath&quot;</span> <span class="s">&quot;document&quot;</span>
<a name="cl-149"></a>   <span class="s">&quot;draft&quot;</span> <span class="s">&quot;em&quot;</span> <span class="s">&quot;ex&quot;</span> <span class="s">&quot;enumerate&quot;</span> <span class="s">&quot;eqnarray&quot;</span> <span class="s">&quot;equation&quot;</span> <span class="s">&quot;evensidemargin&quot;</span>
<a name="cl-150"></a>   <span class="s">&quot;executivepaper&quot;</span> <span class="s">&quot;figure&quot;</span> <span class="s">&quot;final&quot;</span> <span class="s">&quot;fleqn&quot;</span> <span class="s">&quot;flushleft&quot;</span> <span class="s">&quot;flushright&quot;</span> <span class="s">&quot;in&quot;</span>
<a name="cl-151"></a>   <span class="s">&quot;leqno&quot;</span> <span class="s">&quot;letter&quot;</span> <span class="s">&quot;letterpaper&quot;</span> <span class="s">&quot;list&quot;</span> <span class="s">&quot;minipage&quot;</span> <span class="s">&quot;mm&quot;</span> <span class="s">&quot;notitlepage&quot;</span>
<a name="cl-152"></a>   <span class="s">&quot;oneside&quot;</span> <span class="s">&quot;openany&quot;</span> <span class="s">&quot;picture&quot;</span> <span class="s">&quot;pc&quot;</span> <span class="s">&quot;pt&quot;</span> <span class="s">&quot;quotation&quot;</span> <span class="s">&quot;quote&quot;</span> <span class="s">&quot;tabbing&quot;</span>
<a name="cl-153"></a>   <span class="s">&quot;table&quot;</span> <span class="s">&quot;tabular&quot;</span> <span class="s">&quot;thebibliography&quot;</span> <span class="s">&quot;theindex&quot;</span> <span class="s">&quot;titlepage&quot;</span> <span class="s">&quot;twoside&quot;</span>
<a name="cl-154"></a>   <span class="s">&quot;verb&quot;</span> <span class="s">&quot;verbatim&quot;</span> <span class="s">&quot;verse&quot;</span>
<a name="cl-155"></a>
<a name="cl-156"></a>   <span class="c1">;; pLaTeX</span>
<a name="cl-157"></a>   <span class="s">&quot;a4j&quot;</span> <span class="s">&quot;disablejfam&quot;</span> <span class="s">&quot;jarticle&quot;</span> <span class="s">&quot;jbook&quot;</span> <span class="s">&quot;jreport&quot;</span> <span class="s">&quot;jsarticle&quot;</span> <span class="s">&quot;jsbook&quot;</span>
<a name="cl-158"></a>   <span class="s">&quot;tarticle&quot;</span> <span class="s">&quot;tbook&quot;</span> <span class="s">&quot;treport&quot;</span> <span class="s">&quot;zh&quot;</span> <span class="s">&quot;zw&quot;</span>
<a name="cl-159"></a>   <span class="p">))</span>
<a name="cl-160"></a>
<a name="cl-161"></a><span class="c1">;; external package options and variables</span>
<a name="cl-162"></a><span class="p">(</span><span class="nv">ac-l-define-dictionary-source</span>
<a name="cl-163"></a> <span class="nv">ac-l-source-package-options-&amp;-variables</span>
<a name="cl-164"></a> <span class="o">&#39;</span><span class="p">(</span>
<a name="cl-165"></a>   <span class="c1">;; AMS-LaTeX</span>
<a name="cl-166"></a>   <span class="s">&quot;Bmatrix&quot;</span> <span class="s">&quot;MaxMatrixCols&quot;</span> <span class="s">&quot;Vmatrix&quot;</span> <span class="s">&quot;align&quot;</span> <span class="s">&quot;alignat&quot;</span> <span class="s">&quot;aligned&quot;</span>
<a name="cl-167"></a>   <span class="s">&quot;alignedat&quot;</span> <span class="s">&quot;amsmath&quot;</span> <span class="s">&quot;amssymb&quot;</span> <span class="s">&quot;bmatrix&quot;</span> <span class="s">&quot;cases&quot;</span> <span class="s">&quot;centertags&quot;</span> <span class="s">&quot;flalign&quot;</span>
<a name="cl-168"></a>   <span class="s">&quot;fleqn&quot;</span> <span class="s">&quot;gather&quot;</span> <span class="s">&quot;gathered&quot;</span> <span class="s">&quot;intlimits&quot;</span> <span class="s">&quot;leqno&quot;</span> <span class="s">&quot;matrix&quot;</span> <span class="s">&quot;multline&quot;</span>
<a name="cl-169"></a>   <span class="s">&quot;namelimits&quot;</span> <span class="s">&quot;nointlimits&quot;</span> <span class="s">&quot;nonamelimits&quot;</span> <span class="s">&quot;nosumlimits&quot;</span> <span class="s">&quot;pmatrix&quot;</span> <span class="s">&quot;reqno&quot;</span>
<a name="cl-170"></a>   <span class="s">&quot;smallmatrix&quot;</span> <span class="s">&quot;split&quot;</span> <span class="s">&quot;subarray&quot;</span> <span class="s">&quot;subequations&quot;</span> <span class="s">&quot;sumlimits&quot;</span> <span class="s">&quot;tbtags&quot;</span>
<a name="cl-171"></a>   <span class="s">&quot;vmatrix&quot;</span>
<a name="cl-172"></a>
<a name="cl-173"></a>   <span class="c1">;; graphicx.sty</span>
<a name="cl-174"></a>   <span class="s">&quot;angle&quot;</span> <span class="s">&quot;bb&quot;</span> <span class="s">&quot;bbllx&quot;</span> <span class="s">&quot;bblly&quot;</span> <span class="s">&quot;bburx&quot;</span> <span class="s">&quot;bbury&quot;</span> <span class="s">&quot;clip&quot;</span> <span class="s">&quot;command&quot;</span> <span class="s">&quot;demo&quot;</span>
<a name="cl-175"></a>   <span class="s">&quot;draft&quot;</span> <span class="s">&quot;ext&quot;</span> <span class="s">&quot;final&quot;</span> <span class="s">&quot;graphicx&quot;</span> <span class="s">&quot;height&quot;</span> <span class="s">&quot;hiderotate&quot;</span> <span class="s">&quot;hidesbb&quot;</span>
<a name="cl-176"></a>   <span class="s">&quot;hidescale&quot;</span> <span class="s">&quot;hiresbb&quot;</span> <span class="s">&quot;keepaspectratio&quot;</span> <span class="s">&quot;natheight&quot;</span> <span class="s">&quot;natwidth&quot;</span> <span class="s">&quot;origin&quot;</span>
<a name="cl-177"></a>   <span class="s">&quot;read&quot;</span> <span class="s">&quot;scale&quot;</span> <span class="s">&quot;totalheight&quot;</span> <span class="s">&quot;trim&quot;</span> <span class="s">&quot;type&quot;</span> <span class="s">&quot;viewport&quot;</span> <span class="s">&quot;width&quot;</span>
<a name="cl-178"></a>
<a name="cl-179"></a>   <span class="c1">;; color.sty</span>
<a name="cl-180"></a>   <span class="s">&quot;Apricot&quot;</span> <span class="s">&quot;Aquamarine&quot;</span> <span class="s">&quot;Bittersweet&quot;</span> <span class="s">&quot;Black&quot;</span> <span class="s">&quot;Blue&quot;</span> <span class="s">&quot;BlueGreen&quot;</span>
<a name="cl-181"></a>   <span class="s">&quot;BlueViolet&quot;</span> <span class="s">&quot;BrickRed&quot;</span> <span class="s">&quot;Brown&quot;</span> <span class="s">&quot;BurntOrange&quot;</span> <span class="s">&quot;CadetBlue&quot;</span> <span class="s">&quot;CarnationPink&quot;</span>
<a name="cl-182"></a>   <span class="s">&quot;Cerulean&quot;</span> <span class="s">&quot;CornflowerBlue&quot;</span> <span class="s">&quot;Cyan&quot;</span> <span class="s">&quot;Dandelion&quot;</span> <span class="s">&quot;DarkOrchid&quot;</span> <span class="s">&quot;Emerald&quot;</span>
<a name="cl-183"></a>   <span class="s">&quot;ForestGreen&quot;</span> <span class="s">&quot;Fuchsia&quot;</span> <span class="s">&quot;Goldenrod&quot;</span> <span class="s">&quot;Gray&quot;</span> <span class="s">&quot;Green&quot;</span> <span class="s">&quot;GreenYellow&quot;</span>
<a name="cl-184"></a>   <span class="s">&quot;JungleGreen&quot;</span> <span class="s">&quot;Lavender&quot;</span> <span class="s">&quot;LimeGreen&quot;</span> <span class="s">&quot;Magenta&quot;</span> <span class="s">&quot;Mahogany&quot;</span> <span class="s">&quot;Maroon&quot;</span>
<a name="cl-185"></a>   <span class="s">&quot;Melon&quot;</span> <span class="s">&quot;MidnightBlue&quot;</span> <span class="s">&quot;Mulberry&quot;</span> <span class="s">&quot;NavyBlue&quot;</span> <span class="s">&quot;OliveGreen&quot;</span> <span class="s">&quot;Orange&quot;</span>
<a name="cl-186"></a>   <span class="s">&quot;OrangeRed&quot;</span> <span class="s">&quot;Orchid&quot;</span> <span class="s">&quot;Peach&quot;</span> <span class="s">&quot;Periwinkle&quot;</span> <span class="s">&quot;PineGreen&quot;</span> <span class="s">&quot;Plum&quot;</span> <span class="s">&quot;ProcessBlue&quot;</span>
<a name="cl-187"></a>   <span class="s">&quot;Purple&quot;</span> <span class="s">&quot;RawSienna&quot;</span> <span class="s">&quot;Red&quot;</span> <span class="s">&quot;RedOrange&quot;</span> <span class="s">&quot;RedViolet&quot;</span> <span class="s">&quot;Rhodamine&quot;</span> <span class="s">&quot;RoyalBlue&quot;</span>
<a name="cl-188"></a>   <span class="s">&quot;RoyalPurple&quot;</span> <span class="s">&quot;RubineRed&quot;</span> <span class="s">&quot;Salmon&quot;</span> <span class="s">&quot;SeaGreen&quot;</span> <span class="s">&quot;Sepia&quot;</span> <span class="s">&quot;SkyBlue&quot;</span>
<a name="cl-189"></a>   <span class="s">&quot;SpringGreen&quot;</span> <span class="s">&quot;Tan&quot;</span> <span class="s">&quot;TealBlue&quot;</span> <span class="s">&quot;Thistle&quot;</span> <span class="s">&quot;Turquoise&quot;</span> <span class="s">&quot;Violet&quot;</span> <span class="s">&quot;VioletRed&quot;</span>
<a name="cl-190"></a>   <span class="s">&quot;WildStrawberry&quot;</span> <span class="s">&quot;Yellow&quot;</span> <span class="s">&quot;YellowGreen&quot;</span> <span class="s">&quot;YellowOrange&quot;</span> <span class="s">&quot;black&quot;</span> <span class="s">&quot;blue&quot;</span>
<a name="cl-191"></a>   <span class="s">&quot;green&quot;</span> <span class="s">&quot;cyan&quot;</span> <span class="s">&quot;magenta&quot;</span> <span class="s">&quot;red&quot;</span> <span class="s">&quot;white&quot;</span> <span class="s">&quot;yellow&quot;</span>
<a name="cl-192"></a>
<a name="cl-193"></a>   <span class="c1">;; latexsym.sty</span>
<a name="cl-194"></a>   <span class="s">&quot;latexsym&quot;</span>
<a name="cl-195"></a>   <span class="p">))</span>
<a name="cl-196"></a>
<a name="cl-197"></a><span class="c1">;; (p)LaTeX basic commands</span>
<a name="cl-198"></a><span class="p">(</span><span class="nv">ac-l-define-dictionary-source</span>
<a name="cl-199"></a> <span class="nv">ac-l-source-basic-commands</span>
<a name="cl-200"></a> <span class="o">&#39;</span><span class="p">(</span><span class="s">&quot;Arrowvert&quot;</span> <span class="s">&quot;Big&quot;</span> <span class="s">&quot;Bigg&quot;</span> <span class="s">&quot;Biggl&quot;</span> <span class="s">&quot;Biggm&quot;</span> <span class="s">&quot;Biggr&quot;</span> <span class="s">&quot;Bigl&quot;</span> <span class="s">&quot;Bigm&quot;</span> <span class="s">&quot;Bigr&quot;</span>
<a name="cl-201"></a>   <span class="s">&quot;Delta&quot;</span> <span class="s">&quot;Downarrow&quot;</span> <span class="s">&quot;Gamma&quot;</span> <span class="s">&quot;Huge&quot;</span> <span class="s">&quot;Im&quot;</span> <span class="s">&quot;LARGE&quot;</span> <span class="s">&quot;LaTeX&quot;</span> <span class="s">&quot;LaTeXe&quot;</span> <span class="s">&quot;Lambda&quot;</span>
<a name="cl-202"></a>   <span class="s">&quot;Large&quot;</span> <span class="s">&quot;Leftarrow&quot;</span> <span class="s">&quot;Leftrightarrow&quot;</span> <span class="s">&quot;Lleftarrow&quot;</span> <span class="s">&quot;Longleftarrow&quot;</span>
<a name="cl-203"></a>   <span class="s">&quot;Longleftrightarrow&quot;</span> <span class="s">&quot;Longrightarrow&quot;</span> <span class="s">&quot;Omega&quot;</span> <span class="s">&quot;Phi&quot;</span> <span class="s">&quot;Pi&quot;</span> <span class="s">&quot;Pr&quot;</span> <span class="s">&quot;Psi&quot;</span> <span class="s">&quot;Re&quot;</span>
<a name="cl-204"></a>   <span class="s">&quot;Rightarrow&quot;</span> <span class="s">&quot;Sigma&quot;</span> <span class="s">&quot;TeX&quot;</span> <span class="s">&quot;Theta&quot;</span> <span class="s">&quot;Uparrow&quot;</span> <span class="s">&quot;Updownarrow&quot;</span> <span class="s">&quot;Upsilon&quot;</span>
<a name="cl-205"></a>   <span class="s">&quot;Vert&quot;</span> <span class="s">&quot;Xi&quot;</span> <span class="s">&quot;acute&quot;</span> <span class="s">&quot;address&quot;</span> <span class="s">&quot;addtocounter&quot;</span> <span class="s">&quot;addtolength&quot;</span>
<a name="cl-206"></a>   <span class="s">&quot;aleph&quot;</span> <span class="s">&quot;alpha&quot;</span> <span class="s">&quot;amalg&quot;</span> <span class="s">&quot;angle&quot;</span> <span class="s">&quot;appendix&quot;</span> <span class="s">&quot;approx&quot;</span> <span class="s">&quot;arabic&quot;</span> <span class="s">&quot;arccos&quot;</span>
<a name="cl-207"></a>   <span class="s">&quot;arcsin&quot;</span> <span class="s">&quot;arctan&quot;</span> <span class="s">&quot;arg&quot;</span> <span class="s">&quot;arraycolsep&quot;</span> <span class="s">&quot;arrayrulewidth&quot;</span> <span class="s">&quot;arraystretch&quot;</span>
<a name="cl-208"></a>   <span class="s">&quot;arrowvert&quot;</span> <span class="s">&quot;ast&quot;</span> <span class="s">&quot;asymp&quot;</span> <span class="s">&quot;atop&quot;</span> <span class="s">&quot;author&quot;</span> <span class="s">&quot;backslash&quot;</span> <span class="s">&quot;bar&quot;</span> <span class="s">&quot;baselineskip&quot;</span>
<a name="cl-209"></a>   <span class="s">&quot;because&quot;</span> <span class="s">&quot;begin&quot;</span> <span class="s">&quot;beta&quot;</span> <span class="s">&quot;bf&quot;</span> <span class="s">&quot;bfseries&quot;</span> <span class="s">&quot;bibitem&quot;</span> <span class="s">&quot;bibliography&quot;</span>
<a name="cl-210"></a>   <span class="s">&quot;bibliographystyle&quot;</span> <span class="s">&quot;big&quot;</span> <span class="s">&quot;bigcap&quot;</span> <span class="s">&quot;bigcirc&quot;</span> <span class="s">&quot;bigcup&quot;</span> <span class="s">&quot;bigg&quot;</span> <span class="s">&quot;biggl&quot;</span>
<a name="cl-211"></a>   <span class="s">&quot;biggm&quot;</span> <span class="s">&quot;biggr&quot;</span> <span class="s">&quot;bigl&quot;</span> <span class="s">&quot;bigm&quot;</span> <span class="s">&quot;bigodot&quot;</span> <span class="s">&quot;bigoplus&quot;</span> <span class="s">&quot;bigotimes&quot;</span> <span class="s">&quot;bigr&quot;</span>
<a name="cl-212"></a>   <span class="s">&quot;bigskip&quot;</span> <span class="s">&quot;bigsqcup&quot;</span> <span class="s">&quot;bigtriangledown&quot;</span> <span class="s">&quot;bigtriangleup&quot;</span> <span class="s">&quot;biguplus&quot;</span> <span class="s">&quot;bigvee&quot;</span>
<a name="cl-213"></a>   <span class="s">&quot;bigwedge&quot;</span> <span class="s">&quot;bmod&quot;</span> <span class="s">&quot;boldmath&quot;</span> <span class="s">&quot;bot&quot;</span> <span class="s">&quot;bowtie&quot;</span> <span class="s">&quot;bracevert&quot;</span> <span class="s">&quot;breve&quot;</span> <span class="s">&quot;buildrel&quot;</span>
<a name="cl-214"></a>   <span class="s">&quot;bullet&quot;</span> <span class="s">&quot;cap&quot;</span> <span class="s">&quot;caption&quot;</span> <span class="s">&quot;cbezier&quot;</span> <span class="s">&quot;cdot&quot;</span> <span class="s">&quot;cdots&quot;</span> <span class="s">&quot;centering&quot;</span> <span class="s">&quot;chapter&quot;</span>
<a name="cl-215"></a>   <span class="s">&quot;check&quot;</span> <span class="s">&quot;chi&quot;</span> <span class="s">&quot;circ&quot;</span> <span class="s">&quot;cite&quot;</span> <span class="s">&quot;cleardoublepage&quot;</span> <span class="s">&quot;clearpage&quot;</span> <span class="s">&quot;cline&quot;</span>
<a name="cl-216"></a>   <span class="s">&quot;clubsuit&quot;</span> <span class="s">&quot;colon&quot;</span> <span class="s">&quot;columnsep&quot;</span> <span class="s">&quot;columnseprule&quot;</span> <span class="s">&quot;cong&quot;</span> <span class="s">&quot;coprod&quot;</span> <span class="s">&quot;cos&quot;</span>
<a name="cl-217"></a>   <span class="s">&quot;cosh&quot;</span> <span class="s">&quot;cot&quot;</span> <span class="s">&quot;crcr&quot;</span> <span class="s">&quot;csc&quot;</span> <span class="s">&quot;cup&quot;</span> <span class="s">&quot;dagger&quot;</span> <span class="s">&quot;dashbox&quot;</span> <span class="s">&quot;dashv&quot;</span> <span class="s">&quot;date&quot;</span>
<a name="cl-218"></a>   <span class="s">&quot;ddagger&quot;</span> <span class="s">&quot;ddot&quot;</span> <span class="s">&quot;ddots&quot;</span> <span class="s">&quot;deg&quot;</span> <span class="s">&quot;delta&quot;</span> <span class="s">&quot;det&quot;</span> <span class="s">&quot;diamond&quot;</span> <span class="s">&quot;diamondsuit&quot;</span> <span class="s">&quot;dim&quot;</span>
<a name="cl-219"></a>   <span class="s">&quot;displaystyle&quot;</span> <span class="s">&quot;div&quot;</span> <span class="s">&quot;documentclass&quot;</span> <span class="s">&quot;documentstyle&quot;</span> <span class="s">&quot;dot&quot;</span> <span class="s">&quot;doteq&quot;</span>
<a name="cl-220"></a>   <span class="s">&quot;doublerulesep&quot;</span> <span class="s">&quot;downarrow&quot;</span> <span class="s">&quot;ell&quot;</span> <span class="s">&quot;emph&quot;</span> <span class="s">&quot;emptyset&quot;</span> <span class="s">&quot;end&quot;</span> <span class="s">&quot;enlargethispage&quot;</span>
<a name="cl-221"></a>   <span class="s">&quot;enskip&quot;</span> <span class="s">&quot;enspace&quot;</span> <span class="s">&quot;ensuremath&quot;</span> <span class="s">&quot;epsilon&quot;</span> <span class="s">&quot;equiv&quot;</span> <span class="s">&quot;eta&quot;</span> <span class="s">&quot;exists&quot;</span> <span class="s">&quot;exp&quot;</span>
<a name="cl-222"></a>   <span class="s">&quot;fbox&quot;</span> <span class="s">&quot;footnote&quot;</span> <span class="s">&quot;footnotemark&quot;</span> <span class="s">&quot;footnotesize&quot;</span> <span class="s">&quot;footnotetext&quot;</span> <span class="s">&quot;footskip&quot;</span>
<a name="cl-223"></a>   <span class="s">&quot;forall&quot;</span> <span class="s">&quot;frac&quot;</span> <span class="s">&quot;framebox&quot;</span> <span class="s">&quot;frown&quot;</span> <span class="s">&quot;gamma&quot;</span> <span class="s">&quot;gcd&quot;</span> <span class="s">&quot;ge&quot;</span> <span class="s">&quot;geq&quot;</span> <span class="s">&quot;gets&quot;</span> <span class="s">&quot;gg&quot;</span>
<a name="cl-224"></a>   <span class="s">&quot;glossary&quot;</span> <span class="s">&quot;grave&quot;</span> <span class="s">&quot;halflineskip&quot;</span> <span class="s">&quot;hat&quot;</span> <span class="s">&quot;hbar&quot;</span> <span class="s">&quot;hbox&quot;</span> <span class="s">&quot;headheight&quot;</span>
<a name="cl-225"></a>   <span class="s">&quot;headsep&quot;</span> <span class="s">&quot;heartsuit&quot;</span> <span class="s">&quot;hfil&quot;</span> <span class="s">&quot;hfill&quot;</span> <span class="s">&quot;hline&quot;</span> <span class="s">&quot;hom&quot;</span> <span class="s">&quot;hookleftarrow&quot;</span>
<a name="cl-226"></a>   <span class="s">&quot;hookrightarrow&quot;</span> <span class="s">&quot;hphantom&quot;</span> <span class="s">&quot;hskip&quot;</span> <span class="s">&quot;hspace&quot;</span> <span class="s">&quot;hss&quot;</span> <span class="s">&quot;huge&quot;</span> <span class="s">&quot;ialign&quot;</span> <span class="s">&quot;iff&quot;</span>
<a name="cl-227"></a>   <span class="s">&quot;imath&quot;</span> <span class="s">&quot;in&quot;</span> <span class="s">&quot;include&quot;</span> <span class="s">&quot;includeonly&quot;</span> <span class="s">&quot;indent&quot;</span> <span class="s">&quot;index&quot;</span> <span class="s">&quot;inf&quot;</span> <span class="s">&quot;infty&quot;</span> <span class="s">&quot;input&quot;</span>
<a name="cl-228"></a>   <span class="s">&quot;int&quot;</span> <span class="s">&quot;iota&quot;</span> <span class="s">&quot;it&quot;</span> <span class="s">&quot;item&quot;</span> <span class="s">&quot;itemindent&quot;</span> <span class="s">&quot;itemize&quot;</span> <span class="s">&quot;itemsep&quot;</span> <span class="s">&quot;itshape&quot;</span> <span class="s">&quot;jmath&quot;</span>
<a name="cl-229"></a>   <span class="s">&quot;join&quot;</span> <span class="s">&quot;kappa&quot;</span> <span class="s">&quot;ker&quot;</span> <span class="s">&quot;kern&quot;</span> <span class="s">&quot;kill&quot;</span> <span class="s">&quot;label&quot;</span> <span class="s">&quot;labelsep&quot;</span> <span class="s">&quot;labelwidth&quot;</span> <span class="s">&quot;lambda&quot;</span>
<a name="cl-230"></a>   <span class="s">&quot;land&quot;</span> <span class="s">&quot;landscape&quot;</span> <span class="s">&quot;langle&quot;</span> <span class="s">&quot;large&quot;</span> <span class="s">&quot;lbrace&quot;</span> <span class="s">&quot;lceil&quot;</span> <span class="s">&quot;ldots&quot;</span> <span class="s">&quot;le&quot;</span> <span class="s">&quot;left&quot;</span>
<a name="cl-231"></a>   <span class="s">&quot;leftarrow&quot;</span> <span class="s">&quot;leftharpoondown&quot;</span> <span class="s">&quot;leftharpoonup&quot;</span> <span class="s">&quot;leftmargin&quot;</span> <span class="s">&quot;leftrightarrow&quot;</span>
<a name="cl-232"></a>   <span class="s">&quot;legalpaper&quot;</span> <span class="s">&quot;leq&quot;</span> <span class="s">&quot;lfloor&quot;</span> <span class="s">&quot;lg&quot;</span> <span class="s">&quot;lgroup&quot;</span> <span class="s">&quot;lim&quot;</span> <span class="s">&quot;liminf&quot;</span> <span class="s">&quot;limsup&quot;</span> <span class="s">&quot;line&quot;</span>
<a name="cl-233"></a>   <span class="s">&quot;linebreak&quot;</span> <span class="s">&quot;linethickness&quot;</span> <span class="s">&quot;linewidth&quot;</span> <span class="s">&quot;listoffigures&quot;</span> <span class="s">&quot;listoftables&quot;</span>
<a name="cl-234"></a>   <span class="s">&quot;listparindent&quot;</span> <span class="s">&quot;ll&quot;</span> <span class="s">&quot;llap&quot;</span> <span class="s">&quot;lmoustache&quot;</span> <span class="s">&quot;ln&quot;</span> <span class="s">&quot;lnot&quot;</span> <span class="s">&quot;log&quot;</span> <span class="s">&quot;longleftarrow&quot;</span>
<a name="cl-235"></a>   <span class="s">&quot;longleftrightarrow&quot;</span> <span class="s">&quot;longmapsto&quot;</span> <span class="s">&quot;longrightarrow&quot;</span> <span class="s">&quot;lor&quot;</span> <span class="s">&quot;lower&quot;</span>
<a name="cl-236"></a>   <span class="s">&quot;macrocode&quot;</span> <span class="s">&quot;makeatletter&quot;</span> <span class="s">&quot;makeatother&quot;</span> <span class="s">&quot;makebox&quot;</span> <span class="s">&quot;makeindex&quot;</span> <span class="s">&quot;maketitle&quot;</span>
<a name="cl-237"></a>   <span class="s">&quot;mapsto&quot;</span> <span class="s">&quot;marginpar&quot;</span> <span class="s">&quot;marginparsep&quot;</span> <span class="s">&quot;marginparwidth&quot;</span> <span class="s">&quot;mathbin&quot;</span> <span class="s">&quot;mathbm&quot;</span>
<a name="cl-238"></a>   <span class="s">&quot;mathcal&quot;</span> <span class="s">&quot;mathclose&quot;</span> <span class="s">&quot;mathindent&quot;</span> <span class="s">&quot;mathit&quot;</span> <span class="s">&quot;mathnormal&quot;</span> <span class="s">&quot;mathop&quot;</span>
<a name="cl-239"></a>   <span class="s">&quot;mathopen&quot;</span> <span class="s">&quot;mathord&quot;</span> <span class="s">&quot;mathpunct&quot;</span> <span class="s">&quot;mathrel&quot;</span> <span class="s">&quot;mathring&quot;</span> <span class="s">&quot;mathrm&quot;</span> <span class="s">&quot;mathsf&quot;</span>
<a name="cl-240"></a>   <span class="s">&quot;mathtt&quot;</span> <span class="s">&quot;max&quot;</span> <span class="s">&quot;mbox&quot;</span> <span class="s">&quot;mdseries&quot;</span> <span class="s">&quot;medskip&quot;</span> <span class="s">&quot;mid&quot;</span> <span class="s">&quot;min&quot;</span> <span class="s">&quot;models&quot;</span> <span class="s">&quot;mp&quot;</span> <span class="s">&quot;mu&quot;</span>
<a name="cl-241"></a>   <span class="s">&quot;multicolumn&quot;</span> <span class="s">&quot;multiput&quot;</span> <span class="s">&quot;nabla&quot;</span> <span class="s">&quot;natural&quot;</span> <span class="s">&quot;ne&quot;</span> <span class="s">&quot;nearrow&quot;</span> <span class="s">&quot;neg&quot;</span>
<a name="cl-242"></a>   <span class="s">&quot;negthinspace&quot;</span> <span class="s">&quot;neq&quot;</span> <span class="s">&quot;newcommand&quot;</span> <span class="s">&quot;newcounter&quot;</span> <span class="s">&quot;newenvironment&quot;</span> <span class="s">&quot;newlength&quot;</span>
<a name="cl-243"></a>   <span class="s">&quot;newline&quot;</span> <span class="s">&quot;newpage&quot;</span> <span class="s">&quot;newsavebox&quot;</span> <span class="s">&quot;newtheorem&quot;</span> <span class="s">&quot;ni&quot;</span> <span class="s">&quot;noalign&quot;</span> <span class="s">&quot;nocite&quot;</span>
<a name="cl-244"></a>   <span class="s">&quot;nofiles&quot;</span> <span class="s">&quot;noindent&quot;</span> <span class="s">&quot;nolinebreak&quot;</span> <span class="s">&quot;nonumber&quot;</span> <span class="s">&quot;nopagebreak&quot;</span> <span class="s">&quot;normalsize&quot;</span>
<a name="cl-245"></a>   <span class="s">&quot;not&quot;</span> <span class="s">&quot;notin&quot;</span> <span class="s">&quot;nu&quot;</span> <span class="s">&quot;nwarrow&quot;</span> <span class="s">&quot;oalign&quot;</span> <span class="s">&quot;oddsidemargin&quot;</span> <span class="s">&quot;odot&quot;</span> <span class="s">&quot;oint&quot;</span> <span class="s">&quot;omega&quot;</span>
<a name="cl-246"></a>   <span class="s">&quot;ominus&quot;</span> <span class="s">&quot;onelineskip&quot;</span> <span class="s">&quot;ooalign&quot;</span> <span class="s">&quot;openbib&quot;</span> <span class="s">&quot;oplus&quot;</span> <span class="s">&quot;oslash&quot;</span> <span class="s">&quot;otimes&quot;</span> <span class="s">&quot;oval&quot;</span>
<a name="cl-247"></a>   <span class="s">&quot;overbrace&quot;</span> <span class="s">&quot;overleftarrow&quot;</span> <span class="s">&quot;overline&quot;</span> <span class="s">&quot;overrightarrow&quot;</span> <span class="s">&quot;owns&quot;</span> <span class="s">&quot;pagebreak&quot;</span>
<a name="cl-248"></a>   <span class="s">&quot;pagenumbering&quot;</span> <span class="s">&quot;pageref&quot;</span> <span class="s">&quot;pagestyle&quot;</span> <span class="s">&quot;par&quot;</span> <span class="s">&quot;paragraph&quot;</span> <span class="s">&quot;parallel&quot;</span> <span class="s">&quot;parbox&quot;</span>
<a name="cl-249"></a>   <span class="s">&quot;parindent&quot;</span> <span class="s">&quot;parsep&quot;</span> <span class="s">&quot;parskip&quot;</span> <span class="s">&quot;part&quot;</span> <span class="s">&quot;partial&quot;</span> <span class="s">&quot;partopsep&quot;</span> <span class="s">&quot;perp&quot;</span>
<a name="cl-250"></a>   <span class="s">&quot;phantom&quot;</span> <span class="s">&quot;phi&quot;</span> <span class="s">&quot;pi&quot;</span> <span class="s">&quot;pm&quot;</span> <span class="s">&quot;pmod&quot;</span> <span class="s">&quot;prec&quot;</span> <span class="s">&quot;preceq&quot;</span> <span class="s">&quot;prime&quot;</span> <span class="s">&quot;prod&quot;</span> <span class="s">&quot;propto&quot;</span>
<a name="cl-251"></a>   <span class="s">&quot;protect&quot;</span> <span class="s">&quot;providecommand&quot;</span> <span class="s">&quot;psi&quot;</span> <span class="s">&quot;put&quot;</span> <span class="s">&quot;qbezier&quot;</span> <span class="s">&quot;qquad&quot;</span> <span class="s">&quot;quad&quot;</span> <span class="s">&quot;raise&quot;</span>
<a name="cl-252"></a>   <span class="s">&quot;raisebox&quot;</span> <span class="s">&quot;rbrace&quot;</span> <span class="s">&quot;rceil&quot;</span> <span class="s">&quot;ref&quot;</span> <span class="s">&quot;renewcommand&quot;</span> <span class="s">&quot;renewenvironment&quot;</span>
<a name="cl-253"></a>   <span class="s">&quot;report&quot;</span> <span class="s">&quot;rfloor&quot;</span> <span class="s">&quot;rgroup&quot;</span> <span class="s">&quot;rho&quot;</span> <span class="s">&quot;right&quot;</span> <span class="s">&quot;rightarrow&quot;</span> <span class="s">&quot;rightharpoondown&quot;</span>
<a name="cl-254"></a>   <span class="s">&quot;rightharpoonup&quot;</span> <span class="s">&quot;rightleftharpoons&quot;</span> <span class="s">&quot;rightmargin&quot;</span> <span class="s">&quot;rlap&quot;</span> <span class="s">&quot;rm&quot;</span> <span class="s">&quot;rmfamily&quot;</span>
<a name="cl-255"></a>   <span class="s">&quot;rmoustache&quot;</span> <span class="s">&quot;rule&quot;</span> <span class="s">&quot;savebox&quot;</span> <span class="s">&quot;sbox&quot;</span> <span class="s">&quot;sc&quot;</span> <span class="s">&quot;scriptscriptstyle&quot;</span> <span class="s">&quot;scriptsize&quot;</span>
<a name="cl-256"></a>   <span class="s">&quot;scriptstyle&quot;</span> <span class="s">&quot;scshape&quot;</span> <span class="s">&quot;searrow&quot;</span> <span class="s">&quot;sec&quot;</span> <span class="s">&quot;section&quot;</span> <span class="s">&quot;setbox&quot;</span> <span class="s">&quot;setcounter&quot;</span>
<a name="cl-257"></a>   <span class="s">&quot;setlength&quot;</span> <span class="s">&quot;setminus&quot;</span> <span class="s">&quot;settowidth&quot;</span> <span class="s">&quot;sf&quot;</span> <span class="s">&quot;sffamily&quot;</span> <span class="s">&quot;sharp&quot;</span> <span class="s">&quot;sigma&quot;</span> <span class="s">&quot;sim&quot;</span>
<a name="cl-258"></a>   <span class="s">&quot;simeq&quot;</span> <span class="s">&quot;sin&quot;</span> <span class="s">&quot;sinh&quot;</span> <span class="s">&quot;skew&quot;</span> <span class="s">&quot;sl&quot;</span> <span class="s">&quot;sloppy&quot;</span> <span class="s">&quot;sloppypar&quot;</span> <span class="s">&quot;slshape&quot;</span> <span class="s">&quot;small&quot;</span>
<a name="cl-259"></a>   <span class="s">&quot;smallint&quot;</span> <span class="s">&quot;smallskip&quot;</span> <span class="s">&quot;smile&quot;</span> <span class="s">&quot;spadesuit&quot;</span> <span class="s">&quot;sqcap&quot;</span> <span class="s">&quot;sqcup&quot;</span> <span class="s">&quot;sqrt&quot;</span>
<a name="cl-260"></a>   <span class="s">&quot;sqsubseteq&quot;</span> <span class="s">&quot;sqsupseteq&quot;</span> <span class="s">&quot;stackrel&quot;</span> <span class="s">&quot;star&quot;</span> <span class="s">&quot;stepcounter&quot;</span> <span class="s">&quot;subparagraph&quot;</span>
<a name="cl-261"></a>   <span class="s">&quot;subsection&quot;</span> <span class="s">&quot;subset&quot;</span> <span class="s">&quot;subseteq&quot;</span> <span class="s">&quot;subsubparagraph&quot;</span> <span class="s">&quot;subsubsection&quot;</span> <span class="s">&quot;succ&quot;</span>
<a name="cl-262"></a>   <span class="s">&quot;succeq&quot;</span> <span class="s">&quot;sum&quot;</span> <span class="s">&quot;sup&quot;</span> <span class="s">&quot;supset&quot;</span> <span class="s">&quot;supseteq&quot;</span> <span class="s">&quot;surd&quot;</span> <span class="s">&quot;swarrow&quot;</span> <span class="s">&quot;tabcolsep&quot;</span>
<a name="cl-263"></a>   <span class="s">&quot;tableofcontents&quot;</span> <span class="s">&quot;tan&quot;</span> <span class="s">&quot;tanh&quot;</span> <span class="s">&quot;tau&quot;</span> <span class="s">&quot;textbf&quot;</span> <span class="s">&quot;textcircled&quot;</span> <span class="s">&quot;textheight&quot;</span>
<a name="cl-264"></a>   <span class="s">&quot;textit&quot;</span> <span class="s">&quot;textmd&quot;</span> <span class="s">&quot;textnormal&quot;</span> <span class="s">&quot;textrm&quot;</span> <span class="s">&quot;textsc&quot;</span> <span class="s">&quot;textsf&quot;</span> <span class="s">&quot;textsl&quot;</span>
<a name="cl-265"></a>   <span class="s">&quot;textsterling&quot;</span> <span class="s">&quot;textstyle&quot;</span> <span class="s">&quot;textsuperscript&quot;</span> <span class="s">&quot;texttt&quot;</span> <span class="s">&quot;textup&quot;</span> <span class="s">&quot;textwidth&quot;</span>
<a name="cl-266"></a>   <span class="s">&quot;thanks&quot;</span> <span class="s">&quot;therefore&quot;</span> <span class="s">&quot;theta&quot;</span> <span class="s">&quot;thicklines&quot;</span> <span class="s">&quot;thinlines&quot;</span> <span class="s">&quot;thinspace&quot;</span>
<a name="cl-267"></a>   <span class="s">&quot;thispagestyle&quot;</span> <span class="s">&quot;tilde&quot;</span> <span class="s">&quot;times&quot;</span> <span class="s">&quot;tiny&quot;</span> <span class="s">&quot;title&quot;</span> <span class="s">&quot;to&quot;</span> <span class="s">&quot;tombow&quot;</span> <span class="s">&quot;top&quot;</span>
<a name="cl-268"></a>   <span class="s">&quot;topmargin&quot;</span> <span class="s">&quot;topsep&quot;</span> <span class="s">&quot;topskip&quot;</span> <span class="s">&quot;triangle&quot;</span> <span class="s">&quot;triangleleft&quot;</span> <span class="s">&quot;triangleright&quot;</span>
<a name="cl-269"></a>   <span class="s">&quot;tt&quot;</span> <span class="s">&quot;ttfamily&quot;</span> <span class="s">&quot;twocolumn&quot;</span> <span class="s">&quot;typeout&quot;</span> <span class="s">&quot;unboldmath&quot;</span> <span class="s">&quot;underbrace&quot;</span>
<a name="cl-270"></a>   <span class="s">&quot;underline&quot;</span> <span class="s">&quot;unitlength&quot;</span> <span class="s">&quot;uparrow&quot;</span> <span class="s">&quot;updownarrow&quot;</span> <span class="s">&quot;uplus&quot;</span> <span class="s">&quot;upshape&quot;</span>
<a name="cl-271"></a>   <span class="s">&quot;upsilon&quot;</span> <span class="s">&quot;usebox&quot;</span> <span class="s">&quot;usepackage&quot;</span> <span class="s">&quot;varbigtriangledown&quot;</span> <span class="s">&quot;varbigtriangleup&quot;</span>
<a name="cl-272"></a>   <span class="s">&quot;varepsilon&quot;</span> <span class="s">&quot;varphi&quot;</span> <span class="s">&quot;varpi&quot;</span> <span class="s">&quot;varrho&quot;</span> <span class="s">&quot;varsigma&quot;</span> <span class="s">&quot;vartheta&quot;</span> <span class="s">&quot;vdash&quot;</span>
<a name="cl-273"></a>   <span class="s">&quot;vdots&quot;</span> <span class="s">&quot;vec&quot;</span> <span class="s">&quot;vector&quot;</span> <span class="s">&quot;vee&quot;</span> <span class="s">&quot;vert&quot;</span> <span class="s">&quot;vfil&quot;</span> <span class="s">&quot;vfill&quot;</span> <span class="s">&quot;vphantom&quot;</span> <span class="s">&quot;vskip&quot;</span>
<a name="cl-274"></a>   <span class="s">&quot;vspace&quot;</span> <span class="s">&quot;vss&quot;</span> <span class="s">&quot;vtop&quot;</span> <span class="s">&quot;wedge&quot;</span> <span class="s">&quot;widehat&quot;</span> <span class="s">&quot;widetilde&quot;</span> <span class="s">&quot;wp&quot;</span> <span class="s">&quot;wr&quot;</span> <span class="s">&quot;xi&quot;</span> <span class="s">&quot;zeta&quot;</span>
<a name="cl-275"></a>
<a name="cl-276"></a>   <span class="c1">;; pLaTeX</span>
<a name="cl-277"></a>   <span class="s">&quot;gtfamily&quot;</span> <span class="s">&quot;mathgt&quot;</span> <span class="s">&quot;mathmc&quot;</span> <span class="s">&quot;mcfamily&quot;</span> <span class="s">&quot;textgt&quot;</span> <span class="s">&quot;textmc&quot;</span>
<a name="cl-278"></a>   <span class="p">))</span>
<a name="cl-279"></a>
<a name="cl-280"></a><span class="c1">;; external package commands</span>
<a name="cl-281"></a><span class="p">(</span><span class="nv">ac-l-define-dictionary-source</span>
<a name="cl-282"></a> <span class="nv">ac-l-source-package-commands</span>
<a name="cl-283"></a> <span class="o">&#39;</span><span class="p">(</span>
<a name="cl-284"></a>   <span class="c1">;; AMS-LaTeX</span>
<a name="cl-285"></a>   <span class="s">&quot;Bbbk&quot;&quot;Bumpeq&quot;</span> <span class="s">&quot;Cap&quot;</span> <span class="s">&quot;Cup&quot;</span> <span class="s">&quot;DeclareMathOperator&quot;</span> <span class="s">&quot;Doteq&quot;</span> <span class="s">&quot;Finv&quot;</span> <span class="s">&quot;Game&quot;</span>
<a name="cl-286"></a>   <span class="s">&quot;Lleftarrow&quot;</span> <span class="s">&quot;Lsh&quot;</span> <span class="s">&quot;Rrightarrow&quot;</span> <span class="s">&quot;Rsh&quot;</span> <span class="s">&quot;Subset&quot;</span> <span class="s">&quot;Supset&quot;</span> <span class="s">&quot;Vdash&quot;</span>
<a name="cl-287"></a>   <span class="s">&quot;Vvdash&quot;</span> <span class="s">&quot;abs&quot;</span> <span class="s">&quot;allowdisplaybreaks&quot;</span> <span class="s">&quot;approxeq&quot;</span> <span class="s">&quot;backepsilon&quot;</span> <span class="s">&quot;backprime&quot;</span>
<a name="cl-288"></a>   <span class="s">&quot;backsim&quot;</span> <span class="s">&quot;backsimeq&quot;</span> <span class="s">&quot;barwedge&quot;</span> <span class="s">&quot;because&quot;</span> <span class="s">&quot;beth&quot;</span> <span class="s">&quot;between&quot;</span> <span class="s">&quot;bigstar&quot;</span>
<a name="cl-289"></a>   <span class="s">&quot;binom&quot;</span> <span class="s">&quot;blacklozenge&quot;</span> <span class="s">&quot;blackprime&quot;</span> <span class="s">&quot;blacksquare&quot;</span> <span class="s">&quot;blacktriangle&quot;</span>
<a name="cl-290"></a>   <span class="s">&quot;blacktriangledown&quot;</span> <span class="s">&quot;blacktriangleleft&quot;</span> <span class="s">&quot;blacktriangleright&quot;</span>
<a name="cl-291"></a>   <span class="s">&quot;boldsymbol&quot;</span> <span class="s">&quot;boxdot&quot;</span> <span class="s">&quot;boxed&quot;</span> <span class="s">&quot;boxminus&quot;</span> <span class="s">&quot;boxplus&quot;</span> <span class="s">&quot;boxtimes&quot;</span> <span class="s">&quot;bumpeq&quot;</span>
<a name="cl-292"></a>   <span class="s">&quot;c@MaxMatrixCols&quot;</span> <span class="s">&quot;cdots&quot;</span> <span class="s">&quot;centerdot&quot;</span> <span class="s">&quot;cfrac&quot;</span> <span class="s">&quot;circeq&quot;</span> <span class="s">&quot;circlearrowleft&quot;</span>
<a name="cl-293"></a>   <span class="s">&quot;circlearrowright&quot;</span> <span class="s">&quot;circledS&quot;</span> <span class="s">&quot;circledast&quot;</span> <span class="s">&quot;circledcirc&quot;</span> <span class="s">&quot;circleddash&quot;</span>
<a name="cl-294"></a>   <span class="s">&quot;complement&quot;</span> <span class="s">&quot;curlyeqprec&quot;</span> <span class="s">&quot;curlyeqsucc&quot;</span> <span class="s">&quot;curlyvee&quot;</span> <span class="s">&quot;curlywedge&quot;</span>
<a name="cl-295"></a>   <span class="s">&quot;curvearrowleft&quot;</span> <span class="s">&quot;curvearrowright&quot;</span> <span class="s">&quot;daleth&quot;</span> <span class="s">&quot;dbinom&quot;</span> <span class="s">&quot;ddddot&quot;</span>
<a name="cl-296"></a>   <span class="s">&quot;dddot&quot;</span> <span class="s">&quot;dfrac&quot;</span> <span class="s">&quot;diagdown&quot;</span> <span class="s">&quot;diagup&quot;</span> <span class="s">&quot;digamma&quot;</span> <span class="s">&quot;displaybreak&quot;</span>
<a name="cl-297"></a>   <span class="s">&quot;divideontimes&quot;</span> <span class="s">&quot;doteqdot&quot;</span> <span class="s">&quot;dotplus&quot;</span> <span class="s">&quot;dotsb&quot;</span> <span class="s">&quot;dotsc&quot;</span> <span class="s">&quot;dotsi&quot;</span> <span class="s">&quot;dotsm&quot;</span>
<a name="cl-298"></a>   <span class="s">&quot;dotso&quot;</span> <span class="s">&quot;doublebarwedge&quot;</span> <span class="s">&quot;doublecap&quot;</span> <span class="s">&quot;doublecup&quot;</span> <span class="s">&quot;downdownarrows&quot;</span>
<a name="cl-299"></a>   <span class="s">&quot;downharpoonleft&quot;</span> <span class="s">&quot;downharpoonright&quot;</span> <span class="s">&quot;eqcirc&quot;</span> <span class="s">&quot;eqref&quot;</span> <span class="s">&quot;eqsim&quot;</span> <span class="s">&quot;eqslantgtr&quot;</span>
<a name="cl-300"></a>   <span class="s">&quot;eqslantless&quot;</span> <span class="s">&quot;eth&quot;</span> <span class="s">&quot;fallingdotseq&quot;</span> <span class="s">&quot;genfrac&quot;</span> <span class="s">&quot;geqq&quot;</span> <span class="s">&quot;geqslant&quot;</span> <span class="s">&quot;ggg&quot;</span>
<a name="cl-301"></a>   <span class="s">&quot;gggtr&quot;</span> <span class="s">&quot;gimel&quot;</span> <span class="s">&quot;gnapprox&quot;</span> <span class="s">&quot;gneq&quot;</span> <span class="s">&quot;gneqq&quot;</span> <span class="s">&quot;gnsim&quot;</span> <span class="s">&quot;gtrapprox&quot;</span> <span class="s">&quot;gtrdot&quot;</span>
<a name="cl-302"></a>   <span class="s">&quot;gtreqless&quot;</span> <span class="s">&quot;gtreqqless&quot;</span> <span class="s">&quot;gtrless&quot;</span> <span class="s">&quot;gtrsim&quot;</span> <span class="s">&quot;gvertneqq&quot;</span> <span class="s">&quot;hdotsfor&quot;</span> <span class="s">&quot;hslash&quot;</span>
<a name="cl-303"></a>   <span class="s">&quot;idotsint&quot;</span> <span class="s">&quot;iiiint&quot;</span> <span class="s">&quot;iiint&quot;</span> <span class="s">&quot;iint&quot;</span> <span class="s">&quot;injlim&quot;</span> <span class="s">&quot;intercal&quot;</span> <span class="s">&quot;intertext&quot;</span>
<a name="cl-304"></a>   <span class="s">&quot;lVert&quot;</span> <span class="s">&quot;ldots&quot;</span> <span class="s">&quot;leftarrowtail&quot;</span> <span class="s">&quot;leftleftarrows&quot;</span> <span class="s">&quot;leftrightarrows&quot;</span>
<a name="cl-305"></a>   <span class="s">&quot;leftrightharpoons&quot;</span> <span class="s">&quot;leftrightsquigarrow&quot;</span> <span class="s">&quot;leftroot&quot;</span> <span class="s">&quot;leftthreetimes&quot;</span>
<a name="cl-306"></a>   <span class="s">&quot;leqq&quot;</span> <span class="s">&quot;leqslant&quot;</span> <span class="s">&quot;lessapprox&quot;</span> <span class="s">&quot;lessdot&quot;</span> <span class="s">&quot;lesseqgtr&quot;</span> <span class="s">&quot;lesseqqgtr&quot;</span>
<a name="cl-307"></a>   <span class="s">&quot;lessgtr&quot;</span> <span class="s">&quot;lesssim&quot;</span> <span class="s">&quot;lll&quot;</span> <span class="s">&quot;llless&quot;</span> <span class="s">&quot;lnapprox&quot;</span> <span class="s">&quot;lneq&quot;</span> <span class="s">&quot;lneqq&quot;</span> <span class="s">&quot;lnsim&quot;</span>
<a name="cl-308"></a>   <span class="s">&quot;looparrowleft&quot;</span> <span class="s">&quot;looparrowright&quot;</span> <span class="s">&quot;lozenge&quot;</span> <span class="s">&quot;ltimes&quot;</span> <span class="s">&quot;lvert&quot;</span> <span class="s">&quot;lvertneqq&quot;</span>
<a name="cl-309"></a>   <span class="s">&quot;mathbb&quot;</span> <span class="s">&quot;mathcal&quot;</span> <span class="s">&quot;mathfrak&quot;</span> <span class="s">&quot;measuredangle&quot;</span> <span class="s">&quot;medspace&quot;</span> <span class="s">&quot;mspace&quot;</span>
<a name="cl-310"></a>   <span class="s">&quot;multimap&quot;</span> <span class="s">&quot;multlinegap&quot;</span> <span class="s">&quot;nLeftarrow&quot;</span> <span class="s">&quot;nLeftrightarrow&quot;</span> <span class="s">&quot;nRightarrow&quot;</span>
<a name="cl-311"></a>   <span class="s">&quot;nVDash&quot;</span> <span class="s">&quot;nVdash&quot;</span> <span class="s">&quot;namelimits&quot;</span> <span class="s">&quot;ncong&quot;</span> <span class="s">&quot;negmedspace&quot;</span> <span class="s">&quot;negthickspace&quot;</span>
<a name="cl-312"></a>   <span class="s">&quot;nexists&quot;</span> <span class="s">&quot;ngeq&quot;</span> <span class="s">&quot;ngeqq&quot;</span> <span class="s">&quot;ngeqslant&quot;</span> <span class="s">&quot;ngtr&quot;</span> <span class="s">&quot;nleftarrow&quot;</span> <span class="s">&quot;nleftrightarrow&quot;</span>
<a name="cl-313"></a>   <span class="s">&quot;nleq&quot;</span> <span class="s">&quot;nleqq&quot;</span> <span class="s">&quot;nleqslant&quot;</span> <span class="s">&quot;nless&quot;</span> <span class="s">&quot;nmid&quot;</span> <span class="s">&quot;nobreakdash&quot;</span> <span class="s">&quot;nointlimits&quot;</span>
<a name="cl-314"></a>   <span class="s">&quot;nonamelimits&quot;</span> <span class="s">&quot;norm&quot;</span> <span class="s">&quot;nosumlimits&quot;</span> <span class="s">&quot;notag&quot;</span> <span class="s">&quot;nparallel&quot;</span> <span class="s">&quot;nprec&quot;</span> <span class="s">&quot;npreceq&quot;</span>
<a name="cl-315"></a>   <span class="s">&quot;nrightarrow&quot;</span> <span class="s">&quot;nshortmid&quot;</span> <span class="s">&quot;nshortparallel&quot;</span> <span class="s">&quot;nsim&quot;</span> <span class="s">&quot;nsubseteq&quot;</span> <span class="s">&quot;nsubseteqq&quot;</span>
<a name="cl-316"></a>   <span class="s">&quot;nsucc&quot;</span> <span class="s">&quot;nsucceq&quot;</span> <span class="s">&quot;nsupseteq&quot;</span> <span class="s">&quot;nsupseteqq&quot;</span> <span class="s">&quot;ntriangleleft&quot;</span>
<a name="cl-317"></a>   <span class="s">&quot;ntrianglelefteq&quot;</span> <span class="s">&quot;ntriangleright&quot;</span> <span class="s">&quot;ntrianglerighteq&quot;</span> <span class="s">&quot;numberwithin&quot;</span>
<a name="cl-318"></a>   <span class="s">&quot;nvDash&quot;</span> <span class="s">&quot;nvdash&quot;</span> <span class="s">&quot;operatorname&quot;</span> <span class="s">&quot;overleftrightarrow&quot;</span> <span class="s">&quot;overset&quot;</span>
<a name="cl-319"></a>   <span class="s">&quot;parentequation&quot;</span> <span class="s">&quot;pitchfork&quot;</span> <span class="s">&quot;pmb&quot;</span> <span class="s">&quot;precapprox&quot;</span> <span class="s">&quot;preccurlyeq&quot;</span> <span class="s">&quot;precnapprox&quot;</span>
<a name="cl-320"></a>   <span class="s">&quot;precneqq&quot;</span> <span class="s">&quot;precnsim&quot;</span> <span class="s">&quot;presim&quot;</span> <span class="s">&quot;projlim&quot;</span> <span class="s">&quot;rVert&quot;</span> <span class="s">&quot;raisetag&quot;</span> <span class="s">&quot;restriction&quot;</span>
<a name="cl-321"></a>   <span class="s">&quot;rightarrowtail&quot;</span> <span class="s">&quot;rightleftarrows&quot;</span> <span class="s">&quot;rightrightarrows&quot;</span> <span class="s">&quot;rightsquigarrow&quot;</span>
<a name="cl-322"></a>   <span class="s">&quot;rightthreetimes&quot;</span> <span class="s">&quot;risingdotseq&quot;</span> <span class="s">&quot;rtimes&quot;</span> <span class="s">&quot;rvert&quot;</span> <span class="s">&quot;shortmid&quot;</span>
<a name="cl-323"></a>   <span class="s">&quot;shortparallel&quot;</span> <span class="s">&quot;sideset&quot;</span> <span class="s">&quot;smallfrown&quot;</span> <span class="s">&quot;smallsetminus&quot;</span> <span class="s">&quot;smallsmile&quot;</span>
<a name="cl-324"></a>   <span class="s">&quot;sphat&quot;</span> <span class="s">&quot;sphericalangle&quot;</span> <span class="s">&quot;sptilde&quot;</span> <span class="s">&quot;square&quot;</span> <span class="s">&quot;subseteqq&quot;</span> <span class="s">&quot;subsetneq&quot;</span>
<a name="cl-325"></a>   <span class="s">&quot;subsetneqq&quot;</span> <span class="s">&quot;succapprox&quot;</span> <span class="s">&quot;succcurlyeq&quot;</span> <span class="s">&quot;succnapprox&quot;</span> <span class="s">&quot;succneqq&quot;</span>
<a name="cl-326"></a>   <span class="s">&quot;succnsim&quot;</span> <span class="s">&quot;succsim&quot;</span> <span class="s">&quot;supseteqq&quot;</span> <span class="s">&quot;supsetneq&quot;</span> <span class="s">&quot;supsetneqq&quot;</span> <span class="s">&quot;tag&quot;</span> <span class="s">&quot;tagform@&quot;</span>
<a name="cl-327"></a>   <span class="s">&quot;tags&quot;</span> <span class="s">&quot;tbinom&quot;</span> <span class="s">&quot;tfrac&quot;</span> <span class="s">&quot;therefore&quot;</span> <span class="s">&quot;thickapprox&quot;</span> <span class="s">&quot;thicksim&quot;</span> <span class="s">&quot;thickspace&quot;</span>
<a name="cl-328"></a>   <span class="s">&quot;triangledown&quot;</span> <span class="s">&quot;trianglelefteq&quot;</span> <span class="s">&quot;triangleq&quot;</span> <span class="s">&quot;trianglerighteq&quot;</span>
<a name="cl-329"></a>   <span class="s">&quot;twoheadleftarrow&quot;</span> <span class="s">&quot;twoheadrightarrow&quot;</span> <span class="s">&quot;underleftarrow&quot;</span>
<a name="cl-330"></a>   <span class="s">&quot;underleftrightarrow&quot;</span> <span class="s">&quot;underrightarrow&quot;</span> <span class="s">&quot;underset&quot;</span> <span class="s">&quot;upharpoonleft&quot;</span>
<a name="cl-331"></a>   <span class="s">&quot;upharpoonright&quot;</span> <span class="s">&quot;uproot&quot;</span> <span class="s">&quot;upuparrows&quot;</span> <span class="s">&quot;vDash&quot;</span> <span class="s">&quot;varDelta&quot;</span> <span class="s">&quot;varGamma&quot;</span>
<a name="cl-332"></a>   <span class="s">&quot;varLambda&quot;</span> <span class="s">&quot;varOmega&quot;</span> <span class="s">&quot;varPhi&quot;</span> <span class="s">&quot;varPi&quot;</span> <span class="s">&quot;varPsi&quot;</span> <span class="s">&quot;varSigma&quot;</span> <span class="s">&quot;varTheta&quot;</span>
<a name="cl-333"></a>   <span class="s">&quot;varUpsilon&quot;</span> <span class="s">&quot;varXi&quot;</span> <span class="s">&quot;varinjlim&quot;</span> <span class="s">&quot;varkappa&quot;</span> <span class="s">&quot;varliminf&quot;</span> <span class="s">&quot;varlimsup&quot;</span>
<a name="cl-334"></a>   <span class="s">&quot;varnothing&quot;</span> <span class="s">&quot;varprojlim&quot;</span> <span class="s">&quot;varpropto&quot;</span> <span class="s">&quot;varsubsetneq&quot;</span> <span class="s">&quot;varsubsetneqq&quot;</span>
<a name="cl-335"></a>   <span class="s">&quot;varsupsetneq&quot;</span> <span class="s">&quot;varsupsetneqq&quot;</span> <span class="s">&quot;vartriangle&quot;</span> <span class="s">&quot;vartriangleleft&quot;</span>
<a name="cl-336"></a>   <span class="s">&quot;vartriangleright&quot;</span> <span class="s">&quot;veebar&quot;</span> <span class="s">&quot;xleftarrow&quot;</span> <span class="s">&quot;xrightarrow&quot;</span>
<a name="cl-337"></a>
<a name="cl-338"></a>   <span class="c1">;; graphicx.sty</span>
<a name="cl-339"></a>   <span class="s">&quot;DeclareGraphicsExtensions&quot;</span> <span class="s">&quot;DeclareGraphicsRule&quot;</span> <span class="s">&quot;graphicspath&quot;</span>
<a name="cl-340"></a>   <span class="s">&quot;includegraphics&quot;</span> <span class="s">&quot;reflectbox&quot;</span> <span class="s">&quot;resizebox&quot;</span> <span class="s">&quot;rotatebox&quot;</span> <span class="s">&quot;scalebox&quot;</span>
<a name="cl-341"></a>
<a name="cl-342"></a>   <span class="c1">;; color.sty</span>
<a name="cl-343"></a>   <span class="s">&quot;color&quot;</span> <span class="s">&quot;colorbox&quot;</span> <span class="s">&quot;definecolor&quot;</span> <span class="s">&quot;fcolorbox&quot;</span> <span class="s">&quot;pagecolor&quot;</span> <span class="s">&quot;textcolor&quot;</span>
<a name="cl-344"></a>
<a name="cl-345"></a>   <span class="c1">;; latexsym.sty</span>
<a name="cl-346"></a>   <span class="s">&quot;Box&quot;</span> <span class="s">&quot;Diamond&quot;</span> <span class="s">&quot;Join&quot;</span> <span class="s">&quot;leadsto&quot;</span> <span class="s">&quot;lhd&quot;</span> <span class="s">&quot;mho&quot;</span>
<a name="cl-347"></a>   <span class="s">&quot;rhd&quot;</span> <span class="s">&quot;sqsubset&quot;</span> <span class="s">&quot;sqsupset&quot;</span> <span class="s">&quot;unlhd&quot;</span> <span class="s">&quot;unrhd&quot;</span>
<a name="cl-348"></a>   <span class="p">))</span>
<a name="cl-349"></a>
<a name="cl-350"></a><span class="c1">;; (p)TeX Primitive Control Sequences</span>
<a name="cl-351"></a><span class="p">(</span><span class="nv">ac-l-define-dictionary-source</span>
<a name="cl-352"></a> <span class="nv">ac-l-source-primitives</span>
<a name="cl-353"></a> <span class="o">&#39;</span><span class="p">(</span><span class="s">&quot;above&quot;</span> <span class="s">&quot;abovedisplayshortskip&quot;</span> <span class="s">&quot;abovedisplayskip&quot;</span> <span class="s">&quot;abovewithdelims&quot;</span>
<a name="cl-354"></a>   <span class="s">&quot;accent&quot;</span> <span class="s">&quot;adjdemerits&quot;</span> <span class="s">&quot;advance&quot;</span> <span class="s">&quot;afterassignment&quot;</span> <span class="s">&quot;aftergroup&quot;</span> <span class="s">&quot;atop&quot;</span>
<a name="cl-355"></a>   <span class="s">&quot;atopwithdelims&quot;</span> <span class="s">&quot;badness&quot;</span> <span class="s">&quot;baselineskip&quot;</span> <span class="s">&quot;batchmode&quot;</span> <span class="s">&quot;begingroup&quot;</span>
<a name="cl-356"></a>   <span class="s">&quot;belowdisplayshortskip&quot;</span> <span class="s">&quot;belowdisplayskip&quot;</span> <span class="s">&quot;binoppenalty&quot;</span> <span class="s">&quot;botmark&quot;</span> <span class="s">&quot;box&quot;</span>
<a name="cl-357"></a>   <span class="s">&quot;boxmaxdepth&quot;</span> <span class="s">&quot;brokenpenalty&quot;</span> <span class="s">&quot;catcode&quot;</span> <span class="s">&quot;char&quot;</span> <span class="s">&quot;chardef&quot;</span> <span class="s">&quot;cleaders&quot;</span>
<a name="cl-358"></a>   <span class="s">&quot;closein&quot;</span> <span class="s">&quot;closeout&quot;</span> <span class="s">&quot;clubpenalty&quot;</span> <span class="s">&quot;copy&quot;</span> <span class="s">&quot;count&quot;</span> <span class="s">&quot;countdef&quot;</span> <span class="s">&quot;cr&quot;</span> <span class="s">&quot;crcr&quot;</span>
<a name="cl-359"></a>   <span class="s">&quot;csname&quot;</span> <span class="s">&quot;day&quot;</span> <span class="s">&quot;deadcycles&quot;</span> <span class="s">&quot;def&quot;</span> <span class="s">&quot;defaulthyphenchar&quot;</span> <span class="s">&quot;defaultskewchar&quot;</span>
<a name="cl-360"></a>   <span class="s">&quot;delcode&quot;</span> <span class="s">&quot;delimiter&quot;</span> <span class="s">&quot;delimiterfactor&quot;</span> <span class="s">&quot;delimitershortfall&quot;</span> <span class="s">&quot;dimen&quot;</span>
<a name="cl-361"></a>   <span class="s">&quot;dimendef&quot;</span> <span class="s">&quot;discretionary&quot;</span> <span class="s">&quot;displayindent&quot;</span> <span class="s">&quot;displaylimits&quot;</span> <span class="s">&quot;displaystyle&quot;</span>
<a name="cl-362"></a>   <span class="s">&quot;displaywidowpenalty&quot;</span> <span class="s">&quot;displaywidth&quot;</span> <span class="s">&quot;divide&quot;</span> <span class="s">&quot;doublehyphendemerits&quot;</span> <span class="s">&quot;dp&quot;</span>
<a name="cl-363"></a>   <span class="s">&quot;dump&quot;</span> <span class="s">&quot;edef&quot;</span> <span class="s">&quot;else&quot;</span> <span class="s">&quot;emergencystretch&quot;</span> <span class="s">&quot;end&quot;</span> <span class="s">&quot;endcsname&quot;</span> <span class="s">&quot;endgroup&quot;</span>
<a name="cl-364"></a>   <span class="s">&quot;endinput&quot;</span> <span class="s">&quot;endlinechar&quot;</span> <span class="s">&quot;eqno&quot;</span> <span class="s">&quot;errhelp&quot;</span> <span class="s">&quot;errmessage&quot;</span> <span class="s">&quot;errorcontextlines&quot;</span>
<a name="cl-365"></a>   <span class="s">&quot;errorstopmode&quot;</span> <span class="s">&quot;escapechar&quot;</span> <span class="s">&quot;everycr&quot;</span> <span class="s">&quot;everydisplay&quot;</span> <span class="s">&quot;everyhbox&quot;</span>
<a name="cl-366"></a>   <span class="s">&quot;everyjob&quot;</span> <span class="s">&quot;everymath&quot;</span> <span class="s">&quot;everypar&quot;</span> <span class="s">&quot;everyvbox&quot;</span> <span class="s">&quot;exhyphenpenalty&quot;</span>
<a name="cl-367"></a>   <span class="s">&quot;expandafter&quot;</span> <span class="s">&quot;fam&quot;</span> <span class="s">&quot;fi&quot;</span> <span class="s">&quot;finalhyphendemerits&quot;</span> <span class="s">&quot;firstmark&quot;</span>
<a name="cl-368"></a>   <span class="s">&quot;floatingpenalty&quot;</span> <span class="s">&quot;font&quot;</span> <span class="s">&quot;fontdimen&quot;</span> <span class="s">&quot;fontname&quot;</span> <span class="s">&quot;futurelet&quot;</span> <span class="s">&quot;gdef&quot;</span>
<a name="cl-369"></a>   <span class="s">&quot;global&quot;</span> <span class="s">&quot;globaldefs&quot;</span> <span class="s">&quot;halign&quot;</span> <span class="s">&quot;hangafter&quot;</span> <span class="s">&quot;hangindent&quot;</span> <span class="s">&quot;hbadness&quot;</span> <span class="s">&quot;hbox&quot;</span>
<a name="cl-370"></a>   <span class="s">&quot;hfil&quot;</span> <span class="s">&quot;hfill&quot;</span> <span class="s">&quot;hfilneg&quot;</span> <span class="s">&quot;hfuzz&quot;</span> <span class="s">&quot;hoffset&quot;</span> <span class="s">&quot;holdinginserts&quot;</span> <span class="s">&quot;hrule&quot;</span>
<a name="cl-371"></a>   <span class="s">&quot;hsize&quot;</span> <span class="s">&quot;hskip&quot;</span> <span class="s">&quot;hss&quot;</span> <span class="s">&quot;ht&quot;</span> <span class="s">&quot;hyphenation&quot;</span> <span class="s">&quot;hyphenchar&quot;</span> <span class="s">&quot;hyphenpenalty&quot;</span> <span class="s">&quot;if&quot;</span>
<a name="cl-372"></a>   <span class="s">&quot;ifcase&quot;</span> <span class="s">&quot;ifcat&quot;</span> <span class="s">&quot;ifdim&quot;</span> <span class="s">&quot;ifeof&quot;</span> <span class="s">&quot;iffalse&quot;</span> <span class="s">&quot;ifhbox&quot;</span> <span class="s">&quot;ifhmode&quot;</span> <span class="s">&quot;ifinner&quot;</span>
<a name="cl-373"></a>   <span class="s">&quot;ifmmode&quot;</span> <span class="s">&quot;ifnum&quot;</span> <span class="s">&quot;ifodd&quot;</span> <span class="s">&quot;iftrue&quot;</span> <span class="s">&quot;ifvbox&quot;</span> <span class="s">&quot;ifvmode&quot;</span> <span class="s">&quot;ifvoid&quot;</span> <span class="s">&quot;ifx&quot;</span>
<a name="cl-374"></a>   <span class="s">&quot;ignorespaces&quot;</span> <span class="s">&quot;immediate&quot;</span> <span class="s">&quot;indent&quot;</span> <span class="s">&quot;input&quot;</span> <span class="s">&quot;inputlineno&quot;</span> <span class="s">&quot;insert&quot;</span>
<a name="cl-375"></a>   <span class="s">&quot;insertpenalties&quot;</span> <span class="s">&quot;interlinepenalty&quot;</span> <span class="s">&quot;jobname&quot;</span> <span class="s">&quot;kern&quot;</span> <span class="s">&quot;language&quot;</span> <span class="s">&quot;lastbox&quot;</span>
<a name="cl-376"></a>   <span class="s">&quot;lastkern&quot;</span> <span class="s">&quot;lastpenalty&quot;</span> <span class="s">&quot;lastskip&quot;</span> <span class="s">&quot;lccode&quot;</span> <span class="s">&quot;leaders&quot;</span> <span class="s">&quot;left&quot;</span>
<a name="cl-377"></a>   <span class="s">&quot;lefthyphenmin&quot;</span> <span class="s">&quot;leftskip&quot;</span> <span class="s">&quot;leqno&quot;</span> <span class="s">&quot;let&quot;</span> <span class="s">&quot;limits&quot;</span> <span class="s">&quot;linepenalty&quot;</span> <span class="s">&quot;lineskip&quot;</span>
<a name="cl-378"></a>   <span class="s">&quot;lineskiplimit&quot;</span> <span class="s">&quot;long&quot;</span> <span class="s">&quot;looseness&quot;</span> <span class="s">&quot;lower&quot;</span> <span class="s">&quot;lowercase&quot;</span> <span class="s">&quot;mag&quot;</span> <span class="s">&quot;mark&quot;</span>
<a name="cl-379"></a>   <span class="s">&quot;mathaccent&quot;</span> <span class="s">&quot;mathbin&quot;</span> <span class="s">&quot;mathchar&quot;</span> <span class="s">&quot;mathchardef&quot;</span> <span class="s">&quot;mathchoice&quot;</span> <span class="s">&quot;mathclose&quot;</span>
<a name="cl-380"></a>   <span class="s">&quot;mathcode&quot;</span> <span class="s">&quot;mathinner&quot;</span> <span class="s">&quot;mathop&quot;</span> <span class="s">&quot;mathopen&quot;</span> <span class="s">&quot;mathord&quot;</span> <span class="s">&quot;mathpunct&quot;</span> <span class="s">&quot;mathrel&quot;</span>
<a name="cl-381"></a>   <span class="s">&quot;mathsurround&quot;</span> <span class="s">&quot;maxdeadcycles&quot;</span> <span class="s">&quot;maxdepth&quot;</span> <span class="s">&quot;meaning&quot;</span> <span class="s">&quot;medmuskip&quot;</span> <span class="s">&quot;message&quot;</span>
<a name="cl-382"></a>   <span class="s">&quot;mkern&quot;</span> <span class="s">&quot;month&quot;</span> <span class="s">&quot;moveleft&quot;</span> <span class="s">&quot;moveright&quot;</span> <span class="s">&quot;mskip&quot;</span> <span class="s">&quot;multiply&quot;</span> <span class="s">&quot;muskip&quot;</span>
<a name="cl-383"></a>   <span class="s">&quot;muskipdef&quot;</span> <span class="s">&quot;newlinechar&quot;</span> <span class="s">&quot;noalign&quot;</span> <span class="s">&quot;noboundary&quot;</span> <span class="s">&quot;noexpand&quot;</span> <span class="s">&quot;noindent&quot;</span>
<a name="cl-384"></a>   <span class="s">&quot;nolimits&quot;</span> <span class="s">&quot;nonscript&quot;</span> <span class="s">&quot;nonstopmode&quot;</span> <span class="s">&quot;nulldelimiterspace&quot;</span> <span class="s">&quot;nullfont&quot;</span>
<a name="cl-385"></a>   <span class="s">&quot;number&quot;</span> <span class="s">&quot;omit&quot;</span> <span class="s">&quot;openin&quot;</span> <span class="s">&quot;openout&quot;</span> <span class="s">&quot;or&quot;</span> <span class="s">&quot;outer&quot;</span> <span class="s">&quot;output&quot;</span> <span class="s">&quot;outputpenalty&quot;</span>
<a name="cl-386"></a>   <span class="s">&quot;over&quot;</span> <span class="s">&quot;overfullrule&quot;</span> <span class="s">&quot;overline&quot;</span> <span class="s">&quot;overwithdelims&quot;</span> <span class="s">&quot;pagedepth&quot;</span>
<a name="cl-387"></a>   <span class="s">&quot;pagefilllstretch&quot;</span> <span class="s">&quot;pagefillstretch&quot;</span> <span class="s">&quot;pagefilstretch&quot;</span> <span class="s">&quot;pagegoal&quot;</span>
<a name="cl-388"></a>   <span class="s">&quot;pageshrink&quot;</span> <span class="s">&quot;pagestretch&quot;</span> <span class="s">&quot;pagetotal&quot;</span> <span class="s">&quot;par&quot;</span> <span class="s">&quot;parfillskip&quot;</span> <span class="s">&quot;parindent&quot;</span>
<a name="cl-389"></a>   <span class="s">&quot;parshape&quot;</span> <span class="s">&quot;parskip&quot;</span> <span class="s">&quot;patterns&quot;</span> <span class="s">&quot;pausing&quot;</span> <span class="s">&quot;penalty&quot;</span> <span class="s">&quot;postdisplaypenalty&quot;</span>
<a name="cl-390"></a>   <span class="s">&quot;predisplaypenalty&quot;</span> <span class="s">&quot;predisplaysize&quot;</span> <span class="s">&quot;pretolerance&quot;</span> <span class="s">&quot;prevdepth&quot;</span> <span class="s">&quot;prevgraf&quot;</span>
<a name="cl-391"></a>   <span class="s">&quot;radical&quot;</span> <span class="s">&quot;raise&quot;</span> <span class="s">&quot;read&quot;</span> <span class="s">&quot;relax&quot;</span> <span class="s">&quot;relpenalty&quot;</span> <span class="s">&quot;right&quot;</span> <span class="s">&quot;righthyphenmin&quot;</span>
<a name="cl-392"></a>   <span class="s">&quot;rightskip&quot;</span> <span class="s">&quot;romannumeral&quot;</span> <span class="s">&quot;scriptfont&quot;</span> <span class="s">&quot;scriptscriptfont&quot;</span>
<a name="cl-393"></a>   <span class="s">&quot;scriptscriptstyle&quot;</span> <span class="s">&quot;scriptspace&quot;</span> <span class="s">&quot;scriptstyle&quot;</span> <span class="s">&quot;scrollmode&quot;</span> <span class="s">&quot;setbox&quot;</span>
<a name="cl-394"></a>   <span class="s">&quot;setlanguage&quot;</span> <span class="s">&quot;sfcode&quot;</span> <span class="s">&quot;shipout&quot;</span> <span class="s">&quot;show&quot;</span> <span class="s">&quot;showbox&quot;</span> <span class="s">&quot;showboxbreadth&quot;</span>
<a name="cl-395"></a>   <span class="s">&quot;showboxdepth&quot;</span> <span class="s">&quot;showlists&quot;</span> <span class="s">&quot;showthe&quot;</span> <span class="s">&quot;skewchar&quot;</span> <span class="s">&quot;skip&quot;</span> <span class="s">&quot;skipdef&quot;</span>
<a name="cl-396"></a>   <span class="s">&quot;spacefactor&quot;</span> <span class="s">&quot;spaceskip&quot;</span> <span class="s">&quot;span&quot;</span> <span class="s">&quot;special&quot;</span> <span class="s">&quot;splitbotmark&quot;</span> <span class="s">&quot;splitfirstmark&quot;</span>
<a name="cl-397"></a>   <span class="s">&quot;splitmaxdepth&quot;</span> <span class="s">&quot;splittopskip&quot;</span> <span class="s">&quot;string&quot;</span> <span class="s">&quot;tabskip&quot;</span> <span class="s">&quot;textfont&quot;</span> <span class="s">&quot;textstyle&quot;</span>
<a name="cl-398"></a>   <span class="s">&quot;the&quot;</span> <span class="s">&quot;thickmuskip&quot;</span> <span class="s">&quot;thinmuskip&quot;</span> <span class="s">&quot;time&quot;</span> <span class="s">&quot;toks&quot;</span> <span class="s">&quot;toksdef&quot;</span> <span class="s">&quot;tolerance&quot;</span>
<a name="cl-399"></a>   <span class="s">&quot;topmark&quot;</span> <span class="s">&quot;topskip&quot;</span> <span class="s">&quot;tracingcommands&quot;</span> <span class="s">&quot;tracinglostchars&quot;</span> <span class="s">&quot;tracingmacros&quot;</span>
<a name="cl-400"></a>   <span class="s">&quot;tracingonline&quot;</span> <span class="s">&quot;tracingoutput&quot;</span> <span class="s">&quot;tracingpages&quot;</span> <span class="s">&quot;tracingparagraphs&quot;</span>
<a name="cl-401"></a>   <span class="s">&quot;tracingrestores&quot;</span> <span class="s">&quot;tracingstats&quot;</span> <span class="s">&quot;uccode&quot;</span> <span class="s">&quot;uchyph&quot;</span> <span class="s">&quot;underline&quot;</span> <span class="s">&quot;unhbox&quot;</span>
<a name="cl-402"></a>   <span class="s">&quot;unhcopy&quot;</span> <span class="s">&quot;unkern&quot;</span> <span class="s">&quot;unpenalty&quot;</span> <span class="s">&quot;unskip&quot;</span> <span class="s">&quot;unvbox&quot;</span> <span class="s">&quot;unvcopy&quot;</span> <span class="s">&quot;uppercase&quot;</span>
<a name="cl-403"></a>   <span class="s">&quot;vadjust&quot;</span> <span class="s">&quot;valign&quot;</span> <span class="s">&quot;vbadness&quot;</span> <span class="s">&quot;vbox&quot;</span> <span class="s">&quot;vcenter&quot;</span> <span class="s">&quot;vfil&quot;</span> <span class="s">&quot;vfill&quot;</span> <span class="s">&quot;vfilneg&quot;</span>
<a name="cl-404"></a>   <span class="s">&quot;vfuzz&quot;</span> <span class="s">&quot;voffset&quot;</span> <span class="s">&quot;vrule&quot;</span> <span class="s">&quot;vsize&quot;</span> <span class="s">&quot;vskip&quot;</span> <span class="s">&quot;vsplit&quot;</span> <span class="s">&quot;vss&quot;</span> <span class="s">&quot;vtop&quot;</span> <span class="s">&quot;wd&quot;</span>
<a name="cl-405"></a>   <span class="s">&quot;widowpenalty&quot;</span> <span class="s">&quot;write&quot;</span> <span class="s">&quot;xdef&quot;</span> <span class="s">&quot;xleaders&quot;</span> <span class="s">&quot;xspaceskip&quot;</span> <span class="s">&quot;year&quot;</span>
<a name="cl-406"></a>
<a name="cl-407"></a>   <span class="c1">;; pTeX</span>
<a name="cl-408"></a>   <span class="s">&quot;autospacing&quot;</span> <span class="s">&quot;autoxspacing&quot;</span> <span class="s">&quot;euc&quot;</span> <span class="s">&quot;inhibitxspcode&quot;</span> <span class="s">&quot;jcharwindowpenalty&quot;</span>
<a name="cl-409"></a>   <span class="s">&quot;jfam&quot;</span> <span class="s">&quot;jfont&quot;</span> <span class="s">&quot;jis&quot;</span> <span class="s">&quot;kanjiskip&quot;</span> <span class="s">&quot;kansuji&quot;</span> <span class="s">&quot;kansujichar&quot;</span> <span class="s">&quot;kuten&quot;</span>
<a name="cl-410"></a>   <span class="s">&quot;noautospacing&quot;</span> <span class="s">&quot;noautoxspacing&quot;</span> <span class="s">&quot;postbreakpenalty&quot;</span> <span class="s">&quot;prebreakpenalty&quot;</span>
<a name="cl-411"></a>   <span class="s">&quot;showmode&quot;</span> <span class="s">&quot;sjis&quot;</span> <span class="s">&quot;tate&quot;</span> <span class="s">&quot;tbaselineshift&quot;</span> <span class="s">&quot;tfont&quot;</span> <span class="s">&quot;xkanjiskip&quot;</span> <span class="s">&quot;xspcode&quot;</span>
<a name="cl-412"></a>   <span class="s">&quot;ybaselineshift&quot;</span> <span class="s">&quot;yoko&quot;</span>
<a name="cl-413"></a>   <span class="p">))</span>
<a name="cl-414"></a>
<a name="cl-415"></a><span class="c1">;; for style files</span>
<a name="cl-416"></a><span class="p">(</span><span class="nv">ac-l-define-dictionary-source</span>
<a name="cl-417"></a> <span class="nv">ac-l-source-style-commands</span>
<a name="cl-418"></a> <span class="o">&#39;</span><span class="p">(</span><span class="s">&quot;@@end&quot;</span> <span class="s">&quot;@@ifdefinable&quot;</span> <span class="s">&quot;@@input&quot;</span> <span class="s">&quot;@@par&quot;</span> <span class="s">&quot;@Alph&quot;</span> <span class="s">&quot;@M&quot;</span> <span class="s">&quot;@MM&quot;</span> <span class="s">&quot;@Roman&quot;</span>
<a name="cl-419"></a>   <span class="s">&quot;@TeXversion&quot;</span> <span class="s">&quot;@addtofilelist&quot;</span> <span class="s">&quot;@addtoreset&quot;</span> <span class="s">&quot;@afterheading&quot;</span>
<a name="cl-420"></a>   <span class="s">&quot;@afterindentfalse&quot;</span> <span class="s">&quot;@afterindenttrue&quot;</span> <span class="s">&quot;@alph&quot;</span> <span class="s">&quot;@arabic&quot;</span> <span class="s">&quot;@author&quot;</span>
<a name="cl-421"></a>   <span class="s">&quot;@badmath&quot;</span> <span class="s">&quot;@beginparpenalty&quot;</span> <span class="s">&quot;@biblabel&quot;</span> <span class="s">&quot;@captype&quot;</span> <span class="s">&quot;@centercr&quot;</span>
<a name="cl-422"></a>   <span class="s">&quot;@chapapp&quot;</span> <span class="s">&quot;@cite&quot;</span> <span class="s">&quot;@clubpenalty&quot;</span> <span class="s">&quot;@date&quot;</span> <span class="s">&quot;@dblarg&quot;</span> <span class="s">&quot;@dblfloat&quot;</span>
<a name="cl-423"></a>   <span class="s">&quot;@dblfpbot&quot;</span> <span class="s">&quot;@dblfpsep&quot;</span> <span class="s">&quot;@dblfptop&quot;</span> <span class="s">&quot;@dotsep&quot;</span> <span class="s">&quot;@dottedtocline&quot;</span> <span class="s">&quot;@empty&quot;</span>
<a name="cl-424"></a>   <span class="s">&quot;@endparpenalty&quot;</span> <span class="s">&quot;@endpart&quot;</span> <span class="s">&quot;@eqnnum&quot;</span> <span class="s">&quot;@evenfoot&quot;</span> <span class="s">&quot;@evenhead&quot;</span>
<a name="cl-425"></a>   <span class="s">&quot;@firstoftwo&quot;</span> <span class="s">&quot;@float&quot;</span> <span class="s">&quot;@fnsymbol&quot;</span> <span class="s">&quot;@fontswitch&quot;</span> <span class="s">&quot;@for&quot;</span> <span class="s">&quot;@fpbot&quot;</span> <span class="s">&quot;@fpsep&quot;</span>
<a name="cl-426"></a>   <span class="s">&quot;@fptop&quot;</span> <span class="s">&quot;@gobble&quot;</span> <span class="s">&quot;@gobbletwo&quot;</span> <span class="s">&quot;@gtempa&quot;</span> <span class="s">&quot;@hangfrom&quot;</span> <span class="s">&quot;@highpenalty&quot;</span>
<a name="cl-427"></a>   <span class="s">&quot;@idxitem&quot;</span> <span class="s">&quot;@ifclassloaded&quot;</span> <span class="s">&quot;@ifdefinable&quot;</span> <span class="s">&quot;@ifnextchar&quot;</span>
<a name="cl-428"></a>   <span class="s">&quot;@ifpackageloaded&quot;</span> <span class="s">&quot;@ifstar&quot;</span> <span class="s">&quot;@ifundefined&quot;</span> <span class="s">&quot;@ignoretrue&quot;</span> <span class="s">&quot;@input&quot;</span>
<a name="cl-429"></a>   <span class="s">&quot;@inputcheck&quot;</span> <span class="s">&quot;@inputcheck0&quot;</span> <span class="s">&quot;@itempenalty&quot;</span> <span class="s">&quot;@ixpt&quot;</span> <span class="s">&quot;@latex@error&quot;</span>
<a name="cl-430"></a>   <span class="s">&quot;@listI&quot;</span> <span class="s">&quot;@listi&quot;</span> <span class="s">&quot;@listii&quot;</span> <span class="s">&quot;@listiii&quot;</span> <span class="s">&quot;@listiv&quot;</span> <span class="s">&quot;@listv&quot;</span> <span class="s">&quot;@listvi&quot;</span>
<a name="cl-431"></a>   <span class="s">&quot;@lowpenalty&quot;</span> <span class="s">&quot;@m&quot;</span> <span class="s">&quot;@mainmatterfalse&quot;</span> <span class="s">&quot;@mainmattertrue&quot;</span> <span class="s">&quot;@makecaption&quot;</span>
<a name="cl-432"></a>   <span class="s">&quot;@makechapterhead&quot;</span> <span class="s">&quot;@makefnmark&quot;</span> <span class="s">&quot;@makefntext&quot;</span> <span class="s">&quot;@makeother&quot;</span> <span class="s">&quot;@maketitle&quot;</span>
<a name="cl-433"></a>   <span class="s">&quot;@maxdepth&quot;</span> <span class="s">&quot;@medpenalty&quot;</span> <span class="s">&quot;@minipagefalse&quot;</span> <span class="s">&quot;@minipagerestore&quot;</span>
<a name="cl-434"></a>   <span class="s">&quot;@minipagetrue&quot;</span> <span class="s">&quot;@minus&quot;</span> <span class="s">&quot;@mkboth&quot;</span> <span class="s">&quot;@mparswitchfalse&quot;</span> <span class="s">&quot;@mparswitchtrue&quot;</span>
<a name="cl-435"></a>   <span class="s">&quot;@mpfn&quot;</span> <span class="s">&quot;@mpfootins&quot;</span> <span class="s">&quot;@ne&quot;</span> <span class="s">&quot;@nil&quot;</span> <span class="s">&quot;@nobreaktrue&quot;</span> <span class="s">&quot;@nocounterr&quot;</span> <span class="s">&quot;@nomath&quot;</span>
<a name="cl-436"></a>   <span class="s">&quot;@normalsize&quot;</span> <span class="s">&quot;@oddfoot&quot;</span> <span class="s">&quot;@oddhead&quot;</span> <span class="s">&quot;@openbib@code&quot;</span> <span class="s">&quot;@part&quot;</span> <span class="s">&quot;@plus&quot;</span>
<a name="cl-437"></a>   <span class="s">&quot;@pnumwidth&quot;</span> <span class="s">&quot;@providesfile&quot;</span> <span class="s">&quot;@ptsize&quot;</span> <span class="s">&quot;@restonecolfalse&quot;</span> <span class="s">&quot;@restonecoltrue&quot;</span>
<a name="cl-438"></a>   <span class="s">&quot;@roman&quot;</span> <span class="s">&quot;@schapter&quot;</span> <span class="s">&quot;@secondoftwo&quot;</span> <span class="s">&quot;@sect&quot;</span> <span class="s">&quot;@set@topoint&quot;</span> <span class="s">&quot;@setfontsize&quot;</span>
<a name="cl-439"></a>   <span class="s">&quot;@setpar&quot;</span> <span class="s">&quot;@settopoint&quot;</span> <span class="s">&quot;@site&quot;</span> <span class="s">&quot;@spart&quot;</span> <span class="s">&quot;@ssect&quot;</span> <span class="s">&quot;@startsection&quot;</span>
<a name="cl-440"></a>   <span class="s">&quot;@starttoc&quot;</span> <span class="s">&quot;@svsec&quot;</span> <span class="s">&quot;@svsechd&quot;</span> <span class="s">&quot;@tabacckludge&quot;</span> <span class="s">&quot;@tempboxa&quot;</span> <span class="s">&quot;@tempcnta&quot;</span>
<a name="cl-441"></a>   <span class="s">&quot;@tempdima&quot;</span> <span class="s">&quot;@tempdimb&quot;</span> <span class="s">&quot;@tempswa&quot;</span> <span class="s">&quot;@tempswafalse&quot;</span> <span class="s">&quot;@tempswatrue&quot;</span>
<a name="cl-442"></a>   <span class="s">&quot;@testopt&quot;</span> <span class="s">&quot;@textsuperscript&quot;</span> <span class="s">&quot;@tfor&quot;</span> <span class="s">&quot;@thanks&quot;</span> <span class="s">&quot;@thefnmark&quot;</span> <span class="s">&quot;@title&quot;</span>
<a name="cl-443"></a>   <span class="s">&quot;@titlepagefalse&quot;</span> <span class="s">&quot;@titlepagetrue&quot;</span> <span class="s">&quot;@tocrmarg&quot;</span> <span class="s">&quot;@topnum&quot;</span> <span class="s">&quot;@twosidefalse&quot;</span>
<a name="cl-444"></a>   <span class="s">&quot;@twosidetrue&quot;</span> <span class="s">&quot;@undefined&quot;</span> <span class="s">&quot;@viiipt&quot;</span> <span class="s">&quot;@viipt&quot;</span> <span class="s">&quot;@vipt&quot;</span> <span class="s">&quot;@vpt&quot;</span> <span class="s">&quot;@warning&quot;</span>
<a name="cl-445"></a>   <span class="s">&quot;@whiledim&quot;</span> <span class="s">&quot;@whileenum&quot;</span> <span class="s">&quot;@whilesw&quot;</span> <span class="s">&quot;@xdblarg&quot;</span> <span class="s">&quot;@xiipt&quot;</span> <span class="s">&quot;@xipt&quot;</span> <span class="s">&quot;@xivpt&quot;</span>
<a name="cl-446"></a>   <span class="s">&quot;@xpt&quot;</span> <span class="s">&quot;@xsect&quot;</span> <span class="s">&quot;@xviipt&quot;</span> <span class="s">&quot;@xxpt&quot;</span> <span class="s">&quot;@xxvpt&quot;</span> <span class="s">&quot;AA&quot;</span> <span class="s">&quot;AE&quot;</span> <span class="s">&quot;AtBeginDocument&quot;</span>
<a name="cl-447"></a>   <span class="s">&quot;AtBeginDvi&quot;</span> <span class="s">&quot;AtEndDocument&quot;</span> <span class="s">&quot;AtEndOfPackage&quot;</span> <span class="s">&quot;CheckSum&quot;</span> <span class="s">&quot;CodelineIndex&quot;</span>
<a name="cl-448"></a>   <span class="s">&quot;DeclareFontShape&quot;</span> <span class="s">&quot;DeclareMathAlphabet&quot;</span> <span class="s">&quot;DeclareOption&quot;</span>
<a name="cl-449"></a>   <span class="s">&quot;DeclareRobustCommand&quot;</span> <span class="s">&quot;DeclareSymbolFont&quot;</span> <span class="s">&quot;DeclareSymbolFontAlphabet&quot;</span>
<a name="cl-450"></a>   <span class="s">&quot;DeclareTextAccentDefault&quot;</span> <span class="s">&quot;DeclareTextCommand&quot;</span> <span class="s">&quot;DeclareTextCommandDefault&quot;</span>
<a name="cl-451"></a>   <span class="s">&quot;DeclareTextFontCommand&quot;</span> <span class="s">&quot;DeclareTextSymbolDefault&quot;</span> <span class="s">&quot;DisableCrossrefs&quot;</span>
<a name="cl-452"></a>   <span class="s">&quot;DoNotIndex&quot;</span> <span class="s">&quot;DocInclude&quot;</span> <span class="s">&quot;DocInput&quot;</span> <span class="s">&quot;EnableCrossrefs&quot;</span> <span class="s">&quot;ExecuteOptions&quot;</span>
<a name="cl-453"></a>   <span class="s">&quot;Finale&quot;</span> <span class="s">&quot;GetFileInfo&quot;</span> <span class="s">&quot;IJ&quot;</span> <span class="s">&quot;IfFileExists&quot;</span> <span class="s">&quot;IndexColumns&quot;</span> <span class="s">&quot;Lcount&quot;</span> <span class="s">&quot;Lopt&quot;</span>
<a name="cl-454"></a>   <span class="s">&quot;MacroIndent&quot;</span> <span class="s">&quot;MakeShortVerb&quot;</span> <span class="s">&quot;MakeUppercase&quot;</span> <span class="s">&quot;NeedsTeXFormat&quot;</span> <span class="s">&quot;OE&quot;</span>
<a name="cl-455"></a>   <span class="s">&quot;OldMakeindex&quot;</span> <span class="s">&quot;OnlyDescription&quot;</span> <span class="s">&quot;PackageWarning&quot;</span> <span class="s">&quot;PrintChanges&quot;</span>
<a name="cl-456"></a>   <span class="s">&quot;PrintIndex&quot;</span> <span class="s">&quot;ProcessOptions&quot;</span> <span class="s">&quot;ProvidePackage&quot;</span> <span class="s">&quot;ProvidesClass&quot;</span>
<a name="cl-457"></a>   <span class="s">&quot;ProvidesFile&quot;</span> <span class="s">&quot;RecordChanges&quot;</span> <span class="s">&quot;RequirePackage&quot;</span> <span class="s">&quot;SS&quot;</span> <span class="s">&quot;SetSymbolFont&quot;</span>
<a name="cl-458"></a>   <span class="s">&quot;StandardModuleDepth&quot;</span> <span class="s">&quot;StopEventually&quot;</span> <span class="s">&quot;aa&quot;</span> <span class="s">&quot;abovecaptionskip&quot;</span>
<a name="cl-459"></a>   <span class="s">&quot;addcontentsline&quot;</span> <span class="s">&quot;ae&quot;</span> <span class="s">&quot;alloc@&quot;</span> <span class="s">&quot;and&quot;</span> <span class="s">&quot;appendixname&quot;</span> <span class="s">&quot;backmatter&quot;</span>
<a name="cl-460"></a>   <span class="s">&quot;belowcaptionskip&quot;</span> <span class="s">&quot;bgroup&quot;</span> <span class="s">&quot;bibindent&quot;</span> <span class="s">&quot;bibname&quot;</span> <span class="s">&quot;bigskipamount&quot;</span>
<a name="cl-461"></a>   <span class="s">&quot;botfigrule&quot;</span> <span class="s">&quot;bottomfraction&quot;</span> <span class="s">&quot;brokenpenalty&quot;</span> <span class="s">&quot;c@bottomnumber&quot;</span>
<a name="cl-462"></a>   <span class="s">&quot;c@chapter&quot;</span> <span class="s">&quot;c@dbltopnumber&quot;</span> <span class="s">&quot;c@enumi&quot;</span> <span class="s">&quot;c@enumii&quot;</span> <span class="s">&quot;c@enumiii&quot;</span> <span class="s">&quot;c@enumiv&quot;</span>
<a name="cl-463"></a>   <span class="s">&quot;c@figure&quot;</span> <span class="s">&quot;c@footnote&quot;</span> <span class="s">&quot;c@mpfootnote&quot;</span> <span class="s">&quot;c@paragraph&quot;</span> <span class="s">&quot;c@part&quot;</span>
<a name="cl-464"></a>   <span class="s">&quot;c@secnumdepth&quot;</span> <span class="s">&quot;c@section&quot;</span> <span class="s">&quot;c@subparagraph&quot;</span> <span class="s">&quot;c@subsection&quot;</span>
<a name="cl-465"></a>   <span class="s">&quot;c@subsubsection&quot;</span> <span class="s">&quot;c@tocdepth&quot;</span> <span class="s">&quot;c@topnumber&quot;</span> <span class="s">&quot;c@totalnumber&quot;</span> <span class="s">&quot;changes&quot;</span>
<a name="cl-466"></a>   <span class="s">&quot;chaptermark&quot;</span> <span class="s">&quot;chaptername&quot;</span> <span class="s">&quot;chardef&quot;</span> <span class="s">&quot;check@mathfonts&quot;</span> <span class="s">&quot;clubpenalty&quot;</span>
<a name="cl-467"></a>   <span class="s">&quot;col@number&quot;</span> <span class="s">&quot;contentsline&quot;</span> <span class="s">&quot;contentsname&quot;</span> <span class="s">&quot;copyright&quot;</span> <span class="s">&quot;count@&quot;</span> <span class="s">&quot;countdef&quot;</span>
<a name="cl-468"></a>   <span class="s">&quot;day&quot;</span> <span class="s">&quot;dblfloatpagefraction&quot;</span> <span class="s">&quot;dblfloatsep&quot;</span> <span class="s">&quot;dbltextfloatsep&quot;</span>
<a name="cl-469"></a>   <span class="s">&quot;dbltopfraction&quot;</span> <span class="s">&quot;dbltopnumber&quot;</span> <span class="s">&quot;define@key&quot;</span> <span class="s">&quot;displaywidowpenalty&quot;</span> <span class="s">&quot;egroup&quot;</span>
<a name="cl-470"></a>   <span class="s">&quot;end@dblfloat&quot;</span> <span class="s">&quot;end@float&quot;</span> <span class="s">&quot;endfigure&quot;</span> <span class="s">&quot;endinupt&quot;</span> <span class="s">&quot;endlinechar&quot;</span> <span class="s">&quot;endlist&quot;</span>
<a name="cl-471"></a>   <span class="s">&quot;endtrivlist&quot;</span> <span class="s">&quot;errmessage&quot;</span> <span class="s">&quot;escapechar&quot;</span> <span class="s">&quot;ext@figure&quot;</span> <span class="s">&quot;ext@table&quot;</span> <span class="s">&quot;fboxrule&quot;</span>
<a name="cl-472"></a>   <span class="s">&quot;fboxsep&quot;</span> <span class="s">&quot;figurename&quot;</span> <span class="s">&quot;file&quot;</span> <span class="s">&quot;filename@parse&quot;</span> <span class="s">&quot;firstmark&quot;</span>
<a name="cl-473"></a>   <span class="s">&quot;floatpagefraction&quot;</span> <span class="s">&quot;floatsep&quot;</span> <span class="s">&quot;flushbottom&quot;</span> <span class="s">&quot;fnsymbol&quot;</span> <span class="s">&quot;fnum@figure&quot;</span>
<a name="cl-474"></a>   <span class="s">&quot;fnum@table&quot;</span> <span class="s">&quot;fontsize&quot;</span> <span class="s">&quot;footnoterule&quot;</span> <span class="s">&quot;fps@figure&quot;</span> <span class="s">&quot;fps@table&quot;</span>
<a name="cl-475"></a>   <span class="s">&quot;frontmatter&quot;</span> <span class="s">&quot;ftype@figure&quot;</span> <span class="s">&quot;ftype@table&quot;</span> <span class="s">&quot;hb@xt@&quot;</span> <span class="s">&quot;hss&quot;</span>
<a name="cl-476"></a>   <span class="s">&quot;if@compatibility&quot;</span> <span class="s">&quot;if@mainmatter&quot;</span> <span class="s">&quot;if@mparswitch&quot;</span> <span class="s">&quot;if@noskipsec&quot;</span>
<a name="cl-477"></a>   <span class="s">&quot;if@openright&quot;</span> <span class="s">&quot;if@restonecol&quot;</span> <span class="s">&quot;if@tempswa&quot;</span> <span class="s">&quot;if@titlepage&quot;</span> <span class="s">&quot;if@twocolumn&quot;</span>
<a name="cl-478"></a>   <span class="s">&quot;if@twoside&quot;</span> <span class="s">&quot;ifcase&quot;</span> <span class="s">&quot;ij&quot;</span> <span class="s">&quot;imath&quot;</span> <span class="s">&quot;indexname&quot;</span> <span class="s">&quot;interlinepenalty&quot;</span>
<a name="cl-479"></a>   <span class="s">&quot;intextsep&quot;</span> <span class="s">&quot;iterate&quot;</span> <span class="s">&quot;jmath&quot;</span> <span class="s">&quot;jot&quot;</span> <span class="s">&quot;l@chapter&quot;</span> <span class="s">&quot;l@paragraph&quot;</span> <span class="s">&quot;l@part&quot;</span>
<a name="cl-480"></a>   <span class="s">&quot;l@section&quot;</span> <span class="s">&quot;l@subparagraph&quot;</span> <span class="s">&quot;l@subsection&quot;</span> <span class="s">&quot;l@subsubsection&quot;</span> <span class="s">&quot;labelenumi&quot;</span>
<a name="cl-481"></a>   <span class="s">&quot;labelenumii&quot;</span> <span class="s">&quot;labelenumiii&quot;</span> <span class="s">&quot;labelenumiv&quot;</span> <span class="s">&quot;labelitemi&quot;</span> <span class="s">&quot;labelitemii&quot;</span>
<a name="cl-482"></a>   <span class="s">&quot;labelitemiii&quot;</span> <span class="s">&quot;labelitemiv&quot;</span> <span class="s">&quot;lbrace&quot;</span> <span class="s">&quot;ldots&quot;</span> <span class="s">&quot;leavevmode&quot;</span> <span class="s">&quot;leftmargin&quot;</span>
<a name="cl-483"></a>   <span class="s">&quot;leftmargini&quot;</span> <span class="s">&quot;leftmarginii&quot;</span> <span class="s">&quot;leftmarginiii&quot;</span> <span class="s">&quot;leftmarginiv&quot;</span> <span class="s">&quot;leftmarginv&quot;</span>
<a name="cl-484"></a>   <span class="s">&quot;leftmarginvi&quot;</span> <span class="s">&quot;list&quot;</span> <span class="s">&quot;listfigurename&quot;</span> <span class="s">&quot;listtablename&quot;</span> <span class="s">&quot;loop&quot;</span> <span class="s">&quot;lq&quot;</span> <span class="s">&quot;m@ne&quot;</span>
<a name="cl-485"></a>   <span class="s">&quot;m@th&quot;</span> <span class="s">&quot;mainmatter&quot;</span> <span class="s">&quot;makeglossary&quot;</span> <span class="s">&quot;marginpar&quot;</span> <span class="s">&quot;markboth&quot;</span> <span class="s">&quot;math@fontsfalse&quot;</span>
<a name="cl-486"></a>   <span class="s">&quot;math@fontstrue&quot;</span> <span class="s">&quot;mathdollar&quot;</span> <span class="s">&quot;mathellipsis&quot;</span> <span class="s">&quot;mathindent&quot;</span> <span class="s">&quot;mathparagraph&quot;</span>
<a name="cl-487"></a>   <span class="s">&quot;mathsection&quot;</span> <span class="s">&quot;mathsterling&quot;</span> <span class="s">&quot;maxdepth&quot;</span> <span class="s">&quot;medskipamount&quot;</span> <span class="s">&quot;meta&quot;</span> <span class="s">&quot;month&quot;</span>
<a name="cl-488"></a>   <span class="s">&quot;mpfootnote&quot;</span> <span class="s">&quot;newblock&quot;</span> <span class="s">&quot;newbox&quot;</span> <span class="s">&quot;newcount&quot;</span> <span class="s">&quot;newdimen&quot;</span> <span class="s">&quot;newhelp&quot;</span>
<a name="cl-489"></a>   <span class="s">&quot;newlanguage&quot;</span> <span class="s">&quot;newmuskip&quot;</span> <span class="s">&quot;newread&quot;</span> <span class="s">&quot;newskip&quot;</span> <span class="s">&quot;newtoks&quot;</span> <span class="s">&quot;newwrite&quot;</span>
<a name="cl-490"></a>   <span class="s">&quot;nfss@text&quot;</span> <span class="s">&quot;nobreak&quot;</span> <span class="s">&quot;nobreakspace&quot;</span> <span class="s">&quot;nocorr&quot;</span> <span class="s">&quot;noexpand&quot;</span> <span class="s">&quot;normalmarginpar&quot;</span>
<a name="cl-491"></a>   <span class="s">&quot;null&quot;</span> <span class="s">&quot;num@figure&quot;</span> <span class="s">&quot;number&quot;</span> <span class="s">&quot;numberline&quot;</span> <span class="s">&quot;oe&quot;</span> <span class="s">&quot;onecolumn&quot;</span>
<a name="cl-492"></a>   <span class="s">&quot;operator@font&quot;</span> <span class="s">&quot;or&quot;</span> <span class="s">&quot;overfullrule&quot;</span> <span class="s">&quot;p@&quot;</span> <span class="s">&quot;p@enumii&quot;</span> <span class="s">&quot;p@enumiii&quot;</span> <span class="s">&quot;p@enumiv&quot;</span>
<a name="cl-493"></a>   <span class="s">&quot;paragraphmark&quot;</span> <span class="s">&quot;parfillskip&quot;</span> <span class="s">&quot;penalty&quot;</span> <span class="s">&quot;postchaptername&quot;</span>
<a name="cl-494"></a>   <span class="s">&quot;postdisplaypenalty&quot;</span> <span class="s">&quot;postpartname&quot;</span> <span class="s">&quot;pounds&quot;</span> <span class="s">&quot;prechaptername&quot;</span>
<a name="cl-495"></a>   <span class="s">&quot;predisplaypenalty&quot;</span> <span class="s">&quot;prepartname&quot;</span> <span class="s">&quot;protected@edef&quot;</span> <span class="s">&quot;ps@headings&quot;</span> <span class="s">&quot;pstyle&quot;</span>
<a name="cl-496"></a>   <span class="s">&quot;raggedbottom&quot;</span> <span class="s">&quot;raggedleft&quot;</span> <span class="s">&quot;raggedright&quot;</span> <span class="s">&quot;rbrace&quot;</span> <span class="s">&quot;reDeclareMathAlphabet&quot;</span>
<a name="cl-497"></a>   <span class="s">&quot;refname&quot;</span> <span class="s">&quot;refstepcounter&quot;</span> <span class="s">&quot;repeat&quot;</span> <span class="s">&quot;reset@font&quot;</span> <span class="s">&quot;reversemarginpar&quot;</span> <span class="s">&quot;rq&quot;</span>
<a name="cl-498"></a>   <span class="s">&quot;secdef&quot;</span> <span class="s">&quot;sectionmark&quot;</span> <span class="s">&quot;selectfont&quot;</span> <span class="s">&quot;sf@size&quot;</span> <span class="s">&quot;sfcode&quot;</span> <span class="s">&quot;sixt@@n&quot;</span> <span class="s">&quot;sloppy&quot;</span>
<a name="cl-499"></a>   <span class="s">&quot;smallskipamount&quot;</span> <span class="s">&quot;ss&quot;</span> <span class="s">&quot;subitem&quot;</span> <span class="s">&quot;subparagraphmark&quot;</span> <span class="s">&quot;subsectionmark&quot;</span>
<a name="cl-500"></a>   <span class="s">&quot;subsubitem&quot;</span> <span class="s">&quot;subsubsectionmark&quot;</span> <span class="s">&quot;tabbingsep&quot;</span> <span class="s">&quot;tablename&quot;</span> <span class="s">&quot;textasciicircum&quot;</span>
<a name="cl-501"></a>   <span class="s">&quot;textasciitilde&quot;</span> <span class="s">&quot;textasteriskcentered&quot;</span> <span class="s">&quot;textbackslash&quot;</span> <span class="s">&quot;textbar&quot;</span>
<a name="cl-502"></a>   <span class="s">&quot;textbardbl&quot;</span> <span class="s">&quot;textbraceleft&quot;</span> <span class="s">&quot;textbraceright&quot;</span> <span class="s">&quot;textbullet&quot;</span> <span class="s">&quot;textcircled&quot;</span>
<a name="cl-503"></a>   <span class="s">&quot;textcompwordmark&quot;</span> <span class="s">&quot;textcopyright&quot;</span> <span class="s">&quot;textdagger&quot;</span> <span class="s">&quot;textdaggerdbl&quot;</span>
<a name="cl-504"></a>   <span class="s">&quot;textdollar&quot;</span> <span class="s">&quot;textellipsis&quot;</span> <span class="s">&quot;textemdash&quot;</span> <span class="s">&quot;textendash&quot;</span> <span class="s">&quot;textexclamdown&quot;</span>
<a name="cl-505"></a>   <span class="s">&quot;textfloatsep&quot;</span> <span class="s">&quot;textfraction&quot;</span> <span class="s">&quot;textgreater&quot;</span> <span class="s">&quot;textless&quot;</span> <span class="s">&quot;textordfeminine&quot;</span>
<a name="cl-506"></a>   <span class="s">&quot;textordmasculine&quot;</span> <span class="s">&quot;textparagraph&quot;</span> <span class="s">&quot;textperiodcentered&quot;</span> <span class="s">&quot;textquestiondown&quot;</span>
<a name="cl-507"></a>   <span class="s">&quot;textquotedblleft&quot;</span> <span class="s">&quot;textquotedblright&quot;</span> <span class="s">&quot;textquoteleft&quot;</span> <span class="s">&quot;textquoteright&quot;</span>
<a name="cl-508"></a>   <span class="s">&quot;textregistered&quot;</span> <span class="s">&quot;textsection&quot;</span> <span class="s">&quot;textsterling&quot;</span> <span class="s">&quot;texttrademark&quot;</span>
<a name="cl-509"></a>   <span class="s">&quot;textunderscore&quot;</span> <span class="s">&quot;textvisiblespace&quot;</span> <span class="s">&quot;thechapter&quot;</span> <span class="s">&quot;theenumi&quot;</span> <span class="s">&quot;theenumii&quot;</span>
<a name="cl-510"></a>   <span class="s">&quot;theenumiii&quot;</span> <span class="s">&quot;theenumiv&quot;</span> <span class="s">&quot;theequation&quot;</span> <span class="s">&quot;thefigure&quot;</span> <span class="s">&quot;thefootnote&quot;</span>
<a name="cl-511"></a>   <span class="s">&quot;thempfootnote&quot;</span> <span class="s">&quot;theparagraph&quot;</span> <span class="s">&quot;thepart&quot;</span> <span class="s">&quot;thesection&quot;</span> <span class="s">&quot;thesubparagraph&quot;</span>
<a name="cl-512"></a>   <span class="s">&quot;thesubsection&quot;</span> <span class="s">&quot;thesubsubsection&quot;</span> <span class="s">&quot;tocdepth&quot;</span> <span class="s">&quot;today&quot;</span> <span class="s">&quot;topfigrule&quot;</span>
<a name="cl-513"></a>   <span class="s">&quot;topfraction&quot;</span> <span class="s">&quot;trivlist&quot;</span> <span class="s">&quot;tw@&quot;</span> <span class="s">&quot;two@digits&quot;</span> <span class="s">&quot;typeout&quot;</span> <span class="s">&quot;viiipt&quot;</span> <span class="s">&quot;viipt&quot;</span>
<a name="cl-514"></a>   <span class="s">&quot;vipt&quot;</span> <span class="s">&quot;widowpenalty&quot;</span> <span class="s">&quot;wlog&quot;</span> <span class="s">&quot;z@&quot;</span>
<a name="cl-515"></a>   <span class="p">))</span>
<a name="cl-516"></a>
<a name="cl-517"></a><span class="c1">;; latex.ltx</span>
<a name="cl-518"></a><span class="p">(</span><span class="nv">ac-l-define-dictionary-source</span>
<a name="cl-519"></a> <span class="nv">ac-l-source-latex-dot-ltx</span>
<a name="cl-520"></a> <span class="o">&#39;</span><span class="p">(</span><span class="s">&quot;@@enc@update&quot;</span> <span class="s">&quot;@@end&quot;</span> <span class="s">&quot;@@endpbox&quot;</span> <span class="s">&quot;@@eqncr&quot;</span> <span class="s">&quot;@@fileswith@pti@ns&quot;</span>
<a name="cl-521"></a>   <span class="s">&quot;@@hyph&quot;</span> <span class="s">&quot;@@if@newlist&quot;</span> <span class="s">&quot;@@ifdefinable&quot;</span> <span class="s">&quot;@@input&quot;</span> <span class="s">&quot;@@italiccorr&quot;</span>
<a name="cl-522"></a>   <span class="s">&quot;@@line&quot;</span> <span class="s">&quot;@@math@egroup&quot;</span> <span class="s">&quot;@@par&quot;</span> <span class="s">&quot;@@protect&quot;</span> <span class="s">&quot;@@startpbox&quot;</span> <span class="s">&quot;@@underline&quot;</span>
<a name="cl-523"></a>   <span class="s">&quot;@@unprocessedoptions&quot;</span> <span class="s">&quot;@@warning&quot;</span> <span class="s">&quot;@Alph&quot;</span> <span class="s">&quot;@DeclareMathDelimiter&quot;</span>
<a name="cl-524"></a>   <span class="s">&quot;@DeclareMathSizes&quot;</span> <span class="s">&quot;@Esphack&quot;</span> <span class="s">&quot;@Roman&quot;</span> <span class="s">&quot;@TeXversion&quot;</span> <span class="s">&quot;@acci&quot;</span> <span class="s">&quot;@accii&quot;</span>
<a name="cl-525"></a>   <span class="s">&quot;@acciii&quot;</span> <span class="s">&quot;@acol&quot;</span> <span class="s">&quot;@acolampacol&quot;</span> <span class="s">&quot;@activechar@info&quot;</span> <span class="s">&quot;@addamp&quot;</span> <span class="s">&quot;@addfield&quot;</span>
<a name="cl-526"></a>   <span class="s">&quot;@addmarginpar&quot;</span> <span class="s">&quot;@addtobot&quot;</span> <span class="s">&quot;@addtocurcol&quot;</span> <span class="s">&quot;@addtodblcol&quot;</span> <span class="s">&quot;@addtofilelist&quot;</span>
<a name="cl-527"></a>   <span class="s">&quot;@addtonextcol&quot;</span> <span class="s">&quot;@addtopreamble&quot;</span> <span class="s">&quot;@addtoreset&quot;</span> <span class="s">&quot;@addtotoporbot&quot;</span>
<a name="cl-528"></a>   <span class="s">&quot;@afterheading&quot;</span> <span class="s">&quot;@alph&quot;</span> <span class="s">&quot;@ampacol&quot;</span> <span class="s">&quot;@arabic&quot;</span> <span class="s">&quot;@argarraycr&quot;</span> <span class="s">&quot;@argdef&quot;</span>
<a name="cl-529"></a>   <span class="s">&quot;@argtabularcr&quot;</span> <span class="s">&quot;@array&quot;</span> <span class="s">&quot;@arrayacol&quot;</span> <span class="s">&quot;@arrayclassiv&quot;</span> <span class="s">&quot;@arrayclassz&quot;</span>
<a name="cl-530"></a>   <span class="s">&quot;@arraycr&quot;</span> <span class="s">&quot;@arrayparboxrestore&quot;</span> <span class="s">&quot;@arrayrule&quot;</span> <span class="s">&quot;@arstrut&quot;</span> <span class="s">&quot;@author&quot;</span>
<a name="cl-531"></a>   <span class="s">&quot;@auxout&quot;</span> <span class="s">&quot;@backslashchar&quot;</span> <span class="s">&quot;@badend&quot;</span> <span class="s">&quot;@badlinearg&quot;</span> <span class="s">&quot;@badmath&quot;</span>
<a name="cl-532"></a>   <span class="s">&quot;@badpoptabs&quot;</span> <span class="s">&quot;@badrequireerror&quot;</span> <span class="s">&quot;@badtab&quot;</span> <span class="s">&quot;@begin@tempboxa&quot;</span>
<a name="cl-533"></a>   <span class="s">&quot;@begindocumenthook&quot;</span> <span class="s">&quot;@begindvi&quot;</span> <span class="s">&quot;@begintheorem&quot;</span> <span class="s">&quot;@bezier&quot;</span> <span class="s">&quot;@bibitem&quot;</span>
<a name="cl-534"></a>   <span class="s">&quot;@biblabel&quot;</span> <span class="s">&quot;@bitor&quot;</span> <span class="s">&quot;@botlist&quot;</span> <span class="s">&quot;@boxfpsbit&quot;</span> <span class="s">&quot;@break@tfor&quot;</span> <span class="s">&quot;@bsphack&quot;</span>
<a name="cl-535"></a>   <span class="s">&quot;@caption&quot;</span> <span class="s">&quot;@captype&quot;</span> <span class="s">&quot;@car&quot;</span> <span class="s">&quot;@carcube&quot;</span> <span class="s">&quot;@cdr&quot;</span> <span class="s">&quot;@centercr&quot;</span> <span class="s">&quot;@cflb&quot;</span> <span class="s">&quot;@cflt&quot;</span>
<a name="cl-536"></a>   <span class="s">&quot;@changed@cmd&quot;</span> <span class="s">&quot;@charlb&quot;</span> <span class="s">&quot;@charrb&quot;</span> <span class="s">&quot;@check@c&quot;</span> <span class="s">&quot;@check@eq&quot;</span> <span class="s">&quot;@checkend&quot;</span>
<a name="cl-537"></a>   <span class="s">&quot;@circ&quot;</span> <span class="s">&quot;@circle&quot;</span> <span class="s">&quot;@circlefnt&quot;</span> <span class="s">&quot;@cite&quot;</span> <span class="s">&quot;@cite@ofmt&quot;</span> <span class="s">&quot;@citea&quot;</span> <span class="s">&quot;@citeb&quot;</span>
<a name="cl-538"></a>   <span class="s">&quot;@citex&quot;</span> <span class="s">&quot;@classi&quot;</span> <span class="s">&quot;@classii&quot;</span> <span class="s">&quot;@classiii&quot;</span> <span class="s">&quot;@classiv&quot;</span> <span class="s">&quot;@classoptionslist&quot;</span>
<a name="cl-539"></a>   <span class="s">&quot;@classv&quot;</span> <span class="s">&quot;@classz&quot;</span> <span class="s">&quot;@cline&quot;</span> <span class="s">&quot;@cls@pkg&quot;</span> <span class="s">&quot;@clsextension&quot;</span> <span class="s">&quot;@clubpenalty&quot;</span>
<a name="cl-540"></a>   <span class="s">&quot;@combinedblfloats&quot;</span> <span class="s">&quot;@combinefloats&quot;</span> <span class="s">&quot;@comdblflelt&quot;</span> <span class="s">&quot;@comflelt&quot;</span> <span class="s">&quot;@cons&quot;</span>
<a name="cl-541"></a>   <span class="s">&quot;@contfield&quot;</span> <span class="s">&quot;@ctrerr&quot;</span> <span class="s">&quot;@curr@enc&quot;</span> <span class="s">&quot;@currbox&quot;</span> <span class="s">&quot;@currdir&quot;</span> <span class="s">&quot;@current@cmd&quot;</span>
<a name="cl-542"></a>   <span class="s">&quot;@currentlabel&quot;</span> <span class="s">&quot;@currenvir&quot;</span> <span class="s">&quot;@currenvline&quot;</span> <span class="s">&quot;@currext&quot;</span> <span class="s">&quot;@currlist&quot;</span>
<a name="cl-543"></a>   <span class="s">&quot;@currname&quot;</span> <span class="s">&quot;@currnamestack&quot;</span> <span class="s">&quot;@curroptions&quot;</span> <span class="s">&quot;@currsize&quot;</span> <span class="s">&quot;@date&quot;</span> <span class="s">&quot;@dbflt&quot;</span>
<a name="cl-544"></a>   <span class="s">&quot;@dblarg&quot;</span> <span class="s">&quot;@dbldeferlist&quot;</span> <span class="s">&quot;@dblfloat&quot;</span> <span class="s">&quot;@dblfloatplacement&quot;</span> <span class="s">&quot;@dbltoplist&quot;</span>
<a name="cl-545"></a>   <span class="s">&quot;@dec@text@cmd&quot;</span> <span class="s">&quot;@declaredoptions&quot;</span> <span class="s">&quot;@declareoption&quot;</span> <span class="s">&quot;@defaultsubs&quot;</span>
<a name="cl-546"></a>   <span class="s">&quot;@defaultunits&quot;</span> <span class="s">&quot;@defdefault&quot;</span> <span class="s">&quot;@deferlist&quot;</span> <span class="s">&quot;@definecounter&quot;</span> <span class="s">&quot;@dischyph&quot;</span>
<a name="cl-547"></a>   <span class="s">&quot;@doclearpage&quot;</span> <span class="s">&quot;@documentclasshook&quot;</span> <span class="s">&quot;@doendpe&quot;</span> <span class="s">&quot;@dofilelist&quot;</span>
<a name="cl-548"></a>   <span class="s">&quot;@donoparitem&quot;</span> <span class="s">&quot;@dot&quot;</span> <span class="s">&quot;@dottedtocline&quot;</span> <span class="s">&quot;@downline&quot;</span> <span class="s">&quot;@downvector&quot;</span> <span class="s">&quot;@eha&quot;</span>
<a name="cl-549"></a>   <span class="s">&quot;@ehb&quot;</span> <span class="s">&quot;@ehc&quot;</span> <span class="s">&quot;@ehd&quot;</span> <span class="s">&quot;@elt&quot;</span> <span class="s">&quot;@empty&quot;</span> <span class="s">&quot;@emptycol&quot;</span> <span class="s">&quot;@end@tempboxa&quot;</span>
<a name="cl-550"></a>   <span class="s">&quot;@enddocumenthook&quot;</span> <span class="s">&quot;@endfloatbox&quot;</span> <span class="s">&quot;@endparenv&quot;</span> <span class="s">&quot;@endpbox&quot;</span> <span class="s">&quot;@endtheorem&quot;</span>
<a name="cl-551"></a>   <span class="s">&quot;@enlargepage&quot;</span> <span class="s">&quot;@ensuredmath&quot;</span> <span class="s">&quot;@enumctr&quot;</span> <span class="s">&quot;@eqncr&quot;</span> <span class="s">&quot;@eqnnum&quot;</span> <span class="s">&quot;@eqnsel&quot;</span>
<a name="cl-552"></a>   <span class="s">&quot;@esphack&quot;</span> <span class="s">&quot;@evenfoot&quot;</span> <span class="s">&quot;@evenhead&quot;</span> <span class="s">&quot;@expandtwoargs&quot;</span> <span class="s">&quot;@expast&quot;</span>
<a name="cl-553"></a>   <span class="s">&quot;@failedlist&quot;</span> <span class="s">&quot;@filef@und&quot;</span> <span class="s">&quot;@filelist&quot;</span> <span class="s">&quot;@fileswfalse&quot;</span> <span class="s">&quot;@fileswith@pti@ns&quot;</span>
<a name="cl-554"></a>   <span class="s">&quot;@fileswith@ptions&quot;</span> <span class="s">&quot;@fileswithoptions&quot;</span> <span class="s">&quot;@fileswtrue&quot;</span> <span class="s">&quot;@finalstrut&quot;</span>
<a name="cl-555"></a>   <span class="s">&quot;@firstofone&quot;</span> <span class="s">&quot;@firstoftwo&quot;</span> <span class="s">&quot;@flcheckspace&quot;</span> <span class="s">&quot;@flfail&quot;</span> <span class="s">&quot;@float&quot;</span>
<a name="cl-556"></a>   <span class="s">&quot;@floatboxreset&quot;</span> <span class="s">&quot;@floatplacement&quot;</span> <span class="s">&quot;@flsetnum&quot;</span> <span class="s">&quot;@flsettextmin&quot;</span> <span class="s">&quot;@flstop&quot;</span>
<a name="cl-557"></a>   <span class="s">&quot;@flsucceed&quot;</span> <span class="s">&quot;@fltovf&quot;</span> <span class="s">&quot;@flupdates&quot;</span> <span class="s">&quot;@fnsymbol&quot;</span> <span class="s">&quot;@font@info&quot;</span>
<a name="cl-558"></a>   <span class="s">&quot;@font@warning&quot;</span> <span class="s">&quot;@fontswitch&quot;</span> <span class="s">&quot;@footnotemark&quot;</span> <span class="s">&quot;@footnotetext&quot;</span> <span class="s">&quot;@for&quot;</span>
<a name="cl-559"></a>   <span class="s">&quot;@forloop&quot;</span> <span class="s">&quot;@fornoop&quot;</span> <span class="s">&quot;@fps&quot;</span> <span class="s">&quot;@fpsadddefault&quot;</span> <span class="s">&quot;@frameb@x&quot;</span> <span class="s">&quot;@framebox&quot;</span>
<a name="cl-560"></a>   <span class="s">&quot;@framepicbox&quot;</span> <span class="s">&quot;@freelist&quot;</span> <span class="s">&quot;@getcirc&quot;</span> <span class="s">&quot;@getfpsbit&quot;</span> <span class="s">&quot;@getlarrow&quot;</span>
<a name="cl-561"></a>   <span class="s">&quot;@getlinechar&quot;</span> <span class="s">&quot;@getpen&quot;</span> <span class="s">&quot;@getrarrow&quot;</span> <span class="s">&quot;@gnewline&quot;</span> <span class="s">&quot;@gobble&quot;</span> <span class="s">&quot;@gobblecr&quot;</span>
<a name="cl-562"></a>   <span class="s">&quot;@gobblefour&quot;</span> <span class="s">&quot;@gobbletwo&quot;</span> <span class="s">&quot;@gtempa&quot;</span> <span class="s">&quot;@halignto&quot;</span> <span class="s">&quot;@hangfrom&quot;</span> <span class="s">&quot;@height&quot;</span>
<a name="cl-563"></a>   <span class="s">&quot;@hline&quot;</span> <span class="s">&quot;@hspace&quot;</span> <span class="s">&quot;@hspacer&quot;</span> <span class="s">&quot;@hvector&quot;</span> <span class="s">&quot;@icentercr&quot;</span> <span class="s">&quot;@iden&quot;</span> <span class="s">&quot;@if&quot;</span>
<a name="cl-564"></a>   <span class="s">&quot;@if@pti@ns&quot;</span> <span class="s">&quot;@if@ptions&quot;</span> <span class="s">&quot;@ifatmargin&quot;</span> <span class="s">&quot;@ifclasslater&quot;</span> <span class="s">&quot;@ifclassloaded&quot;</span>
<a name="cl-565"></a>   <span class="s">&quot;@ifclasswith&quot;</span> <span class="s">&quot;@ifdefinable&quot;</span> <span class="s">&quot;@iffileonpath&quot;</span> <span class="s">&quot;@ifl@aded&quot;</span> <span class="s">&quot;@ifl@t@r&quot;</span>
<a name="cl-566"></a>   <span class="s">&quot;@ifl@ter&quot;</span> <span class="s">&quot;@ifnch&quot;</span> <span class="s">&quot;@ifnextchar&quot;</span> <span class="s">&quot;@iforloop&quot;</span> <span class="s">&quot;@ifpackagelater&quot;</span>
<a name="cl-567"></a>   <span class="s">&quot;@ifpackageloaded&quot;</span> <span class="s">&quot;@ifpackagewith&quot;</span> <span class="s">&quot;@iframebox&quot;</span> <span class="s">&quot;@iframepicbox&quot;</span> <span class="s">&quot;@ifstar&quot;</span>
<a name="cl-568"></a>   <span class="s">&quot;@ifundefined&quot;</span> <span class="s">&quot;@ignorefalse&quot;</span> <span class="s">&quot;@ignoretrue&quot;</span> <span class="s">&quot;@iiiminipage&quot;</span> <span class="s">&quot;@iiiparbox&quot;</span>
<a name="cl-569"></a>   <span class="s">&quot;@iiminipage&quot;</span> <span class="s">&quot;@iinput&quot;</span> <span class="s">&quot;@iiparbox&quot;</span> <span class="s">&quot;@iirsbox&quot;</span> <span class="s">&quot;@imakebox&quot;</span> <span class="s">&quot;@imakepicbox&quot;</span>
<a name="cl-570"></a>   <span class="s">&quot;@iminipage&quot;</span> <span class="s">&quot;@include&quot;</span> <span class="s">&quot;@index&quot;</span> <span class="s">&quot;@inmatherr&quot;</span> <span class="s">&quot;@inmathwarn&quot;</span> <span class="s">&quot;@input&quot;</span>
<a name="cl-571"></a>   <span class="s">&quot;@input@&quot;</span> <span class="s">&quot;@inputcheck&quot;</span> <span class="s">&quot;@iparbox&quot;</span> <span class="s">&quot;@irsbox&quot;</span> <span class="s">&quot;@isavebox&quot;</span> <span class="s">&quot;@isavepicbox&quot;</span>
<a name="cl-572"></a>   <span class="s">&quot;@ishortstack&quot;</span> <span class="s">&quot;@istackcr&quot;</span> <span class="s">&quot;@itabcr&quot;</span> <span class="s">&quot;@item&quot;</span> <span class="s">&quot;@itemfudge&quot;</span> <span class="s">&quot;@itemitem&quot;</span>
<a name="cl-573"></a>   <span class="s">&quot;@itemlabel&quot;</span> <span class="s">&quot;@iwhiledim&quot;</span> <span class="s">&quot;@iwhilenum&quot;</span> <span class="s">&quot;@iwhilesw&quot;</span> <span class="s">&quot;@ixpt&quot;</span> <span class="s">&quot;@ixstackcr&quot;</span>
<a name="cl-574"></a>   <span class="s">&quot;@killglue&quot;</span> <span class="s">&quot;@largefloatcheck&quot;</span> <span class="s">&quot;@latex@error&quot;</span> <span class="s">&quot;@latex@info&quot;</span>
<a name="cl-575"></a>   <span class="s">&quot;@latex@info@no@line&quot;</span> <span class="s">&quot;@latex@warning&quot;</span> <span class="s">&quot;@latex@warning@no@line&quot;</span>
<a name="cl-576"></a>   <span class="s">&quot;@latexbug&quot;</span> <span class="s">&quot;@latexerr&quot;</span> <span class="s">&quot;@lbibitem&quot;</span> <span class="s">&quot;@leftmark&quot;</span> <span class="s">&quot;@let@token&quot;</span> <span class="s">&quot;@lign&quot;</span>
<a name="cl-577"></a>   <span class="s">&quot;@linefnt&quot;</span> <span class="s">&quot;@listdepth&quot;</span> <span class="s">&quot;@listfiles&quot;</span> <span class="s">&quot;@loadwithoptions&quot;</span> <span class="s">&quot;@ltab&quot;</span>
<a name="cl-578"></a>   <span class="s">&quot;@mainaux&quot;</span> <span class="s">&quot;@makebox&quot;</span> <span class="s">&quot;@makecol&quot;</span> <span class="s">&quot;@makefcolumn&quot;</span> <span class="s">&quot;@makefnmark&quot;</span> <span class="s">&quot;@makeother&quot;</span>
<a name="cl-579"></a>   <span class="s">&quot;@makepicbox&quot;</span> <span class="s">&quot;@makespecialcolbox&quot;</span> <span class="s">&quot;@marginparreset&quot;</span> <span class="s">&quot;@markright&quot;</span>
<a name="cl-580"></a>   <span class="s">&quot;@maxdepth&quot;</span> <span class="s">&quot;@midlist&quot;</span> <span class="s">&quot;@minipagefalse&quot;</span> <span class="s">&quot;@minipagerestore&quot;</span> <span class="s">&quot;@minipagetrue&quot;</span>
<a name="cl-581"></a>   <span class="s">&quot;@minus&quot;</span> <span class="s">&quot;@missingfileerror&quot;</span> <span class="s">&quot;@mkboth&quot;</span> <span class="s">&quot;@mklab&quot;</span> <span class="s">&quot;@mkpream&quot;</span> <span class="s">&quot;@mpargs&quot;</span>
<a name="cl-582"></a>   <span class="s">&quot;@mpfn&quot;</span> <span class="s">&quot;@mpfootnotetext&quot;</span> <span class="s">&quot;@multiplelabels&quot;</span> <span class="s">&quot;@multiput&quot;</span> <span class="s">&quot;@multispan&quot;</span>
<a name="cl-583"></a>   <span class="s">&quot;@namedef&quot;</span> <span class="s">&quot;@nameuse&quot;</span> <span class="s">&quot;@nbitem&quot;</span> <span class="s">&quot;@needsf@rmat&quot;</span> <span class="s">&quot;@needsformat&quot;</span>
<a name="cl-584"></a>   <span class="s">&quot;@newcommand&quot;</span> <span class="s">&quot;@newctr&quot;</span> <span class="s">&quot;@newenv&quot;</span> <span class="s">&quot;@newenva&quot;</span> <span class="s">&quot;@newenvb&quot;</span> <span class="s">&quot;@newl&quot;</span>
<a name="cl-585"></a>   <span class="s">&quot;@newl@bel&quot;</span> <span class="s">&quot;@newline&quot;</span> <span class="s">&quot;@next&quot;</span> <span class="s">&quot;@nnil&quot;</span> <span class="s">&quot;@no@font@optfalse&quot;</span> <span class="s">&quot;@no@lnbk&quot;</span>
<a name="cl-586"></a>   <span class="s">&quot;@no@pgbk&quot;</span> <span class="s">&quot;@nobreakfalse&quot;</span> <span class="s">&quot;@nobreaktrue&quot;</span> <span class="s">&quot;@nocnterr&quot;</span> <span class="s">&quot;@nocounterr&quot;</span>
<a name="cl-587"></a>   <span class="s">&quot;@nodocument&quot;</span> <span class="s">&quot;@noitemerr&quot;</span> <span class="s">&quot;@noligs&quot;</span> <span class="s">&quot;@nolnerr&quot;</span> <span class="s">&quot;@nomath&quot;</span> <span class="s">&quot;@normalsize&quot;</span>
<a name="cl-588"></a>   <span class="s">&quot;@notdefinable&quot;</span> <span class="s">&quot;@notprerr&quot;</span> <span class="s">&quot;@nthm&quot;</span> <span class="s">&quot;@obsoletefile&quot;</span> <span class="s">&quot;@oddfoot&quot;</span> <span class="s">&quot;@oddhead&quot;</span>
<a name="cl-589"></a>   <span class="s">&quot;@onefilewithoptions&quot;</span> <span class="s">&quot;@onelevel&quot;</span> <span class="s">&quot;@onlypreamble&quot;</span> <span class="s">&quot;@opargbegintheorem&quot;</span>
<a name="cl-590"></a>   <span class="s">&quot;@opcol&quot;</span> <span class="s">&quot;@options&quot;</span> <span class="s">&quot;@othm&quot;</span> <span class="s">&quot;@outputdblcol&quot;</span> <span class="s">&quot;@outputpage&quot;</span> <span class="s">&quot;@oval&quot;</span>
<a name="cl-591"></a>   <span class="s">&quot;@ovhorz&quot;</span> <span class="s">&quot;@ovvert&quot;</span> <span class="s">&quot;@p@pfilename&quot;</span> <span class="s">&quot;@par&quot;</span> <span class="s">&quot;@parboxrestore&quot;</span> <span class="s">&quot;@parboxto&quot;</span>
<a name="cl-592"></a>   <span class="s">&quot;@parmoderr&quot;</span> <span class="s">&quot;@parse@version&quot;</span> <span class="s">&quot;@partaux&quot;</span> <span class="s">&quot;@partlist&quot;</span> <span class="s">&quot;@partswfalse&quot;</span>
<a name="cl-593"></a>   <span class="s">&quot;@partswtrue&quot;</span> <span class="s">&quot;@pass@ptions&quot;</span> <span class="s">&quot;@penup&quot;</span> <span class="s">&quot;@percentchar&quot;</span> <span class="s">&quot;@picture&quot;</span>
<a name="cl-594"></a>   <span class="s">&quot;@picture@warn&quot;</span> <span class="s">&quot;@pkgextension&quot;</span> <span class="s">&quot;@plus&quot;</span> <span class="s">&quot;@popfilename&quot;</span> <span class="s">&quot;@pr@videpackage&quot;</span>
<a name="cl-595"></a>   <span class="s">&quot;@preamble&quot;</span> <span class="s">&quot;@preamblecmds&quot;</span> <span class="s">&quot;@preamerr&quot;</span> <span class="s">&quot;@process@pti@ns&quot;</span>
<a name="cl-596"></a>   <span class="s">&quot;@process@ptions&quot;</span> <span class="s">&quot;@protected@testopt&quot;</span> <span class="s">&quot;@providesfile&quot;</span> <span class="s">&quot;@ptionlist&quot;</span>
<a name="cl-597"></a>   <span class="s">&quot;@pushfilename&quot;</span> <span class="s">&quot;@put&quot;</span> <span class="s">&quot;@qend&quot;</span> <span class="s">&quot;@qrelax&quot;</span> <span class="s">&quot;@rc@ifdefinable&quot;</span> <span class="s">&quot;@reargdef&quot;</span>
<a name="cl-598"></a>   <span class="s">&quot;@refundefined&quot;</span> <span class="s">&quot;@reinserts&quot;</span> <span class="s">&quot;@removeelement&quot;</span> <span class="s">&quot;@reset@ptions&quot;</span>
<a name="cl-599"></a>   <span class="s">&quot;@resetactivechars&quot;</span> <span class="s">&quot;@resethfps&quot;</span> <span class="s">&quot;@restorepar&quot;</span> <span class="s">&quot;@rightmark&quot;</span> <span class="s">&quot;@roman&quot;</span>
<a name="cl-600"></a>   <span class="s">&quot;@rsbox&quot;</span> <span class="s">&quot;@rtab&quot;</span> <span class="s">&quot;@rule&quot;</span> <span class="s">&quot;@sanitize&quot;</span> <span class="s">&quot;@savebox&quot;</span> <span class="s">&quot;@savemarbox&quot;</span>
<a name="cl-601"></a>   <span class="s">&quot;@savepicbox&quot;</span> <span class="s">&quot;@scolelt&quot;</span> <span class="s">&quot;@sdblcolelt&quot;</span> <span class="s">&quot;@seccntformat&quot;</span> <span class="s">&quot;@secondoftwo&quot;</span>
<a name="cl-602"></a>   <span class="s">&quot;@sect&quot;</span> <span class="s">&quot;@seqncr&quot;</span> <span class="s">&quot;@setckpt&quot;</span> <span class="s">&quot;@setfloattypecounts&quot;</span> <span class="s">&quot;@setfontsize&quot;</span>
<a name="cl-603"></a>   <span class="s">&quot;@setfpsbit&quot;</span> <span class="s">&quot;@setminipage&quot;</span> <span class="s">&quot;@setnobreak&quot;</span> <span class="s">&quot;@setpar&quot;</span> <span class="s">&quot;@setref&quot;</span> <span class="s">&quot;@setsize&quot;</span>
<a name="cl-604"></a>   <span class="s">&quot;@settab&quot;</span> <span class="s">&quot;@settodim&quot;</span> <span class="s">&quot;@settopoint&quot;</span> <span class="s">&quot;@sharp&quot;</span> <span class="s">&quot;@shortstack&quot;</span> <span class="s">&quot;@sline&quot;</span>
<a name="cl-605"></a>   <span class="s">&quot;@slowromancap&quot;</span> <span class="s">&quot;@spaces&quot;</span> <span class="s">&quot;@specialoutput&quot;</span> <span class="s">&quot;@specialstyle&quot;</span> <span class="s">&quot;@sptoken&quot;</span>
<a name="cl-606"></a>   <span class="s">&quot;@sqrt&quot;</span> <span class="s">&quot;@ssect&quot;</span> <span class="s">&quot;@stackcr&quot;</span> <span class="s">&quot;@star@or@long&quot;</span> <span class="s">&quot;@startcolumn&quot;</span>
<a name="cl-607"></a>   <span class="s">&quot;@startdblcolumn&quot;</span> <span class="s">&quot;@startfield&quot;</span> <span class="s">&quot;@startline&quot;</span> <span class="s">&quot;@startpbox&quot;</span> <span class="s">&quot;@startsection&quot;</span>
<a name="cl-608"></a>   <span class="s">&quot;@starttoc&quot;</span> <span class="s">&quot;@stopfield&quot;</span> <span class="s">&quot;@stopline&quot;</span> <span class="s">&quot;@stpelt&quot;</span> <span class="s">&quot;@svector&quot;</span> <span class="s">&quot;@sverb&quot;</span>
<a name="cl-609"></a>   <span class="s">&quot;@svsec&quot;</span> <span class="s">&quot;@svsechd&quot;</span> <span class="s">&quot;@sxverbatim&quot;</span> <span class="s">&quot;@tabacckludge&quot;</span> <span class="s">&quot;@tabacol&quot;</span> <span class="s">&quot;@tabarray&quot;</span>
<a name="cl-610"></a>   <span class="s">&quot;@tabclassiv&quot;</span> <span class="s">&quot;@tabclassz&quot;</span> <span class="s">&quot;@tabcr&quot;</span> <span class="s">&quot;@tablab&quot;</span> <span class="s">&quot;@tabminus&quot;</span> <span class="s">&quot;@tabplus&quot;</span>
<a name="cl-611"></a>   <span class="s">&quot;@tabrj&quot;</span> <span class="s">&quot;@tabular&quot;</span> <span class="s">&quot;@tabularcr&quot;</span> <span class="s">&quot;@tempdimb&quot;</span> <span class="s">&quot;@tempswa&quot;</span> <span class="s">&quot;@tempswafalse&quot;</span>
<a name="cl-612"></a>   <span class="s">&quot;@tempswatrue&quot;</span> <span class="s">&quot;@testdef&quot;</span> <span class="s">&quot;@testfalse&quot;</span> <span class="s">&quot;@testfp&quot;</span> <span class="s">&quot;@testopt&quot;</span> <span class="s">&quot;@testpach&quot;</span>
<a name="cl-613"></a>   <span class="s">&quot;@testtrue&quot;</span> <span class="s">&quot;@text@composite&quot;</span> <span class="s">&quot;@text@composite@x&quot;</span> <span class="s">&quot;@textbottom&quot;</span>
<a name="cl-614"></a>   <span class="s">&quot;@textsuperscript&quot;</span> <span class="s">&quot;@texttop&quot;</span> <span class="s">&quot;@tf@r&quot;</span> <span class="s">&quot;@tfor&quot;</span> <span class="s">&quot;@tforloop&quot;</span> <span class="s">&quot;@thanks&quot;</span>
<a name="cl-615"></a>   <span class="s">&quot;@thefnmark&quot;</span> <span class="s">&quot;@thefoot&quot;</span> <span class="s">&quot;@thehead&quot;</span> <span class="s">&quot;@themargin&quot;</span> <span class="s">&quot;@themark&quot;</span> <span class="s">&quot;@thirdofthree&quot;</span>
<a name="cl-616"></a>   <span class="s">&quot;@thm&quot;</span> <span class="s">&quot;@thmcounter&quot;</span> <span class="s">&quot;@thmcountersep&quot;</span> <span class="s">&quot;@title&quot;</span> <span class="s">&quot;@toodeep&quot;</span> <span class="s">&quot;@toplist&quot;</span>
<a name="cl-617"></a>   <span class="s">&quot;@topnewpage&quot;</span> <span class="s">&quot;@trivlist&quot;</span> <span class="s">&quot;@tryfcolumn&quot;</span> <span class="s">&quot;@trylist&quot;</span> <span class="s">&quot;@twoclasseserror&quot;</span>
<a name="cl-618"></a>   <span class="s">&quot;@twoloadclasserror&quot;</span> <span class="s">&quot;@typein&quot;</span> <span class="s">&quot;@typeset&quot;</span> <span class="s">&quot;@typeset@protect&quot;</span> <span class="s">&quot;@uclclist&quot;</span>
<a name="cl-619"></a>   <span class="s">&quot;@unexpandable@protect&quot;</span> <span class="s">&quot;@unknownoptionerror&quot;</span> <span class="s">&quot;@unprocessedoptions&quot;</span>
<a name="cl-620"></a>   <span class="s">&quot;@unused&quot;</span> <span class="s">&quot;@unusedoptionlist&quot;</span> <span class="s">&quot;@upline&quot;</span> <span class="s">&quot;@upordown&quot;</span> <span class="s">&quot;@upvector&quot;</span>
<a name="cl-621"></a>   <span class="s">&quot;@use@ption&quot;</span> <span class="s">&quot;@use@text@encoding&quot;</span> <span class="s">&quot;@verb&quot;</span> <span class="s">&quot;@verbatim&quot;</span> <span class="s">&quot;@viiipt&quot;</span> <span class="s">&quot;@viipt&quot;</span>
<a name="cl-622"></a>   <span class="s">&quot;@vipt&quot;</span> <span class="s">&quot;@vline&quot;</span> <span class="s">&quot;@vobeyspaces&quot;</span> <span class="s">&quot;@vpt&quot;</span> <span class="s">&quot;@vspace&quot;</span> <span class="s">&quot;@vspacer&quot;</span> <span class="s">&quot;@vtryfc&quot;</span>
<a name="cl-623"></a>   <span class="s">&quot;@vvector&quot;</span> <span class="s">&quot;@warning&quot;</span> <span class="s">&quot;@wckptelt&quot;</span> <span class="s">&quot;@whiledim&quot;</span> <span class="s">&quot;@whilenum&quot;</span> <span class="s">&quot;@whilesw&quot;</span>
<a name="cl-624"></a>   <span class="s">&quot;@wrglossary&quot;</span> <span class="s">&quot;@wrindex&quot;</span> <span class="s">&quot;@writeckpt&quot;</span> <span class="s">&quot;@writefile&quot;</span> <span class="s">&quot;@wrong@font@char&quot;</span>
<a name="cl-625"></a>   <span class="s">&quot;@wtryfc&quot;</span> <span class="s">&quot;@x@protect&quot;</span> <span class="s">&quot;@x@sf&quot;</span> <span class="s">&quot;@xDeclareMathDelimiter&quot;</span> <span class="s">&quot;@xaddvskip&quot;</span>
<a name="cl-626"></a>   <span class="s">&quot;@xargarraycr&quot;</span> <span class="s">&quot;@xargdef&quot;</span> <span class="s">&quot;@xarraycr&quot;</span> <span class="s">&quot;@xbitor&quot;</span> <span class="s">&quot;@xcentercr&quot;</span> <span class="s">&quot;@xdblarg&quot;</span>
<a name="cl-627"></a>   <span class="s">&quot;@xdblfloat&quot;</span> <span class="s">&quot;@xeqncr&quot;</span> <span class="s">&quot;@xexnoop&quot;</span> <span class="s">&quot;@xexpast&quot;</span> <span class="s">&quot;@xfloat&quot;</span> <span class="s">&quot;@xfootnote&quot;</span>
<a name="cl-628"></a>   <span class="s">&quot;@xfootnotemark&quot;</span> <span class="s">&quot;@xfootnotenext&quot;</span> <span class="s">&quot;@xhline&quot;</span> <span class="s">&quot;@xifnch&quot;</span> <span class="s">&quot;@xiipt&quot;</span> <span class="s">&quot;@xipt&quot;</span>
<a name="cl-629"></a>   <span class="s">&quot;@xivpt&quot;</span> <span class="s">&quot;@xmpar&quot;</span> <span class="s">&quot;@xnewline&quot;</span> <span class="s">&quot;@xnext&quot;</span> <span class="s">&quot;@xnthm&quot;</span> <span class="s">&quot;@xprocess@ptions&quot;</span>
<a name="cl-630"></a>   <span class="s">&quot;@xpt&quot;</span> <span class="s">&quot;@xsect&quot;</span> <span class="s">&quot;@xtabcr&quot;</span> <span class="s">&quot;@xtabularcr&quot;</span> <span class="s">&quot;@xthm&quot;</span> <span class="s">&quot;@xtryfc&quot;</span> <span class="s">&quot;@xtypein&quot;</span>
<a name="cl-631"></a>   <span class="s">&quot;@xverbatim&quot;</span> <span class="s">&quot;@xviipt&quot;</span> <span class="s">&quot;@xxDeclareMathDelimiter&quot;</span> <span class="s">&quot;@xxpt&quot;</span> <span class="s">&quot;@xxvpt&quot;</span>
<a name="cl-632"></a>   <span class="s">&quot;@xympar&quot;</span> <span class="s">&quot;@yargarraycr&quot;</span> <span class="s">&quot;@yargd@f&quot;</span> <span class="s">&quot;@yargdef&quot;</span> <span class="s">&quot;@yeqncr&quot;</span> <span class="s">&quot;@ympar&quot;</span>
<a name="cl-633"></a>   <span class="s">&quot;@ynthm&quot;</span> <span class="s">&quot;@ythm&quot;</span> <span class="s">&quot;@ytryfc&quot;</span> <span class="s">&quot;@ztryfc&quot;</span> <span class="s">&quot;AA&quot;</span> <span class="s">&quot;Alph&quot;</span> <span class="s">&quot;AtBeginDocument&quot;</span>
<a name="cl-634"></a>   <span class="s">&quot;AtBeginDvi&quot;</span> <span class="s">&quot;AtEndDocument&quot;</span> <span class="s">&quot;AtEndOfClass&quot;</span> <span class="s">&quot;AtEndOfPackage&quot;</span> <span class="s">&quot;Biggl&quot;</span>
<a name="cl-635"></a>   <span class="s">&quot;Biggm&quot;</span> <span class="s">&quot;Biggr&quot;</span> <span class="s">&quot;Bigl&quot;</span> <span class="s">&quot;Bigm&quot;</span> <span class="s">&quot;Bigr&quot;</span> <span class="s">&quot;Box&quot;</span> <span class="s">&quot;CheckCommand&quot;</span> <span class="s">&quot;ClassError&quot;</span>
<a name="cl-636"></a>   <span class="s">&quot;ClassInfo&quot;</span> <span class="s">&quot;ClassWarning&quot;</span> <span class="s">&quot;ClassWarningNoLine&quot;</span> <span class="s">&quot;CurrentOption&quot;</span>
<a name="cl-637"></a>   <span class="s">&quot;DeclareErrorFont&quot;</span> <span class="s">&quot;DeclareFixedFont&quot;</span> <span class="s">&quot;DeclareFontEncoding&quot;</span>
<a name="cl-638"></a>   <span class="s">&quot;DeclareFontEncoding@&quot;</span> <span class="s">&quot;DeclareFontEncodingDefaults&quot;</span> <span class="s">&quot;DeclareFontFamily&quot;</span>
<a name="cl-639"></a>   <span class="s">&quot;DeclareFontShape&quot;</span> <span class="s">&quot;DeclareFontShape@&quot;</span> <span class="s">&quot;DeclareFontSubstitution&quot;</span>
<a name="cl-640"></a>   <span class="s">&quot;DeclareMathAccent&quot;</span> <span class="s">&quot;DeclareMathAlphabet&quot;</span> <span class="s">&quot;DeclareMathDelimiter&quot;</span>
<a name="cl-641"></a>   <span class="s">&quot;DeclareMathRadical&quot;</span> <span class="s">&quot;DeclareMathSizes&quot;</span> <span class="s">&quot;DeclareMathSymbol&quot;</span>
<a name="cl-642"></a>   <span class="s">&quot;DeclareMathVersion&quot;</span> <span class="s">&quot;DeclareOldFontCommand&quot;</span> <span class="s">&quot;DeclareOption&quot;</span>
<a name="cl-643"></a>   <span class="s">&quot;DeclarePreloadSizes&quot;</span> <span class="s">&quot;DeclareRobustCommand&quot;</span> <span class="s">&quot;DeclareSizeFunction&quot;</span>
<a name="cl-644"></a>   <span class="s">&quot;DeclareSymbolFont&quot;</span> <span class="s">&quot;DeclareSymbolFontAlphabet&quot;</span>
<a name="cl-645"></a>   <span class="s">&quot;DeclareSymbolFontAlphabet@&quot;</span> <span class="s">&quot;DeclareTextAccent&quot;</span> <span class="s">&quot;DeclareTextAccentDefault&quot;</span>
<a name="cl-646"></a>   <span class="s">&quot;DeclareTextCommand&quot;</span> <span class="s">&quot;DeclareTextCommandDefault&quot;</span> <span class="s">&quot;DeclareTextComposite&quot;</span>
<a name="cl-647"></a>   <span class="s">&quot;DeclareTextCompositeCommand&quot;</span> <span class="s">&quot;DeclareTextFontCommand&quot;</span> <span class="s">&quot;DeclareTextSymbol&quot;</span>
<a name="cl-648"></a>   <span class="s">&quot;DeclareTextSymbolDefault&quot;</span> <span class="s">&quot;Diamond&quot;</span> <span class="s">&quot;ExecuteOptions&quot;</span> <span class="s">&quot;G@refundefinedtrue&quot;</span>
<a name="cl-649"></a>   <span class="s">&quot;GenericError&quot;</span> <span class="s">&quot;GenericInfo&quot;</span> <span class="s">&quot;GenericWarning&quot;</span> <span class="s">&quot;IfFileExists&quot;</span>
<a name="cl-650"></a>   <span class="s">&quot;InputIfFileExists&quot;</span> <span class="s">&quot;Join&quot;</span> <span class="s">&quot;LaTeX&quot;</span> <span class="s">&quot;LaTeXe&quot;</span> <span class="s">&quot;LastDeclaredEncoding&quot;</span>
<a name="cl-651"></a>   <span class="s">&quot;LoadClass&quot;</span> <span class="s">&quot;LoadClassWithOptions&quot;</span> <span class="s">&quot;MakeLowercase&quot;</span> <span class="s">&quot;MakeUppercase&quot;</span>
<a name="cl-652"></a>   <span class="s">&quot;MessageBreak&quot;</span> <span class="s">&quot;NeedsTeXFormat&quot;</span> <span class="s">&quot;OptionNotUsed&quot;</span> <span class="s">&quot;PackageError&quot;</span>
<a name="cl-653"></a>   <span class="s">&quot;PackageInfo&quot;</span> <span class="s">&quot;PackageWarning&quot;</span> <span class="s">&quot;PackageWarningNoLine&quot;</span> <span class="s">&quot;PassOptionsToClass&quot;</span>
<a name="cl-654"></a>   <span class="s">&quot;PassOptionsToPackage&quot;</span> <span class="s">&quot;Pr&quot;</span> <span class="s">&quot;ProcessOptions&quot;</span> <span class="s">&quot;ProvideTextCommand&quot;</span>
<a name="cl-655"></a>   <span class="s">&quot;ProvideTextCommandDefault&quot;</span> <span class="s">&quot;ProvidesClass&quot;</span> <span class="s">&quot;ProvidesFile&quot;</span>
<a name="cl-656"></a>   <span class="s">&quot;ProvidesPackage&quot;</span> <span class="s">&quot;RequirePackage&quot;</span> <span class="s">&quot;RequirePackageWithOptions&quot;</span>
<a name="cl-657"></a>   <span class="s">&quot;Roman&quot;</span> <span class="s">&quot;SetMathAlphabet&quot;</span> <span class="s">&quot;SetMathAlphabet@&quot;</span> <span class="s">&quot;SetSymbolFont&quot;</span>
<a name="cl-658"></a>   <span class="s">&quot;SetSymbolFont@&quot;</span> <span class="s">&quot;TeX&quot;</span> <span class="s">&quot;TextSymbolUnavailable&quot;</span> <span class="s">&quot;UndeclareTextCommand&quot;</span>
<a name="cl-659"></a>   <span class="s">&quot;UseTextAccent&quot;</span> <span class="s">&quot;UseTextSymbol&quot;</span> <span class="s">&quot;aa&quot;</span> <span class="s">&quot;accent@spacefactor&quot;</span>
<a name="cl-660"></a>   <span class="s">&quot;active@math@prime&quot;</span> <span class="s">&quot;add@accent&quot;</span> <span class="s">&quot;addcontentsline&quot;</span> <span class="s">&quot;addpenalty&quot;</span>
<a name="cl-661"></a>   <span class="s">&quot;addto@hook&quot;</span> <span class="s">&quot;addtocontents&quot;</span> <span class="s">&quot;addtocounter&quot;</span> <span class="s">&quot;addtolength&quot;</span> <span class="s">&quot;addtoversion&quot;</span>
<a name="cl-662"></a>   <span class="s">&quot;addvspace&quot;</span> <span class="s">&quot;alloc@&quot;</span> <span class="s">&quot;allowbreak&quot;</span> <span class="s">&quot;alph&quot;</span> <span class="s">&quot;alpha@elt&quot;</span> <span class="s">&quot;alpha@list&quot;</span> <span class="s">&quot;and&quot;</span>
<a name="cl-663"></a>   <span class="s">&quot;arabic&quot;</span> <span class="s">&quot;arccos&quot;</span> <span class="s">&quot;arcsin&quot;</span> <span class="s">&quot;arctan&quot;</span> <span class="s">&quot;areRobustCommand&quot;</span> <span class="s">&quot;arg&quot;</span> <span class="s">&quot;array&quot;</span>
<a name="cl-664"></a>   <span class="s">&quot;arraystretch&quot;</span> <span class="s">&quot;author&quot;</span> <span class="s">&quot;baselinestretch&quot;</span> <span class="s">&quot;begin&quot;</span> <span class="s">&quot;best@size&quot;</span> <span class="s">&quot;bezier&quot;</span>
<a name="cl-665"></a>   <span class="s">&quot;bfseries&quot;</span> <span class="s">&quot;bgroup&quot;</span> <span class="s">&quot;bibcite&quot;</span> <span class="s">&quot;bibdata&quot;</span> <span class="s">&quot;bibitem&quot;</span> <span class="s">&quot;bibliography&quot;</span>
<a name="cl-666"></a>   <span class="s">&quot;bibliographystyle&quot;</span> <span class="s">&quot;bibstyle&quot;</span> <span class="s">&quot;bigbreak&quot;</span> <span class="s">&quot;biggl&quot;</span> <span class="s">&quot;biggm&quot;</span> <span class="s">&quot;biggr&quot;</span> <span class="s">&quot;bigl&quot;</span>
<a name="cl-667"></a>   <span class="s">&quot;bigm&quot;</span> <span class="s">&quot;bigr&quot;</span> <span class="s">&quot;bigskip&quot;</span> <span class="s">&quot;bm@b&quot;</span> <span class="s">&quot;bm@c&quot;</span> <span class="s">&quot;bm@l&quot;</span> <span class="s">&quot;bm@r&quot;</span> <span class="s">&quot;bm@s&quot;</span> <span class="s">&quot;bm@t&quot;</span> <span class="s">&quot;bmod&quot;</span>
<a name="cl-668"></a>   <span class="s">&quot;boldmath&quot;</span> <span class="s">&quot;bordermatrix&quot;</span> <span class="s">&quot;botfigrule&quot;</span> <span class="s">&quot;bottomfraction&quot;</span> <span class="s">&quot;brace&quot;</span> <span class="s">&quot;brack&quot;</span>
<a name="cl-669"></a>   <span class="s">&quot;break&quot;</span> <span class="s">&quot;buildrel&quot;</span> <span class="s">&quot;c@errorcontextlines&quot;</span> <span class="s">&quot;calculate@math@sizes&quot;</span> <span class="s">&quot;caption&quot;</span>
<a name="cl-670"></a>   <span class="s">&quot;cases&quot;</span> <span class="s">&quot;cdp@elt&quot;</span> <span class="s">&quot;cdp@list&quot;</span> <span class="s">&quot;center&quot;</span> <span class="s">&quot;centering&quot;</span> <span class="s">&quot;centerline&quot;</span>
<a name="cl-671"></a>   <span class="s">&quot;cf@encoding&quot;</span> <span class="s">&quot;ch@ck&quot;</span> <span class="s">&quot;chardef@text@cmd&quot;</span> <span class="s">&quot;check@command&quot;</span> <span class="s">&quot;check@icl&quot;</span>
<a name="cl-672"></a>   <span class="s">&quot;check@icr&quot;</span> <span class="s">&quot;check@mathfonts&quot;</span> <span class="s">&quot;check@nocorr@&quot;</span> <span class="s">&quot;check@range&quot;</span> <span class="s">&quot;check@single&quot;</span>
<a name="cl-673"></a>   <span class="s">&quot;choose&quot;</span> <span class="s">&quot;circle&quot;</span> <span class="s">&quot;citation&quot;</span> <span class="s">&quot;cite&quot;</span> <span class="s">&quot;cl@@ckpt&quot;</span> <span class="s">&quot;cl@page&quot;</span> <span class="s">&quot;cleardoublepage&quot;</span>
<a name="cl-674"></a>   <span class="s">&quot;clearpage&quot;</span> <span class="s">&quot;cline&quot;</span> <span class="s">&quot;closein&quot;</span> <span class="s">&quot;closeout&quot;</span> <span class="s">&quot;color@begingroup&quot;</span> <span class="s">&quot;color@endbox&quot;</span>
<a name="cl-675"></a>   <span class="s">&quot;color@endgroup&quot;</span> <span class="s">&quot;color@hbox&quot;</span> <span class="s">&quot;color@setgroup&quot;</span> <span class="s">&quot;color@vbox&quot;</span> <span class="s">&quot;contentsline&quot;</span>
<a name="cl-676"></a>   <span class="s">&quot;copyright&quot;</span> <span class="s">&quot;cos&quot;</span> <span class="s">&quot;cosh&quot;</span> <span class="s">&quot;cot&quot;</span> <span class="s">&quot;coth&quot;</span> <span class="s">&quot;cr&quot;</span> <span class="s">&quot;csc&quot;</span> <span class="s">&quot;curr@fontshape&quot;</span>
<a name="cl-677"></a>   <span class="s">&quot;curr@math&quot;</span> <span class="s">&quot;curr@math@size&quot;</span> <span class="s">&quot;dag&quot;</span> <span class="s">&quot;dashbox&quot;</span> <span class="s">&quot;date&quot;</span> <span class="s">&quot;dblfigrule&quot;</span>
<a name="cl-678"></a>   <span class="s">&quot;dblfloatpagefraction&quot;</span> <span class="s">&quot;dbltopfraction&quot;</span> <span class="s">&quot;ddag&quot;</span> <span class="s">&quot;declare@robustcommand&quot;</span>
<a name="cl-679"></a>   <span class="s">&quot;default@M&quot;</span> <span class="s">&quot;default@T&quot;</span> <span class="s">&quot;default@ds&quot;</span> <span class="s">&quot;default@family&quot;</span> <span class="s">&quot;default@mextra&quot;</span>
<a name="cl-680"></a>   <span class="s">&quot;default@series&quot;</span> <span class="s">&quot;default@shape&quot;</span> <span class="s">&quot;defaulthyphenchar&quot;</span> <span class="s">&quot;defaultscriptratio&quot;</span>
<a name="cl-681"></a>   <span class="s">&quot;defaultscriptscriptratio&quot;</span> <span class="s">&quot;defaultskewchar&quot;</span> <span class="s">&quot;define@mathalphabet&quot;</span>
<a name="cl-682"></a>   <span class="s">&quot;define@mathgroup&quot;</span> <span class="s">&quot;define@newfont&quot;</span> <span class="s">&quot;deg&quot;</span> <span class="s">&quot;depth&quot;</span> <span class="s">&quot;det&quot;</span> <span class="s">&quot;dim&quot;</span> <span class="s">&quot;dimen@&quot;</span>
<a name="cl-683"></a>   <span class="s">&quot;displ@y&quot;</span> <span class="s">&quot;displaylines&quot;</span> <span class="s">&quot;displaymath&quot;</span> <span class="s">&quot;do&quot;</span> <span class="s">&quot;do@noligs&quot;</span>
<a name="cl-684"></a>   <span class="s">&quot;do@subst@correction&quot;</span> <span class="s">&quot;document&quot;</span> <span class="s">&quot;document@select@group&quot;</span> <span class="s">&quot;documentclass&quot;</span>
<a name="cl-685"></a>   <span class="s">&quot;documentstyle&quot;</span> <span class="s">&quot;dorestore@version&quot;</span> <span class="s">&quot;dospecials&quot;</span> <span class="s">&quot;dotfill&quot;</span> <span class="s">&quot;dots&quot;</span> <span class="s">&quot;ds@&quot;</span>
<a name="cl-686"></a>   <span class="s">&quot;eject&quot;</span> <span class="s">&quot;em&quot;</span> <span class="s">&quot;empty&quot;</span> <span class="s">&quot;empty@sfcnt&quot;</span> <span class="s">&quot;enc@update&quot;</span> <span class="s">&quot;end&quot;</span> <span class="s">&quot;end@dblfloat&quot;</span>
<a name="cl-687"></a>   <span class="s">&quot;end@float&quot;</span> <span class="s">&quot;endarray&quot;</span> <span class="s">&quot;endcenter&quot;</span> <span class="s">&quot;enddisplaymath&quot;</span> <span class="s">&quot;enddocument&quot;</span>
<a name="cl-688"></a>   <span class="s">&quot;endenumerate&quot;</span> <span class="s">&quot;endeqnarray&quot;</span> <span class="s">&quot;endequation&quot;</span> <span class="s">&quot;endfilecontents&quot;</span>
<a name="cl-689"></a>   <span class="s">&quot;endflushleft&quot;</span> <span class="s">&quot;endflushright&quot;</span> <span class="s">&quot;endgraf&quot;</span> <span class="s">&quot;enditemize&quot;</span> <span class="s">&quot;endline&quot;</span>
<a name="cl-690"></a>   <span class="s">&quot;endlinechar&quot;</span> <span class="s">&quot;endlist&quot;</span> <span class="s">&quot;endlrbox&quot;</span> <span class="s">&quot;endmath&quot;</span> <span class="s">&quot;endminipage&quot;</span> <span class="s">&quot;endpicture&quot;</span>
<a name="cl-691"></a>   <span class="s">&quot;endsloppypar&quot;</span> <span class="s">&quot;endtabbing&quot;</span> <span class="s">&quot;endtabular&quot;</span> <span class="s">&quot;endtrivlist&quot;</span> <span class="s">&quot;endverbatim&quot;</span>
<a name="cl-692"></a>   <span class="s">&quot;enlargethispage&quot;</span> <span class="s">&quot;enskip&quot;</span> <span class="s">&quot;enspace&quot;</span> <span class="s">&quot;ensuremath&quot;</span> <span class="s">&quot;enumerate&quot;</span> <span class="s">&quot;eqnarray&quot;</span>
<a name="cl-693"></a>   <span class="s">&quot;equation&quot;</span> <span class="s">&quot;err@rel@i&quot;</span> <span class="s">&quot;error@fontshape&quot;</span> <span class="s">&quot;every@math@size&quot;</span> <span class="s">&quot;everydisplay&quot;</span>
<a name="cl-694"></a>   <span class="s">&quot;everymath&quot;</span> <span class="s">&quot;execute@size@function&quot;</span> <span class="s">&quot;exp&quot;</span> <span class="s">&quot;external@font&quot;</span> <span class="s">&quot;extra@def&quot;</span>
<a name="cl-695"></a>   <span class="s">&quot;extracolsep&quot;</span> <span class="s">&quot;extract@alph@from@version&quot;</span> <span class="s">&quot;extract@font&quot;</span>
<a name="cl-696"></a>   <span class="s">&quot;extract@rangefontinfo&quot;</span> <span class="s">&quot;extract@sizefn&quot;</span> <span class="s">&quot;f@baselineskip&quot;</span> <span class="s">&quot;f@encoding&quot;</span>
<a name="cl-697"></a>   <span class="s">&quot;f@family&quot;</span> <span class="s">&quot;f@linespread&quot;</span> <span class="s">&quot;f@series&quot;</span> <span class="s">&quot;f@shape&quot;</span> <span class="s">&quot;f@size&quot;</span> <span class="s">&quot;f@user@size&quot;</span>
<a name="cl-698"></a>   <span class="s">&quot;fbox&quot;</span> <span class="s">&quot;filbreak&quot;</span> <span class="s">&quot;filec@ntents&quot;</span> <span class="s">&quot;filecontents&quot;</span> <span class="s">&quot;filename@area&quot;</span>
<a name="cl-699"></a>   <span class="s">&quot;filename@base&quot;</span> <span class="s">&quot;filename@dot&quot;</span> <span class="s">&quot;filename@ext&quot;</span> <span class="s">&quot;filename@parse&quot;</span>
<a name="cl-700"></a>   <span class="s">&quot;filename@path&quot;</span> <span class="s">&quot;filename@simple&quot;</span> <span class="s">&quot;finph@nt&quot;</span> <span class="s">&quot;finsm@sh&quot;</span> <span class="s">&quot;firstmark&quot;</span>
<a name="cl-701"></a>   <span class="s">&quot;fix@penalty&quot;</span> <span class="s">&quot;fixed@sfcnt&quot;</span> <span class="s">&quot;floatpagefraction&quot;</span> <span class="s">&quot;flushbottom&quot;</span> <span class="s">&quot;flushleft&quot;</span>
<a name="cl-702"></a>   <span class="s">&quot;flushright&quot;</span> <span class="s">&quot;fmtname&quot;</span> <span class="s">&quot;fmtversion&quot;</span> <span class="s">&quot;fmtversion@topatch&quot;</span> <span class="s">&quot;fnsymbol&quot;</span>
<a name="cl-703"></a>   <span class="s">&quot;font@info&quot;</span> <span class="s">&quot;font@name&quot;</span> <span class="s">&quot;font@submax&quot;</span> <span class="s">&quot;fontencoding&quot;</span> <span class="s">&quot;fontfamily&quot;</span>
<a name="cl-704"></a>   <span class="s">&quot;fontseries&quot;</span> <span class="s">&quot;fontshape&quot;</span> <span class="s">&quot;fontsize&quot;</span> <span class="s">&quot;fontsubfuzz&quot;</span> <span class="s">&quot;footnote&quot;</span> <span class="s">&quot;footnotemark&quot;</span>
<a name="cl-705"></a>   <span class="s">&quot;footnoterule&quot;</span> <span class="s">&quot;footnotetext&quot;</span> <span class="s">&quot;frac&quot;</span> <span class="s">&quot;frame&quot;</span> <span class="s">&quot;framebox&quot;</span> <span class="s">&quot;frenchspacing&quot;</span>
<a name="cl-706"></a>   <span class="s">&quot;frozen@everydisplay&quot;</span> <span class="s">&quot;frozen@everymath&quot;</span> <span class="s">&quot;fussy&quot;</span> <span class="s">&quot;g@addto@macro&quot;</span> <span class="s">&quot;gcd&quot;</span>
<a name="cl-707"></a>   <span class="s">&quot;gen@sfcnt&quot;</span> <span class="s">&quot;genb@sfcnt&quot;</span> <span class="s">&quot;genb@x&quot;</span> <span class="s">&quot;genb@y&quot;</span> <span class="s">&quot;get@cdp&quot;</span> <span class="s">&quot;get@external@font&quot;</span>
<a name="cl-708"></a>   <span class="s">&quot;getanddefine@fonts&quot;</span> <span class="s">&quot;glb@currsize&quot;</span> <span class="s">&quot;glb@settings&quot;</span> <span class="s">&quot;glossary&quot;</span> <span class="s">&quot;goodbreak&quot;</span>
<a name="cl-709"></a>   <span class="s">&quot;group@elt&quot;</span> <span class="s">&quot;group@list&quot;</span> <span class="s">&quot;hb@xt@&quot;</span> <span class="s">&quot;height&quot;</span> <span class="s">&quot;hexnumber@&quot;</span> <span class="s">&quot;hgl@&quot;</span> <span class="s">&quot;hglue&quot;</span>
<a name="cl-710"></a>   <span class="s">&quot;hidewidth&quot;</span> <span class="s">&quot;hline&quot;</span> <span class="s">&quot;hmode@bgroup&quot;</span> <span class="s">&quot;hmode@start@before@group&quot;</span> <span class="s">&quot;hom&quot;</span>
<a name="cl-711"></a>   <span class="s">&quot;hphantom&quot;</span> <span class="s">&quot;hrulefill&quot;</span> <span class="s">&quot;hspace&quot;</span> <span class="s">&quot;hss&quot;</span> <span class="s">&quot;ialign&quot;</span> <span class="s">&quot;if@filesw&quot;</span> <span class="s">&quot;if@ignore&quot;</span>
<a name="cl-712"></a>   <span class="s">&quot;if@minipage&quot;</span> <span class="s">&quot;if@newlist&quot;</span> <span class="s">&quot;if@no@font@opt&quot;</span> <span class="s">&quot;if@nobreak&quot;</span> <span class="s">&quot;if@noskipsec&quot;</span>
<a name="cl-713"></a>   <span class="s">&quot;if@partsw&quot;</span> <span class="s">&quot;if@tempswa&quot;</span> <span class="s">&quot;if@test&quot;</span> <span class="s">&quot;ifnot@nil&quot;</span> <span class="s">&quot;ignorespacesafterend&quot;</span>
<a name="cl-714"></a>   <span class="s">&quot;in@&quot;</span> <span class="s">&quot;in@@&quot;</span> <span class="s">&quot;include&quot;</span> <span class="s">&quot;includeonly&quot;</span> <span class="s">&quot;index&quot;</span> <span class="s">&quot;inf&quot;</span>
<a name="cl-715"></a>   <span class="s">&quot;init@restore@glb@settings&quot;</span> <span class="s">&quot;init@restore@version&quot;</span> <span class="s">&quot;input&quot;</span> <span class="s">&quot;input@path&quot;</span>
<a name="cl-716"></a>   <span class="s">&quot;install@mathalphabet&quot;</span> <span class="s">&quot;interfootnotelinepenalty&quot;</span> <span class="s">&quot;is@range&quot;</span> <span class="s">&quot;item&quot;</span>
<a name="cl-717"></a>   <span class="s">&quot;itemize&quot;</span> <span class="s">&quot;iterate&quot;</span> <span class="s">&quot;itshape&quot;</span> <span class="s">&quot;ker&quot;</span> <span class="s">&quot;kernel@ifnextchar&quot;</span> <span class="s">&quot;kill&quot;</span> <span class="s">&quot;l@ngrel@x&quot;</span>
<a name="cl-718"></a>   <span class="s">&quot;label&quot;</span> <span class="s">&quot;labelsep&quot;</span> <span class="s">&quot;labelwidth&quot;</span> <span class="s">&quot;last@fontshape&quot;</span> <span class="s">&quot;lbrack&quot;</span> <span class="s">&quot;lccode&quot;</span> <span class="s">&quot;ldots&quot;</span>
<a name="cl-719"></a>   <span class="s">&quot;leadsto&quot;</span> <span class="s">&quot;leavevmode&quot;</span> <span class="s">&quot;lefteqn&quot;</span> <span class="s">&quot;leftline&quot;</span> <span class="s">&quot;leftmark&quot;</span> <span class="s">&quot;lg&quot;</span> <span class="s">&quot;lhd&quot;</span> <span class="s">&quot;lim&quot;</span>
<a name="cl-720"></a>   <span class="s">&quot;liminf&quot;</span> <span class="s">&quot;limsup&quot;</span> <span class="s">&quot;line&quot;</span> <span class="s">&quot;linebreak&quot;</span> <span class="s">&quot;linespread&quot;</span> <span class="s">&quot;linethickness&quot;</span> <span class="s">&quot;list&quot;</span>
<a name="cl-721"></a>   <span class="s">&quot;listfiles&quot;</span> <span class="s">&quot;llap&quot;</span> <span class="s">&quot;ln&quot;</span> <span class="s">&quot;log&quot;</span> <span class="s">&quot;loggingall&quot;</span> <span class="s">&quot;loggingoutput&quot;</span> <span class="s">&quot;loop&quot;</span> <span class="s">&quot;lq&quot;</span>
<a name="cl-722"></a>   <span class="s">&quot;lrbox&quot;</span> <span class="s">&quot;ltx@sh@ft&quot;</span> <span class="s">&quot;m@th&quot;</span> <span class="s">&quot;magstep&quot;</span> <span class="s">&quot;magstephalf&quot;</span> <span class="s">&quot;makeatletter&quot;</span>
<a name="cl-723"></a>   <span class="s">&quot;makeatother&quot;</span> <span class="s">&quot;makebox&quot;</span> <span class="s">&quot;makeglossary&quot;</span> <span class="s">&quot;makeindex&quot;</span> <span class="s">&quot;makelabel&quot;</span> <span class="s">&quot;makeph@nt&quot;</span>
<a name="cl-724"></a>   <span class="s">&quot;makesm@sh&quot;</span> <span class="s">&quot;mandatory@arg&quot;</span> <span class="s">&quot;marginpar&quot;</span> <span class="s">&quot;markboth&quot;</span> <span class="s">&quot;markright&quot;</span> <span class="s">&quot;math&quot;</span>
<a name="cl-725"></a>   <span class="s">&quot;math@bgroup&quot;</span> <span class="s">&quot;math@egroup&quot;</span> <span class="s">&quot;math@fonts&quot;</span> <span class="s">&quot;math@version&quot;</span> <span class="s">&quot;mathalpha&quot;</span>
<a name="cl-726"></a>   <span class="s">&quot;mathchar@type&quot;</span> <span class="s">&quot;mathchardef&quot;</span> <span class="s">&quot;mathellipsis&quot;</span> <span class="s">&quot;mathgroup&quot;</span> <span class="s">&quot;mathhexbox&quot;</span>
<a name="cl-727"></a>   <span class="s">&quot;mathpalette&quot;</span> <span class="s">&quot;mathph@nt&quot;</span> <span class="s">&quot;mathsm@sh&quot;</span> <span class="s">&quot;mathstrut&quot;</span> <span class="s">&quot;mathversion&quot;</span> <span class="s">&quot;matrix&quot;</span>
<a name="cl-728"></a>   <span class="s">&quot;max&quot;</span> <span class="s">&quot;maxdepth&quot;</span> <span class="s">&quot;maybe@ic&quot;</span> <span class="s">&quot;maybe@ic@&quot;</span> <span class="s">&quot;mb@b&quot;</span> <span class="s">&quot;mb@l&quot;</span> <span class="s">&quot;mb@r&quot;</span> <span class="s">&quot;mb@t&quot;</span> <span class="s">&quot;mbox&quot;</span>
<a name="cl-729"></a>   <span class="s">&quot;mdseries&quot;</span> <span class="s">&quot;medbreak&quot;</span> <span class="s">&quot;medskip&quot;</span> <span class="s">&quot;mho&quot;</span> <span class="s">&quot;min&quot;</span> <span class="s">&quot;minipage&quot;</span> <span class="s">&quot;multicolumn&quot;</span>
<a name="cl-730"></a>   <span class="s">&quot;multiput&quot;</span> <span class="s">&quot;multispan&quot;</span> <span class="s">&quot;narrower&quot;</span> <span class="s">&quot;negthinspace&quot;</span> <span class="s">&quot;new@command&quot;</span>
<a name="cl-731"></a>   <span class="s">&quot;new@environment&quot;</span> <span class="s">&quot;new@fontshape&quot;</span> <span class="s">&quot;new@mathalphabet&quot;</span> <span class="s">&quot;new@mathgroup&quot;</span>
<a name="cl-732"></a>   <span class="s">&quot;new@mathversion&quot;</span> <span class="s">&quot;new@symbolfont&quot;</span> <span class="s">&quot;newbox&quot;</span> <span class="s">&quot;newcommand&quot;</span> <span class="s">&quot;newcount&quot;</span>
<a name="cl-733"></a>   <span class="s">&quot;newcounter&quot;</span> <span class="s">&quot;newdimen&quot;</span> <span class="s">&quot;newenvironment&quot;</span> <span class="s">&quot;newfam&quot;</span> <span class="s">&quot;newfont&quot;</span> <span class="s">&quot;newhelp&quot;</span>
<a name="cl-734"></a>   <span class="s">&quot;newif&quot;</span> <span class="s">&quot;newinsert&quot;</span> <span class="s">&quot;newlabel&quot;</span> <span class="s">&quot;newlanguage&quot;</span> <span class="s">&quot;newlength&quot;</span> <span class="s">&quot;newline&quot;</span>
<a name="cl-735"></a>   <span class="s">&quot;newmathalphabet&quot;</span> <span class="s">&quot;newmathalphabet@@&quot;</span> <span class="s">&quot;newmathalphabet@@@&quot;</span> <span class="s">&quot;newmuskip&quot;</span>
<a name="cl-736"></a>   <span class="s">&quot;newpage&quot;</span> <span class="s">&quot;newread&quot;</span> <span class="s">&quot;newsavebox&quot;</span> <span class="s">&quot;newskip&quot;</span> <span class="s">&quot;newtheorem&quot;</span> <span class="s">&quot;newtoks&quot;</span>
<a name="cl-737"></a>   <span class="s">&quot;newwrite&quot;</span> <span class="s">&quot;nfss@catcodes&quot;</span> <span class="s">&quot;nfss@text&quot;</span> <span class="s">&quot;no@alphabet@error&quot;</span> <span class="s">&quot;noaccents@&quot;</span>
<a name="cl-738"></a>   <span class="s">&quot;noboundary&quot;</span> <span class="s">&quot;nobreak&quot;</span> <span class="s">&quot;nobreakdashes&quot;</span> <span class="s">&quot;nobreakspace&quot;</span> <span class="s">&quot;nocite&quot;</span> <span class="s">&quot;nocorr&quot;</span>
<a name="cl-739"></a>   <span class="s">&quot;nocorrlist&quot;</span> <span class="s">&quot;noexpand&quot;</span> <span class="s">&quot;nofiles&quot;</span> <span class="s">&quot;nointerlineskip&quot;</span> <span class="s">&quot;nolinebreak&quot;</span>
<a name="cl-740"></a>   <span class="s">&quot;non@alpherr&quot;</span> <span class="s">&quot;nonfrenchspacing&quot;</span> <span class="s">&quot;nonumber&quot;</span> <span class="s">&quot;nopagebreak&quot;</span> <span class="s">&quot;normalbaselines&quot;</span>
<a name="cl-741"></a>   <span class="s">&quot;normalcolor&quot;</span> <span class="s">&quot;normalfont&quot;</span> <span class="s">&quot;normalmarginpar&quot;</span> <span class="s">&quot;normalsfcodes&quot;</span> <span class="s">&quot;normalsize&quot;</span>
<a name="cl-742"></a>   <span class="s">&quot;not@base&quot;</span> <span class="s">&quot;not@math@alphabet&quot;</span> <span class="s">&quot;null&quot;</span> <span class="s">&quot;numberline&quot;</span> <span class="s">&quot;o@lign&quot;</span> <span class="s">&quot;oalign&quot;</span>
<a name="cl-743"></a>   <span class="s">&quot;obeycr&quot;</span> <span class="s">&quot;obeylines&quot;</span> <span class="s">&quot;obeyspaces&quot;</span> <span class="s">&quot;offinterlineskip&quot;</span> <span class="s">&quot;oldstylenums&quot;</span>
<a name="cl-744"></a>   <span class="s">&quot;on@line&quot;</span> <span class="s">&quot;onecolumn&quot;</span> <span class="s">&quot;ooalign&quot;</span> <span class="s">&quot;openout&quot;</span> <span class="s">&quot;openup&quot;</span> <span class="s">&quot;optional@arg&quot;</span>
<a name="cl-745"></a>   <span class="s">&quot;outer@nobreak&quot;</span> <span class="s">&quot;oval&quot;</span> <span class="s">&quot;pagebreak&quot;</span> <span class="s">&quot;pagenumbering&quot;</span> <span class="s">&quot;pageref&quot;</span> <span class="s">&quot;pagestyle&quot;</span>
<a name="cl-746"></a>   <span class="s">&quot;par&quot;</span> <span class="s">&quot;paragraphmark&quot;</span> <span class="s">&quot;parbox&quot;</span> <span class="s">&quot;partopsep&quot;</span> <span class="s">&quot;ph@nt&quot;</span> <span class="s">&quot;phantom&quot;</span> <span class="s">&quot;pickup@font&quot;</span>
<a name="cl-747"></a>   <span class="s">&quot;pictur@&quot;</span> <span class="s">&quot;picture&quot;</span> <span class="s">&quot;pmatrix&quot;</span> <span class="s">&quot;pmod&quot;</span> <span class="s">&quot;poptabs&quot;</span> <span class="s">&quot;pounds&quot;</span> <span class="s">&quot;pr@@@s&quot;</span> <span class="s">&quot;pr@@@t&quot;</span>
<a name="cl-748"></a>   <span class="s">&quot;pr@m@s&quot;</span> <span class="s">&quot;preload@sizes&quot;</span> <span class="s">&quot;prim@s&quot;</span> <span class="s">&quot;process@table&quot;</span> <span class="s">&quot;protect&quot;</span> <span class="s">&quot;protected&quot;</span>
<a name="cl-749"></a>   <span class="s">&quot;protected@edef&quot;</span> <span class="s">&quot;protected@xdef&quot;</span> <span class="s">&quot;provide@command&quot;</span> <span class="s">&quot;providecommand&quot;</span>
<a name="cl-750"></a>   <span class="s">&quot;ps@empty&quot;</span> <span class="s">&quot;ps@plain&quot;</span> <span class="s">&quot;pushtabs&quot;</span> <span class="s">&quot;put&quot;</span> <span class="s">&quot;qbezier&quot;</span> <span class="s">&quot;qbeziermax&quot;</span> <span class="s">&quot;qquad&quot;</span>
<a name="cl-751"></a>   <span class="s">&quot;quad&quot;</span> <span class="s">&quot;r@@t&quot;</span> <span class="s">&quot;raggedbottom&quot;</span> <span class="s">&quot;raggedleft&quot;</span> <span class="s">&quot;raggedright&quot;</span> <span class="s">&quot;raisebox&quot;</span>
<a name="cl-752"></a>   <span class="s">&quot;rbrack&quot;</span> <span class="s">&quot;ref&quot;</span> <span class="s">&quot;refstepcounter&quot;</span> <span class="s">&quot;remove@angles&quot;</span> <span class="s">&quot;remove@star&quot;</span>
<a name="cl-753"></a>   <span class="s">&quot;remove@to@nnil&quot;</span> <span class="s">&quot;removelastskip&quot;</span> <span class="s">&quot;renew@command&quot;</span> <span class="s">&quot;renew@environment&quot;</span>
<a name="cl-754"></a>   <span class="s">&quot;renewcommand&quot;</span> <span class="s">&quot;renewenvironment&quot;</span> <span class="s">&quot;repeat&quot;</span> <span class="s">&quot;reserved@a&quot;</span> <span class="s">&quot;reserved@b&quot;</span>
<a name="cl-755"></a>   <span class="s">&quot;reserved@c&quot;</span> <span class="s">&quot;reserved@d&quot;</span> <span class="s">&quot;reserved@e&quot;</span> <span class="s">&quot;reserved@f&quot;</span> <span class="s">&quot;reset@font&quot;</span>
<a name="cl-756"></a>   <span class="s">&quot;restglb@settings&quot;</span> <span class="s">&quot;restore@mathversion&quot;</span> <span class="s">&quot;restore@protect&quot;</span> <span class="s">&quot;restorecr&quot;</span>
<a name="cl-757"></a>   <span class="s">&quot;reversemarginpar&quot;</span> <span class="s">&quot;rhd&quot;</span> <span class="s">&quot;rightline&quot;</span> <span class="s">&quot;rightmark&quot;</span> <span class="s">&quot;rlap&quot;</span> <span class="s">&quot;rmfamily&quot;</span> <span class="s">&quot;roman&quot;</span>
<a name="cl-758"></a>   <span class="s">&quot;root&quot;</span> <span class="s">&quot;rq&quot;</span> <span class="s">&quot;rule&quot;</span> <span class="s">&quot;samepage&quot;</span> <span class="s">&quot;savebox&quot;</span> <span class="s">&quot;sb&quot;</span> <span class="s">&quot;sbox&quot;</span> <span class="s">&quot;scan@@fontshape&quot;</span>
<a name="cl-759"></a>   <span class="s">&quot;scan@fontshape&quot;</span> <span class="s">&quot;scshape&quot;</span> <span class="s">&quot;sec&quot;</span> <span class="s">&quot;secdef&quot;</span> <span class="s">&quot;sectionmark&quot;</span> <span class="s">&quot;select@group&quot;</span>
<a name="cl-760"></a>   <span class="s">&quot;selectfont&quot;</span> <span class="s">&quot;set@@mathdelimiter&quot;</span> <span class="s">&quot;set@color&quot;</span> <span class="s">&quot;set@display@protect&quot;</span>
<a name="cl-761"></a>   <span class="s">&quot;set@fontsize&quot;</span> <span class="s">&quot;set@mathaccent&quot;</span> <span class="s">&quot;set@mathchar&quot;</span> <span class="s">&quot;set@mathdelimiter&quot;</span>
<a name="cl-762"></a>   <span class="s">&quot;set@mathsymbol&quot;</span> <span class="s">&quot;set@simple@size@args&quot;</span> <span class="s">&quot;set@size@funct@args&quot;</span>
<a name="cl-763"></a>   <span class="s">&quot;set@size@funct@args@&quot;</span> <span class="s">&quot;set@typeset@protect&quot;</span> <span class="s">&quot;setcounter&quot;</span> <span class="s">&quot;setlength&quot;</span>
<a name="cl-764"></a>   <span class="s">&quot;settodepth&quot;</span> <span class="s">&quot;settoheight&quot;</span> <span class="s">&quot;settowidth&quot;</span> <span class="s">&quot;sffamily&quot;</span> <span class="s">&quot;sh@ft&quot;</span> <span class="s">&quot;shortstack&quot;</span>
<a name="cl-765"></a>   <span class="s">&quot;showhyphens&quot;</span> <span class="s">&quot;showoutput&quot;</span> <span class="s">&quot;showoverfull&quot;</span> <span class="s">&quot;sin&quot;</span> <span class="s">&quot;sinh&quot;</span> <span class="s">&quot;size@update&quot;</span>
<a name="cl-766"></a>   <span class="s">&quot;sizefn@info&quot;</span> <span class="s">&quot;skip@&quot;</span> <span class="s">&quot;slash&quot;</span> <span class="s">&quot;sloppy&quot;</span> <span class="s">&quot;sloppypar&quot;</span> <span class="s">&quot;slshape&quot;</span> <span class="s">&quot;smallbreak&quot;</span>
<a name="cl-767"></a>   <span class="s">&quot;smallskip&quot;</span> <span class="s">&quot;smash&quot;</span> <span class="s">&quot;sp&quot;</span> <span class="s">&quot;sp@n&quot;</span> <span class="s">&quot;space&quot;</span> <span class="s">&quot;split@name&quot;</span> <span class="s">&quot;sqrt&quot;</span> <span class="s">&quot;sqsubset&quot;</span>
<a name="cl-768"></a>   <span class="s">&quot;sqsupset&quot;</span> <span class="s">&quot;ssf@size&quot;</span> <span class="s">&quot;stackrel&quot;</span> <span class="s">&quot;stepcounter&quot;</span> <span class="s">&quot;stop&quot;</span> <span class="s">&quot;stretch&quot;</span>
<a name="cl-769"></a>   <span class="s">&quot;strip@prefix&quot;</span> <span class="s">&quot;strip@pt&quot;</span> <span class="s">&quot;strut&quot;</span> <span class="s">&quot;sub@sfcnt&quot;</span> <span class="s">&quot;subf@sfcnt&quot;</span>
<a name="cl-770"></a>   <span class="s">&quot;subparagraphmark&quot;</span> <span class="s">&quot;subsectionmark&quot;</span> <span class="s">&quot;subst@correction&quot;</span> <span class="s">&quot;subst@fontshape&quot;</span>
<a name="cl-771"></a>   <span class="s">&quot;subsubsectionmark&quot;</span> <span class="s">&quot;sup&quot;</span> <span class="s">&quot;suppressfloats&quot;</span> <span class="s">&quot;sw@slant&quot;</span> <span class="s">&quot;symbol&quot;</span> <span class="s">&quot;t@st@ic&quot;</span>
<a name="cl-772"></a>   <span class="s">&quot;tabbing&quot;</span> <span class="s">&quot;tabular&quot;</span> <span class="s">&quot;tabularnewline&quot;</span> <span class="s">&quot;tan&quot;</span> <span class="s">&quot;tanh&quot;</span> <span class="s">&quot;text@command&quot;</span>
<a name="cl-773"></a>   <span class="s">&quot;textellipsis&quot;</span> <span class="s">&quot;textfont@name&quot;</span> <span class="s">&quot;textfraction&quot;</span> <span class="s">&quot;textsuperscript&quot;</span> <span class="s">&quot;tf@size&quot;</span>
<a name="cl-774"></a>   <span class="s">&quot;thanks&quot;</span> <span class="s">&quot;thefootnote&quot;</span> <span class="s">&quot;thempfn&quot;</span> <span class="s">&quot;thempfootnote&quot;</span> <span class="s">&quot;thepage&quot;</span> <span class="s">&quot;thicklines&quot;</span>
<a name="cl-775"></a>   <span class="s">&quot;thinlines&quot;</span> <span class="s">&quot;thinspace&quot;</span> <span class="s">&quot;thispagestyle&quot;</span> <span class="s">&quot;title&quot;</span> <span class="s">&quot;today&quot;</span> <span class="s">&quot;topfigrule&quot;</span>
<a name="cl-776"></a>   <span class="s">&quot;topfraction&quot;</span> <span class="s">&quot;totalheight&quot;</span> <span class="s">&quot;tracingall&quot;</span> <span class="s">&quot;tracingfonts&quot;</span> <span class="s">&quot;trivlist&quot;</span>
<a name="cl-777"></a>   <span class="s">&quot;try@load@fontshape&quot;</span> <span class="s">&quot;try@simple@size&quot;</span> <span class="s">&quot;try@simples&quot;</span> <span class="s">&quot;try@size@range&quot;</span>
<a name="cl-778"></a>   <span class="s">&quot;try@size@substitution&quot;</span> <span class="s">&quot;tryif@simple&quot;</span> <span class="s">&quot;ttfamily&quot;</span> <span class="s">&quot;two@digits&quot;</span> <span class="s">&quot;twocolumn&quot;</span>
<a name="cl-779"></a>   <span class="s">&quot;typein&quot;</span> <span class="s">&quot;typeout&quot;</span> <span class="s">&quot;uccode&quot;</span> <span class="s">&quot;unboldmath&quot;</span> <span class="s">&quot;underbar&quot;</span> <span class="s">&quot;underline&quot;</span> <span class="s">&quot;unhbox&quot;</span>
<a name="cl-780"></a>   <span class="s">&quot;unlhd&quot;</span> <span class="s">&quot;unrestored@protected@xdef&quot;</span> <span class="s">&quot;unrhd&quot;</span> <span class="s">&quot;upshape&quot;</span> <span class="s">&quot;use@mathgroup&quot;</span>
<a name="cl-781"></a>   <span class="s">&quot;usebox&quot;</span> <span class="s">&quot;usecounter&quot;</span> <span class="s">&quot;usefont&quot;</span> <span class="s">&quot;usepackage&quot;</span> <span class="s">&quot;value&quot;</span> <span class="s">&quot;vector&quot;</span> <span class="s">&quot;verb&quot;</span>
<a name="cl-782"></a>   <span class="s">&quot;verb@balance@group&quot;</span> <span class="s">&quot;verb@egroup&quot;</span> <span class="s">&quot;verb@eol@error&quot;</span> <span class="s">&quot;verbatim&quot;</span>
<a name="cl-783"></a>   <span class="s">&quot;verbatim@font&quot;</span> <span class="s">&quot;verbatim@nolig@list&quot;</span> <span class="s">&quot;version@elt&quot;</span> <span class="s">&quot;version@list&quot;</span> <span class="s">&quot;vgl@&quot;</span>
<a name="cl-784"></a>   <span class="s">&quot;vglue&quot;</span> <span class="s">&quot;vline&quot;</span> <span class="s">&quot;vphantom&quot;</span> <span class="s">&quot;vspace&quot;</span> <span class="s">&quot;warn@rel@i&quot;</span> <span class="s">&quot;width&quot;</span> <span class="s">&quot;wlog&quot;</span> <span class="s">&quot;write&quot;</span>
<a name="cl-785"></a>   <span class="s">&quot;wrong@fontshape&quot;</span> <span class="s">&quot;x@protect&quot;</span> <span class="s">&quot;zap@space&quot;</span>
<a name="cl-786"></a>   <span class="p">))</span>
<a name="cl-787"></a>
<a name="cl-788"></a><span class="p">(</span><span class="nb">provide</span> <span class="ss">&#39;auto-complete-latex</span><span class="p">)</span>
<a name="cl-789"></a>
<a name="cl-790"></a><span class="c1">;;; auto-complete-latex.el ends here</span>
</pre></div>
</td></tr></table>
                </div>
              
            
          
        
      </div>
    </div>




  
  
    <script id="branch-dialog-template" type="text/html">
  

<div class="tabbed-filter-widget branch-dialog">
  <div class="tabbed-filter">
    <input placeholder="ブランチで絞り込み" class="filter-box" autosave="branch-dropdown-42579" type="text">
    [[^ignoreTags]]
      <div class="aui-tabs horizontal-tabs aui-tabs-disabled filter-tabs">
        <ul class="tabs-menu">
          <li class="menu-item active-tab"><a href="#branches">ブランチ</a></li>
          <li class="menu-item"><a href="#tags">タグ</a></li>
        </ul>
      </div>
    [[/ignoreTags]]
  </div>
  
    <div class="tab-pane active-pane" id="branches" data-filter-placeholder="ブランチで絞り込み">
      <ol class="filter-list">
        <li class="empty-msg">適合するブランチはありません</li>
        [[#branches]]
          
            [[#hasMultipleHeads]]
              [[#heads]]
                <li class="comprev filter-item">
                  <a class="pjax-trigger" href="/tequilasunset/auto-complete-latex/src/[[changeset]]/auto-complete-latex.el?at=[[safeName]]"
                     title="[[name]]">
                    [[name]] ([[shortChangeset]])
                  </a>
                </li>
              [[/heads]]
            [[/hasMultipleHeads]]
            [[^hasMultipleHeads]]
              <li class="comprev filter-item">
                <a class="pjax-trigger" href="/tequilasunset/auto-complete-latex/src/[[changeset]]/auto-complete-latex.el?at=[[safeName]]" title="[[name]]">
                  [[name]]
                </a>
              </li>
            [[/hasMultipleHeads]]
          
        [[/branches]]
      </ol>
    </div>
    <div class="tab-pane" id="tags" data-filter-placeholder="タグで絞り込み">
      <ol class="filter-list">
        <li class="empty-msg">適合するタグはありません</li>
        [[#tags]]
          <li class="comprev filter-item">
            <a class="pjax-trigger" href="/tequilasunset/auto-complete-latex/src/[[changeset]]/auto-complete-latex.el?at=[[safeName]]" title="[[name]]">
              [[name]]
            </a>
          </li>
        [[/tags]]
      </ol>
    </div>
  
</div>

</script>
  



  </div>

        

<form id="file-search-form" action="#"
  
  data-revision="6c534e7733747ffb5deb9138f874216d4a6c5daa"
  data-branch="version%200.1.3">
  <input type="text" id="file-search-query" class="loading">
  <div id="filtered-files"></div>
  <div class="tip"><em>ヒント:</em> ディレクトリパスを含めて <strong>/media app.js</strong> のように指定すると、public<strong>/media/app.js</strong> にあるファイルを探し出せます。</div>
  <div class="tip"><em>ヒント:</em> キャメルケースを使って <strong>ProjME</strong> のように指定すると、 <strong>ProjectModifiedE</strong>vent.java のようなファイルを探し出せます。</div>
  <div class="tip"><em>ヒント:</em> 拡張子を入れて <strong>/repo .js</strong> のように指定すると、 <strong>/repo</strong> ディレクトリにある <strong>.js</strong> ファイルを全て検索出来ます</div>
  <div class="tip"><em>ヒント:</em> スペースで間を空けて <strong>/ssh pom.xml</strong> のように指定すると、 src<strong>/ssh/pom.xml</strong> といったファイルを検索できます。</div>
  <div class="tip"><em>ヒント:</em> ↑ と ↓ の矢印キーで移動し、<strong>return</strong> でファイルを見れます。</div>
  <div class="tip mod-osx"><em>ヒント:</em> ファイル一覧はショートカットキーですばやく操作できます。 <strong>Ctrl+j</strong> <em>(次のファイル)</em>、 <strong>Ctrl+k</strong> <em>(前のファイル)</em> 、ファイルの内容を見るには <strong>Ctrl+o</strong>.</div>
  <div class="tip mod-win"><em>ヒント:</em> ファイルを見るときに以下のショートカットが使えます。 <strong>Alt+j</strong> <em>(次のファイルへ)</em> 、
 <strong>Alt+k</strong> <em>(前のファイルへ)</em> 、<strong>Alt+o</strong><em>ファイルを開く</em>。</div>
  <script id="filtered-files-template" type="text/html">
  

<table class="aui aui-table-interactive bb-list">
  <thead>
    <tr class="assistive">
      <th class="name">ファイル名</th>
    </tr>
  </thead>
  <tbody>
    [[#files]]
    <tr class="iterable-item">
      <td class="name [[#isDirectory]]directory[[/isDirectory]]">
        <span class="aui-icon aui-icon-small[[#isDirectory]] aui-iconfont-devtools-folder-closed[[/isDirectory]][[^isDirectory]] aui-iconfont-devtools-file[[/isDirectory]]"></span>
        <a href="/tequilasunset/auto-complete-latex/src/[[node]]/[[name]][[#branch]][[#isDirectory]]/[[/isDirectory]]?at=[[branch]][[/branch]]"
           title="[[name]]" class="execute" tabindex="-1">
          [[&highlightedName]]
        </a>
      </td>
    </tr>
    [[/files]]
  </tbody>
</table>

</script>
</form>

        
          <script id="image-upload-template" type="text/html">
  

<form id="upload-image" method="POST"
      action="/xhr/tequilasunset/auto-complete-latex/image-upload/">
  <input type='hidden' name='csrfmiddlewaretoken' value='CiMSvF5H64Ln4hZ3OsgzPY3qefr0gkAj' />

  <div class="drop-target">
    <p class="centered">Drag image here</p>
  </div>

  
  <div>
    <button class="aui-button click-target">Select an image</button>
    <input name="file" type="file" class="hidden file-target"
           accept="image/jpeg, image/gif, image/png" />
    <input type="submit" class="hidden">
  </div>
</form>


</script>
        
      </div>
    </div>
  </div>

    </div>
  </div>

  <footer id="footer" role="contentinfo">
    <section class="footer-body">
      
  <ul>
    <li>
      <a class="support-ga" target="_blank"
           data-support-gaq-page="Blog"
           href="http://blog.bitbucket.org">ブログ</a>
    </li>
    <li>
      <a class="support-ga" target="_blank"
           data-support-gaq-page="Home"
           href="/support">サポート</a>
    </li>
    <li>
      <a class="support-ga"
           data-support-gaq-page="PlansPricing"
           href="/plans">プランと料金</a>
    </li>
    <li>
      <a class="support-ga" target="_blank"
           data-support-gaq-page="DocumentationHome"
           href="//confluence.atlassian.com/display/BITBUCKET">ドキュメント</a>
    </li>
    <li>
      <a class="support-ga" target="_blank"
           data-support-gaq-page="DocumentationAPI"
           href="//confluence.atlassian.com/x/IYBGDQ">API</a>
    </li>
    <li>
      <a class="support-ga" target="_blank"
           data-support-gaq-page="SiteStatus"
           href="http://status.bitbucket.org/">サーバーの状態</a>
    </li>
    <li>
      <a class="support-ga" id="meta-info"
           data-support-gaq-page="MetaInfo"
           href="#">バージョン情報</a>
    </li>
    <li>
      <a class="support-ga" target="_blank"
           data-support-gaq-page="EndUserAgreement"
           href="//www.atlassian.com/end-user-agreement?utm_source=bitbucket&amp;utm_medium=link&amp;utm_campaign=footer">サービス利用規約</a>
    </li>
    <li>
      <a class="support-ga" target="_blank"
           data-support-gaq-page="PrivacyPolicy"
           href="//www.atlassian.com/company/privacy?utm_source=bitbucket&amp;utm_medium=link&amp;utm_campaign=footer">プライバシー ポリシー</a>
    </li>
  </ul>
  <div id="meta-info-content" style="display: none;">
    <ul>
      
        
          <li>日本語</li>
        
      
      <li>
        <a class="support-ga" target="_blank"
           data-support-gaq-page="GitDocumentation"
           href="http://git-scm.com/">Git 1.8.5.2</a>
      </li>
      <li>
        <a class="support-ga" target="_blank"
           data-support-gaq-page="HgDocumentation"
           href="http://mercurial.selenic.com/">Mercurial 2.9</a>
      </li>
      <li>
        <a class="support-ga" target="_blank"
           data-support-gaq-page="DjangoDocumentation"
           href="https://www.djangoproject.com/">Django 1.6.3</a>
      </li>
      <li>
        <a class="support-ga" target="_blank"
           data-support-gaq-page="PythonDocumentation"
           href="http://www.python.org/">Python 2.7.3</a>
      </li>
      <li>
        <a class="support-ga" target="_blank"
           data-support-gaq-page="DeployedVersion"
           href="#">59fe3f06011b / 6c283f25a901 @ app10</a>
      </li>
    </ul>
  </div>
  <ul class="atlassian-links">
    <li>
      <a id="atlassian-jira-link" target="_blank" title="Track everything – bugs, tasks, deadlines, code – and pull reports to stay informed."
         href="http://www.atlassian.com/software/jira?utm_source=bitbucket&amp;utm_medium=link&amp;utm_campaign=bitbucket_footer">JIRA</a>
    </li>
    <li>
      <a id="atlassian-confluence-link" target="_blank" title="チームのためにコンテンツ作成や協力、知識の共有。"
         href="http://www.atlassian.com/software/confluence/overview/team-collaboration-software?utm_source=bitbucket&amp;utm_medium=link&amp;utm_campaign=bitbucket_footer">Confluence</a>
    </li>
    <li>
      <a id="atlassian-bamboo-link" target="_blank" title="継続的な調整や展開、リリース管理。"
         href="http://www.atlassian.com/software/bamboo/overview?utm_source=bitbucket&amp;utm_medium=link&amp;utm_campaign=bitbucket_footer">Bamboo</a>
    </li>
    <li>
      <a id="atlassian-stash-link" target="_blank" title="ファイアーウォールとエンタープレイズ対応の背後のGitのリポジトリ管理。"
         href="http://www.atlassian.com/software/stash?utm_source=bitbucket&amp;utm_medium=link&amp;utm_campaign=bitbucket_footer">Stash</a>
    </li>
    <li>
      <a id="atlassian-sourcetree-link" target="_blank" title="Mac および Windows 用の、Git および Mercurial に対応した無料のデスクトップ クライアントです。"
         href="http://www.sourcetreeapp.com/?utm_source=bitbucket&amp;utm_medium=link&amp;utm_campaign=bitbucket_footer">SourceTree</a>
    </li>
    <li>
      <a id="atlassian-hipchat-link" target="_blank" title="Group chat and IM built for teams."
         href="http://www.hipchat.com/?utm_source=bitbucket&amp;utm_medium=link&amp;utm_campaign=bitbucket_footer">HipChat</a>
    </li>
  </ul>
  <div id="footer-logo">
    <a target="_blank" title="Bitbucket は、サンフランシスコにある Atlassian によって開発されました。"
       href="http://www.atlassian.com?utm_source=bitbucket&amp;utm_medium=logo&amp;utm_campaign=bitbucket_footer">Atlassian</a>
  </div>
  <script id="share-form-template" type="text/html">
  

<div class="error aui-message hidden">
  <span class="aui-icon icon-error"></span>
  <div class="message"></div>
</div>
<table class="widget bb-list aui">
  <thead>
  <tr class="assistive">
    <th class="user">ユーザー</th>
    <th class="role">役割</th>
    <th class="actions">アクション</th>
  </tr>
  </thead>
  <tbody>
  <tr class="form">
    <td colspan="3">
      <form>
        <input type="text" class="user-or-email text user-input"
               placeholder="ユーザー名またはメールアドレス"
               [[#disabled]]disabled[[/disabled]]>
        <button type="submit" class="aui-button aui-style" disabled>追加</button>
      </form>
    </td>
  </tr>
  </tbody>
</table>

</script>
  <script id="share-detail-template" type="text/html">
  

[[#username]]
<td class="user
           [[#hasCustomGroups]]custom-groups[[/hasCustomGroups]]"
    [[#error]]data-error="[[error]]"[[/error]]>
  <div title="[[displayName]]">
    <a href="/[[username]]" class="user">
      <img class="avatar avatar16" src="[[avatar]]" />
      <span>[[displayName]]</span>
    </a>
  </div>
</td>
[[/username]]
[[^username]]
<td class="email
           [[#hasCustomGroups]]custom-groups[[/hasCustomGroups]]"
    [[#error]]data-error="[[error]]"[[/error]]>
  <div title="[[email]]">
    <span class="aui-icon aui-icon-small aui-iconfont-email"></span>
    [[email]]
  </div>
</td>
[[/username]]
<td class="role
           [[#hasCustomGroups]]custom-groups[[/hasCustomGroups]]">
  <div>
    [[#group]]
      [[#hasCustomGroups]]
        <select class="group [[#noGroupChoices]]hidden[[/noGroupChoices]]">
          [[#groups]]
            <option value="[[slug]]"
                    [[#isSelected]]selected[[/isSelected]]>
              [[name]]
            </option>
          [[/groups]]
        </select>
      [[/hasCustomGroups]]
      [[^hasCustomGroups]]
      <label>
        <input type="checkbox" class="admin"
               [[#isAdmin]]checked[[/isAdmin]]>
        管理者
      </label>
      [[/hasCustomGroups]]
    [[/group]]
    [[^group]]
      <ul>
        <li class="permission aui-lozenge aui-lozenge-complete
                   [[^read]]aui-lozenge-subtle[[/read]]"
            data-permission="read">
          読み出し
        </li>
        <li class="permission aui-lozenge aui-lozenge-complete
                   [[^write]]aui-lozenge-subtle[[/write]]"
            data-permission="write">
          書き込み
        </li>
        <li class="permission aui-lozenge aui-lozenge-complete
                   [[^admin]]aui-lozenge-subtle[[/admin]]"
            data-permission="admin">
          管理者
        </li>
      </ul>
    [[/group]]
  </div>
</td>
<td class="actions
           [[#hasCustomGroups]]custom-groups[[/hasCustomGroups]]">
  <div>
    <a href="#" class="delete">
      <span class="aui-icon aui-icon-small aui-iconfont-remove">削除</span>
    </a>
  </div>
</td>

</script>
  <script id="share-team-template" type="text/html">
  

<div class="clearfix">
  <span class="team-avatar-container">
    <img src="[[avatar]]" alt="[[display_name]]" title="[[display_name]]" class="avatar avatar32" />
  </span>
  <span class="team-name-container">
    [[display_name]]
  </span>
</div>
<p class="helptext">
  
    Existing users are granted access to this team immediately.
    New users will be sent an invitation.
  
</p>
<div class="share-form"></div>

</script>

    </section>
  </footer>
</div>

<script src="https://d3oaxc4q5k2d6q.cloudfront.net/m/6c283f25a901/jsi18n/ja/djangojs.js"></script>

  
  <script id="require-js"
          src="https://d3oaxc4q5k2d6q.cloudfront.net/m/6c283f25a901/amd/build/main.js"
          data-main="https://d3oaxc4q5k2d6q.cloudfront.net/m/6c283f25a901/amd/build/main"
          data-page-module="repo/index"></script>




<script>
  (function () {
    var ga = document.createElement('script');
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    ga.setAttribute('async', 'true');
    document.documentElement.firstChild.appendChild(ga);
  }());
</script>


  

<script id="source-changeset" type="text/html">
  

<a href="/tequilasunset/auto-complete-latex/src/[[raw_node]]/[[path]]?at=version%200.1.3"
   class="[[#selected]]highlight[[/selected]]"
   data-hash="[[node]]">
  [[#author.username]]
    <img class="avatar avatar16" src="[[author.avatar]]"/>
    <span class="author" title="[[raw_author]]">[[author.display_name]]</span>
  [[/author.username]]
  [[^author.username]]
    <img class="avatar avatar16" src="https://d3oaxc4q5k2d6q.cloudfront.net/m/6c283f25a901/img/default_avatar/16/user_blue.png"/>
    <span class="author unmapped" title="[[raw_author]]">[[author]]</span>
  [[/author.username]]
  <time datetime="[[utctimestamp]]" data-title="true">[[utctimestamp]]</time>
  <span class="message">[[message]]</span>
</a>

</script>
<script id="embed-template" type="text/html">
  

<form class="aui embed">
  <label for="embed-code">このソースコードを他のページに埋め込む:</label>
  <input type="text" readonly="true" value="&lt;script src=&quot;[[url]]&quot;&gt;&lt;/script&gt;" id="embed-code">
</form>

</script>
<script id="edit-form-template" type="text/html">
  


<form class="edit-form aui"
      data-repository="[[owner]]/[[slug]]"
      data-destination-repository="[[destinationOwner]]/[[destinationSlug]]"
      data-local-id="[[localID]]"
      data-is-writer="[[#isWriter]]true[[/isWriter]][[^isWriter]]false[[/isWriter]]"
      data-has-push-access="[[#hasPushAccess]]true[[/hasPushAccess]][[^hasPushAccess]]false[[/hasPushAccess]]"
      data-is-pull-request="[[#isPullRequest]]true[[/isPullRequest]][[^isPullRequest]]false[[/isPullRequest]]"
      data-hash="[[hash]]"
      data-branch="[[branch]]"
      data-path="[[path]]"
      data-is-create="[[isCreate]]"
      data-preview-url="/xhr/[[owner]]/[[slug]]/preview/[[hash]]/[[encodedPath]]"
      data-preview-error="プレビューの生成中に問題が起きました。"
      data-unsaved-changes-error="行った変更が失われます。ページを離れますか？">
  <div class="toolbar clearfix">
    <div class="primary">
      <h2>
        [[#isCreate]]
          
            Creating <span class="edit-path">[[path]]</span> on branch: <strong>[[branch]]</strong>
          
        [[/isCreate]]
        [[^isCreate]]
          
            Editing <span class="edit-path">[[path]]</span> on branch: <strong>[[branch]]</strong>
          
        [[/isCreate]]
      </h2>
    </div>
    <div class="secondary">
      <div class="hunk-nav aui-buttons">
        <button class="prev-hunk-button aui-button aui-button aui-style"
              disabled="disabled" aria-disabled="true" title="previous change">&#x25B2;</button>
        <button class="next-hunk-button aui-button aui-button aui-style"
              disabled="disabled" aria-disabled="true" title="next change">&#x25BC;</button>
      </div>
    </div>
  </div>
  <div class="file-editor">
    <textarea id="id_source">[[content]]</textarea>
  </div>
  <div class="preview-pane"></div>
  <div class="toolbar footer-toolbar clearfix">
    <div class="primary">
      <div id="syntax-mode" class="field">
        <label for="id_syntax-mode">言語モード:</label>
        <select id="id_syntax-mode">
          [[#syntaxes]]
            <option value="[[#mime]][[mime]][[/mime]][[^mime]][[mode]][[/mime]]">[[label]]</option>
          [[/syntaxes]]
        </select>
      </div>
      <div id="indent-mode" class="field">
        <label for="id_indent-mode">インデントモード:</label>
        <select id="id_indent-mode">
          <option value="tabs">タブ</option>
          <option value="spaces">スペース</option>
        </select>
      </div>
      <div id="indent-size" class="field">
        <label for="id_indent-size">インデント幅:</label>
        <select id="id_indent-size">
          <option value="2">2</option>
          <option value="4">4</option>
          <option value="8">8</option>
        </select>
      </div>
    </div>
    <div class="secondary">
      [[^isCreate]]
        <button class="preview-button aui-button aui-style"
                disabled="disabled" aria-disabled="true"
                data-preview-label="差分を見る"
                data-edit-label="ファイルを編集">差分を見る</button>
      [[/isCreate]]
      <button class="save-button aui-button aui-button-primary aui-style"
              disabled="disabled" aria-disabled="true">コミット</button>
      [[^isCreate]]
        <a class="cancel-link" href="#">キャンセル</a>
      [[/isCreate]]
    </div>
  </div>
</form>

</script>
<script id="commit-form-template" type="text/html">
  

<form class="aui commit-form"
      data-title="変更をコミット"
      [[#isDelete]]
        data-default-message="[[filename]] deleted online with Bitbucket"
      [[/isDelete]]
      [[#isCreate]]
        data-default-message="[[filename]] created online with Bitbucket"
      [[/isCreate]]
      [[^isDelete]]
        [[^isCreate]]
          data-default-message="[[filename]] edited online with Bitbucket"
        [[/isCreate]]
      [[/isDelete]]
      data-fork-error="リポジトリのフォーク作成中に問題が起きました。"
      data-commit-error="変更のコミット中に問題が起きました。"
      data-pull-request-error="プルリクエストの作成中に問題が起きました。"
      data-update-error="プルリクエストの更新中に問題が起きました。"
      data-branch-conflict-error="その名前をもつブランチは既に存在します。"
      data-forking-message="リポジトリをフォーク"
      data-committing-message="変更をコミット中"
      data-merging-message="ブランチを作成して変更をマージ中"
      data-creating-pr-message="プルリクエストを作成中"
      data-updating-pr-message="プルリクエストを更新中"
      data-cta-label="コミット"
      data-cancel-label="キャンセル">
  [[#isDelete]]
    <div class="aui-message info">
      <span class="aui-icon icon-info"></span>
      <span class="message">
        
          Committing this change will delete [[filename]] from your repository.
        
      </span>
    </div>
  [[/isDelete]]
  <div class="aui-message error hidden">
    <span class="aui-icon icon-error"></span>
    <span class="message"></span>
  </div>
  [[^isWriter]]
    <div class="aui-message info">
      <span class="aui-icon icon-info"></span>
      <p class="title">
        
          このリポジトリへの書き込み権限がありません。
        
      </p>
      <span class="message">
        
          この変更をあなたのフォークとして保存して、プルリクエストをこのリポジトリに送信します。
        
      </span>
    </div>
  [[/isWriter]]
  [[#isRename]]
    <div class="field-group">
      <label for="id_path">New path</label>
      <input type="text" id="id_path" class="text" value="[[path]]"/>
    </div>
  [[/isRename]]
  <div class="field-group">
    <label for="id_message">コミットメッセージ</label>
    <textarea id="id_message" class="long-field textarea"></textarea>
  </div>
  [[^isPullRequest]]
    [[#isWriter]]
      <fieldset class="group">
        <div class="checkbox">
          [[#hasPushAccess]]
            <input id="id_create-pullrequest" class="checkbox" type="checkbox">
            <label for="id_create-pullrequest">この変更のプルリクエストを作成</label>
          [[/hasPushAccess]]
          [[^hasPushAccess]]
            <input id="id_create-pullrequest" class="checkbox" type="checkbox" checked="checked" aria-disabled="true" disabled="true">
            <label for="id_create-pullrequest" title="ブランチ制限により、このブランチの更新が許可されていません。">この変更のプルリクエストを作成</label>
          [[/hasPushAccess]]

        </div>
      </fieldset>
      <div id="pr-fields">
        <div id="branch-name-group" class="field-group">
          <label for="id_branch-name">ブランチ名</label>
          <input type="text" id="id_branch-name" class="text long-field">
        </div>
        <div id="reviewers-group" class="field-group"
              data-api-url="/tequilasunset/auto-complete-latex/pull-request/xhr/reviewer/tequilasunset/auto-complete-latex/:reviewer_name">
          <label for="participants">レビューアー</label>
          <select id="participants" class="long-field" name="reviewers" multiple></select>
          <div class="error"></div>
          
        </div>
      </div>
    [[/isWriter]]
  [[/isPullRequest]]
  <button type="submit" id="id_submit">コミット</button>
</form>

</script>
<script id="merge-message-template" type="text/html">
  コミット [[hash]] をブランチ [[branch]] にマージしました

[[message]]

</script>
<script id="commit-merge-error-template" type="text/html">
  



  変更のマージ中に問題が起きました。変更は <strong>[[branch]]</strong> ブランチ に保存しました。
  <a href="/[[owner]]/[[slug]]/full-commit/[[hash]]/[[path]]?at=[[encodedBranch]]">ブランチを確認</a> するか、
  <a href="#" class="create-pull-request-link">プルリクエストを作成</a>してください。


</script>



<div data-modules="components/mentions/index">
  <script id="mention-result" type="text/html">
  
<img class="avatar avatar24" src="[[avatar_url]]">
[[#display_name]]
  <span class="display-name">[[&display_name]]</span> <small class="username">[[&username]]</small>
[[/display_name]]
[[^display_name]]
  <span class="username">[[&username]]</span>
[[/display_name]]
[[#is_teammate]][[^is_team]]
  <span class="aui-lozenge aui-lozenge-complete aui-lozenge-subtle">チームメイト</span>
[[/is_team]][[/is_teammate]]

</script>
  <script id="mention-call-to-action" type="text/html">
  
[[^query]]
<li class="bb-typeahead-item">文字を入力してユーザーを検索</li>
[[/query]]
[[#query]]
<li class="bb-typeahead-item">文字を入力してユーザーを検索</li>
[[/query]]

</script>
  <script id="mention-no-results" type="text/html">
  
[[^searching]]
<li class="bb-typeahead-item">一致するユーザ名はありません <em>[[query]]</em>.</li>
[[/searching]]
[[#searching]]
<li class="bb-typeahead-item bb-typeahead-searching">検索 <em>[[query]]</em>.</li>
[[/searching]]

</script>
  
</div>


  

<!--[if lt IE 9]><script src="https://d3oaxc4q5k2d6q.cloudfront.net/m/6c283f25a901/lib/aui/js/aui-ie.js"></script><![endif]-->
<script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"beacon-4.newrelic.com","queueTime":0,"licenseKey":"a2cef8c3d3","agent":"js-agent.newrelic.com/nr-400.min.js","transactionName":"Z11RZxdWW0cEVkYLDV4XdUYLVEFdClsdAAtEWkZQDlJBGgRFQhFMQl1DXFcZQ10AQkFYBFlUVlEXWEJHAA==","userAttributes":"SxpaQDpWQEANUFwWC1NZR1YBFQ9SBFlBB04SUUBsBEdcFl9TUw4RVRQRRhZSR2sLVF8HQAoacl0KWUxZCkBBQB8=","applicationID":"1841284","errorBeacon":"jserror.newrelic.com","applicationTime":425}</script></body>
</html>
