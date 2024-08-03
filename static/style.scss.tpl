{# /*============================================================================
style.scss.tpl

    -This file contains all the theme non critical styles wich will be loaded asynchronously
    -Rest of styling can be found in:
        -static/custom.scss.tpl --> For color and font styles related to config/settings.txt
        -snipplets/css/critical-css.tpl --> For critical CSS rendered inline before the rest of the site
        -static/checkout.scss.tpl --> For color and font styles related to config/settings.txt applied on the checkout

==============================================================================*/ #}

{# /*============================================================================
  Table of Contents

  #Components
    // Mixins
    // Animations
    // Wrappers
    // SVG Icons
    // Buttons
    // Chips
    // Badges
    // Modals
    // Dividers
    // Forms
    // Alerts
    // Tabs
    // Panels
    // Thumbs swiper
    // User content
    // Tables
    // Images
    // Banners
    // Welcome
    // Social Widgets
    // Video
    // Captcha
  #Header and nav
    // Nav desktop
    // Nav mobile
    // Search
  #Product grid
    // Filters
    // Grid item
  #Product detail
    // Image
    // Form and info
    // Shipping calculator
  #Footer
  #Construction page
  #Cart page
    // Cart page
    // Ajax cart
    // Totals 
  #Media queries
    // Min width 770px
        //// Components
    // Max width 979px
        //// Product detail
    // Max width 767px
        //// Components
        //// Header and nav
        //// Construction page
        //// Product detail
        //// Cart page
        //// Footer
  #Critical path utilities

==============================================================================*/ #}


{#/*============================================================================
  #External CSS libraries and Reset
==============================================================================*/#}

{# /* // Not critical part of Bootstrap v2.3.1 including only Buttons, Navs, Pagination, Labels and Badges, and Alerts */ #}
pre,pre code{white-space:pre-wrap}input[type=checkbox][disabled],input[type=checkbox][readonly],input[type=radio][disabled],input[type=radio][readonly],pre code{background-color:transparent}.btn-block,.progress .bar{-webkit-box-sizing:border-box;-moz-box-sizing:border-box}@media print{blockquote,img,pre,tr{page-break-inside:avoid}*{color:#000!important;text-shadow:none!important;background:0 0!important;box-shadow:none!important}a,a:visited{text-decoration:underline}a[href]:after{content:" (" attr(href) ")"}abbr[title]:after{content:" (" attr(title) ")"}.ir a:after,a[href^="#"]:after,a[href^="javascript:"]:after{content:""}blockquote,pre{border:1px solid #999}thead{display:table-header-group}img{max-width:100%!important}@page{margin:.5cm}h2,h3,p{orphans:3;widows:3}h2,h3{page-break-after:avoid}}blockquote{padding:0 0 0 15px;margin:0 0 20px;border-left:5px solid #eee}blockquote p{font-size:17.5px;font-weight:300;line-height:1.25}code,pre{padding:0 3px 2px;font-family:Monaco,Menlo,Consolas,"Courier New",monospace;font-size:12px;color:#333;-webkit-border-radius:3px;-moz-border-radius:3px;border-radius:3px}code{padding:2px 4px;color:#d14;white-space:nowrap;background-color:#f7f7f9;border:1px solid #e1e1e8}pre{padding:9.5px;margin:0 0 10px;font-size:13px;word-break:break-all;word-wrap:break-word;background-color:#f5f5f5;border:1px solid #ccc;border:1px solid rgba(0,0,0,.15);-webkit-border-radius:4px;-moz-border-radius:4px;border-radius:4px}fieldset,legend,pre code{padding:0;border:0}pre code{color:inherit}.pre-scrollable{max-height:340px;overflow-y:scroll}fieldset{margin:0}legend{display:block;width:100%;font-size:21px;line-height:40px;color:#333;border-bottom:1px solid #e5e5e5}legend small{font-size:15px;color:#999}input[disabled],input[readonly],select[disabled],select[readonly],textarea[disabled],textarea[readonly]{cursor:not-allowed;background-color:#eee}input:focus:invalid:focus,select:focus:invalid:focus,textarea:focus:invalid:focus{border-color:#e9322d;-webkit-box-shadow:0 0 6px #f8b9b7;-moz-box-shadow:0 0 6px #f8b9b7;box-shadow:0 0 6px #f8b9b7}button,input,label,select,textarea{font-size:12px;font-weight:300;line-height:20px}label{display:block;margin-bottom:5px}.uneditable-input,input[type=color],input[type=date],input[type=datetime-local],input[type=datetime],input[type=email],input[type=month],input[type=number],input[type=password],input[type=search],input[type=tel],input[type=text],input[type=time],input[type=url],input[type=week],select,textarea{display:inline-block;height:18px;padding:2px;margin:10px 0;font-size:14px;line-height:20px;color:#555;vertical-align:middle}.controls-row .checkbox[class*=span],.controls-row .radio[class*=span],.controls>.checkbox:first-child,.controls>.radio:first-child{padding-top:5px}.uneditable-input,input,textarea{width:206px}textarea{height:auto}.uneditable-input,input[type=color],input[type=date],input[type=datetime-local],input[type=datetime],input[type=email],input[type=month],input[type=number],input[type=password],input[type=search],input[type=tel],input[type=text],input[type=time],input[type=url],input[type=week],textarea{background-color:#fff;border:1px solid #e5e5e5}.uneditable-input:focus,input[type=color]:focus,input[type=date]:focus,input[type=datetime-local]:focus,input[type=datetime]:focus,input[type=email]:focus,input[type=month]:focus,input[type=number]:focus,input[type=password]:focus,input[type=search]:focus,input[type=tel]:focus,input[type=text]:focus,input[type=time]:focus,input[type=url]:focus,input[type=week]:focus,textarea:focus{border-color:rgba(82,168,236,.8);outline:0;outline:dotted thin\9;-webkit-box-shadow:inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(82,168,236,.6);-moz-box-shadow:inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(82,168,236,.6);box-shadow:inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(82,168,236,.6)}input[type=checkbox],input[type=radio]{margin:4px 0 0;margin-top:1px\9;line-height:normal}input[type=button],input[type=checkbox],input[type=file],input[type=image],input[type=radio],input[type=reset],input[type=submit]{width:auto}input[type=file],select{height:30px;line-height:30px}select{width:220px;border:1px solid #ccc}select[multiple],select[size]{height:auto}input[type=checkbox]:focus,input[type=file]:focus,input[type=radio]:focus,select:focus{outline:#333 dotted thin;outline:-webkit-focus-ring-color auto 5px;outline-offset:-2px}input:-moz-placeholder,textarea:-moz-placeholder{color:#999}input:-ms-input-placeholder,textarea:-ms-input-placeholder{color:#999}input::-webkit-input-placeholder,textarea::-webkit-input-placeholder{color:#999}.checkbox,.radio{min-height:20px;padding-left:20px}.checkbox input[type=checkbox],.radio input[type=radio]{float:left;margin-left:-20px}.row-fluid .uneditable-input[class*=span],.row-fluid input[class*=span],.row-fluid select[class*=span],.row-fluid textarea[class*=span],.uneditable-input[class*=span],input[class*=span],select[class*=span],textarea[class*=span]{float:none;margin-left:0}.input-append .uneditable-input[class*=span],.input-append input[class*=span],.input-prepend .uneditable-input[class*=span],.input-prepend input[class*=span],.row-fluid .input-append [class*=span],.row-fluid .input-prepend [class*=span],.row-fluid .uneditable-input[class*=span],.row-fluid input[class*=span],.row-fluid select[class*=span],.row-fluid textarea[class*=span]{display:inline-block}.input-append,.input-prepend{display:inline-block;margin-bottom:10px;font-size:0;white-space:nowrap;vertical-align:middle}.input-append .dropdown-menu,.input-append .popover,.input-append .uneditable-input,.input-append input,.input-append select,.input-prepend .dropdown-menu,.input-prepend .popover,.input-prepend .uneditable-input,.input-prepend input,.input-prepend select{font-size:14px}.input-append .uneditable-input,.input-append input,.input-append select,.input-prepend .uneditable-input,.input-prepend input,.input-prepend select{position:relative;margin-bottom:0;vertical-align:top}.input-append .add-on,.input-append .btn,.input-append .btn-group>.dropdown-toggle,.input-prepend .add-on,.input-prepend .btn,.input-prepend .btn-group>.dropdown-toggle{vertical-align:top;-webkit-border-radius:0;-moz-border-radius:0;border-radius:0}.btn,.form-horizontal .help-block{margin-bottom:0}.btn-block,.table,input[type=button].btn-block,input[type=reset].btn-block,input[type=submit].btn-block{width:100%}table{max-width:100%;background-color:transparent;border-collapse:collapse;border-spacing:0}.table{margin-bottom:20px}.table td,.table th{padding:8px;line-height:20px;text-align:left;vertical-align:top;border-top:1px solid #ddd}.btn,.pagination-centered{text-align:center}.table th{font-weight:700}.table thead th{vertical-align:bottom}.table caption+thead tr:first-child td,.table caption+thead tr:first-child th,.table colgroup+thead tr:first-child td,.table colgroup+thead tr:first-child th,.table thead:first-child tr:first-child td,.table thead:first-child tr:first-child th{border-top:0}.table tbody+tbody{border-top:2px solid #ddd}.table .table{background-color:#fff}.row-fluid table td[class*=span],.row-fluid table th[class*=span],table td[class*=span],table th[class*=span]{display:table-cell;float:none;margin-left:0}.btn,.btn-group,.btn-group-vertical{display:inline-block}.breadcrumb,.typeahead{-webkit-border-radius:4px;-moz-border-radius:4px}.btn-small,.well-small{-webkit-border-radius:3px;-moz-border-radius:3px}.fade{opacity:0;-webkit-transition:opacity .15s linear;-moz-transition:opacity .15s linear;-o-transition:opacity .15s linear;transition:opacity .15s linear}.fade.in{opacity:1}.collapse{height:0;overflow:hidden;-webkit-transition:height .35s ease;-moz-transition:height .35s ease;-o-transition:height .35s ease;transition:height .35s ease}.collapse.in{height:auto}.close{float:right;font-size:20px;color:#000;text-shadow:0 1px 0 #fff;opacity:.2;filter:alpha(opacity=20)}.close:focus,.close:hover{color:#000;text-decoration:none;cursor:pointer;opacity:.4;filter:alpha(opacity=40)}button.close{padding:0;cursor:pointer;background:0 0;border:0;-webkit-appearance:none}.btn,.btn-danger,.btn-info,.btn-inverse,.btn-primary,.btn-success,.btn-warning,.navbar .btn-navbar,.navbar-inverse .btn-navbar,.navbar-inverse .navbar-inner,.progress,.progress .bar,.progress .bar-danger,.progress .bar-info,.progress .bar-success,.progress .bar-warning,.progress-danger .bar,.progress-info .bar,.progress-success .bar,.progress-warning .bar{background-repeat:repeat-x}.tab-content{overflow:auto}.nav>.disabled>a{color:#999}.nav>.disabled>a:focus,.nav>.disabled>a:hover{text-decoration:none;cursor:default;background-color:transparent}.alert{padding:8px 35px 8px 14px;margin-bottom:20px;background-color:#fcf8e3;border:1px solid #fbeed5;-webkit-border-radius:4px;-moz-border-radius:4px;border-radius:4px}.alert,.alert h4{color:#c09853}.alert h4{margin:0}.alert .close{top:-2px;right:-21px;line-height:20px}.alert-success{color:#468847;background-color:#dff0d8;border-color:#d6e9c6}.alert-success h4{color:#468847}.alert-danger,.alert-error{color:#b94a48;background-color:#f2dede;border-color:#eed3d7}.alert-danger h4,.alert-error h4{color:#b94a48}.alert-info,.alert-info h4{color:#3a87ad}.alert-info{background-color:#d9edf7;border-color:#bce8f1}.alert-block{padding-top:14px;padding-bottom:14px}.alert-block>p,.alert-block>ul{margin-bottom:0}.alert-block p+p{margin-top:5px}.nav{margin-bottom:20px;margin-left:0}.nav>li>a:focus,.nav>li>a:hover{text-decoration:none;background-color:#eee}.nav>li>a>img{max-width:none}.nav>.pull-right{float:right}.nav-header{padding:3px 15px;font-size:11px;color:#999;text-transform:uppercase}.nav li+.nav-header{margin-top:9px}.btn-block,.nav-header,.nav>li>a{display:block}.nav-tabs{border-bottom:1px solid #ddd}.nav-tabs>li{margin-bottom:-1px}.nav-tabs>li>a{line-height:20px;border:1px solid transparent;-webkit-border-radius:4px 4px 0 0;-moz-border-radius:4px 4px 0 0;border-radius:4px 4px 0 0}.nav-tabs>li>a:focus,.nav-tabs>li>a:hover{border-color:#eee #eee #ddd}.nav-tabs>.active>a,.nav-tabs>.active>a:focus,.nav-tabs>.active>a:hover{color:#555;cursor:default;background-color:#fff;border:1px solid #ddd;border-bottom-color:transparent}.btn-link,.nav>.dropdown.active>a:focus,.nav>.dropdown.active>a:hover{cursor:pointer}.btn-large{padding:11px 19px;font-size:17.5px;-webkit-border-radius:6px;-moz-border-radius:6px;border-radius:6px}.btn-large [class*=" icon-"],.btn-large [class^=icon-]{margin-top:4px}.btn-small{padding:2px 10px;font-size:11.9px;border-radius:3px}.btn-small [class*=" icon-"],.btn-small [class^=icon-]{margin-top:0}.btn-mini [class*=" icon-"],.btn-mini [class^=icon-]{margin-top:-1px}.btn-mini{padding:0 6px;font-size:10.5px;-webkit-border-radius:3px;-moz-border-radius:3px;border-radius:3px}.btn-block{padding-right:0;padding-left:0;box-sizing:border-box}.btn-block+.btn-block{margin-top:5px}.btn-primary{color:#fff;background-color:#006dcc;background-image:-moz-linear-gradient(top,#08c,#04c);background-image:-webkit-gradient(linear,0 0,0 100%,from(#08c),to(#04c));background-image:-webkit-linear-gradient(top,#08c,#04c);background-image:-o-linear-gradient(top,#08c,#04c);background-image:linear-gradient(to bottom,#08c,#04c);border-color:#04c #04c #002a80;border-color:rgba(0,0,0,.1) rgba(0,0,0,.1) rgba(0,0,0,.25)}.btn-primary.active,.btn-primary.disabled,.btn-primary:active,.btn-primary:focus,.btn-primary:hover,.btn-primary[disabled]{color:#fff;background-color:#04c}.btn-primary.active,.btn-primary:active{background-color:#039\9}.btn-warning{color:#fff;background-color:#faa732;background-image:-moz-linear-gradient(top,#fbb450,#f89406);background-image:-webkit-gradient(linear,0 0,0 100%,from(#fbb450),to(#f89406));background-image:-webkit-linear-gradient(top,#fbb450,#f89406);background-image:-o-linear-gradient(top,#fbb450,#f89406);background-image:linear-gradient(to bottom,#fbb450,#f89406);border-color:#f89406 #f89406 #ad6704;border-color:rgba(0,0,0,.1) rgba(0,0,0,.1) rgba(0,0,0,.25)}.btn-warning.active,.btn-warning.disabled,.btn-warning:active,.btn-warning:focus,.btn-warning:hover,.btn-warning[disabled]{color:#fff;background-color:#f89406}.btn-warning.active,.btn-warning:active{background-color:#c67605\9}.btn-danger{color:#fff;background-color:#da4f49;background-image:-moz-linear-gradient(top,#ee5f5b,#bd362f);background-image:-webkit-gradient(linear,0 0,0 100%,from(#ee5f5b),to(#bd362f));background-image:-webkit-linear-gradient(top,#ee5f5b,#bd362f);background-image:-o-linear-gradient(top,#ee5f5b,#bd362f);background-image:linear-gradient(to bottom,#ee5f5b,#bd362f);border-color:#bd362f #bd362f #802420;border-color:rgba(0,0,0,.1) rgba(0,0,0,.1) rgba(0,0,0,.25)}.btn-danger.active,.btn-danger.disabled,.btn-danger:active,.btn-danger:focus,.btn-danger:hover,.btn-danger[disabled]{color:#fff;background-color:#bd362f}.btn-danger.active,.btn-danger:active{background-color:#942a25\9}.btn-success{color:#fff;background-color:#5bb75b;background-image:-moz-linear-gradient(top,#62c462,#51a351);background-image:-webkit-gradient(linear,0 0,0 100%,from(#62c462),to(#51a351));background-image:-webkit-linear-gradient(top,#62c462,#51a351);background-image:-o-linear-gradient(top,#62c462,#51a351);background-image:linear-gradient(to bottom,#62c462,#51a351);border-color:#51a351 #51a351 #387038;border-color:rgba(0,0,0,.1) rgba(0,0,0,.1) rgba(0,0,0,.25)}.btn-success.active,.btn-success.disabled,.btn-success:active,.btn-success:focus,.btn-success:hover,.btn-success[disabled]{color:#fff;background-color:#51a351}.btn-success.active,.btn-success:active{background-color:#408140\9}.btn-info{color:#fff;background-color:#49afcd;background-image:-moz-linear-gradient(top,#5bc0de,#2f96b4);background-image:-webkit-gradient(linear,0 0,0 100%,from(#5bc0de),to(#2f96b4));background-image:-webkit-linear-gradient(top,#5bc0de,#2f96b4);background-image:-o-linear-gradient(top,#5bc0de,#2f96b4);background-image:linear-gradient(to bottom,#5bc0de,#2f96b4);border-color:#2f96b4 #2f96b4 #1f6377;border-color:rgba(0,0,0,.1) rgba(0,0,0,.1) rgba(0,0,0,.25)}.btn-info.active,.btn-info.disabled,.btn-info:active,.btn-info:focus,.btn-info:hover,.btn-info[disabled]{color:#fff;background-color:#2f96b4}.btn-info.active,.btn-info:active{background-color:#24748c\9}.btn-inverse{color:#fff;background-color:#363636;background-image:-moz-linear-gradient(top,#444,#222);background-image:-webkit-gradient(linear,0 0,0 100%,from(#444),to(#222));background-image:-webkit-linear-gradient(top,#444,#222);background-image:-o-linear-gradient(top,#444,#222);background-image:linear-gradient(to bottom,#444,#222);border-color:#222 #222 #000;border-color:rgba(0,0,0,.1) rgba(0,0,0,.1) rgba(0,0,0,.25)}.alert,.nav-header,.nav-list .nav-header,.nav-list>li>a{text-shadow:0 1px 0 rgba(255,255,255,.5)}.tab-content>.tab-pane{display:none}.tab-content>.active{display:block}.btn-inverse.active,.btn-inverse.disabled,.btn-inverse:active,.btn-inverse:focus,.btn-inverse:hover,.btn-inverse[disabled]{color:#fff;background-color:#222}.btn-inverse.active,.btn-inverse:active{background-color:#080808\9}button.btn::-moz-focus-inner,input[type=submit].btn::-moz-focus-inner{padding:0;border:0}.btn-group>.btn,.btn-link{-webkit-border-radius:0;-moz-border-radius:0;border-radius:0}.btn-link,.btn-link:active,.btn-link[disabled]{background-color:transparent;background-image:none;-webkit-box-shadow:none;-moz-box-shadow:none;box-shadow:none}.btn-link{color:#08c;border-color:transparent}.btn-link:focus,.btn-link:hover{color:#005580;text-decoration:underline;background-color:transparent}.btn-link[disabled]:focus,.btn-link[disabled]:hover{color:#333;text-decoration:none}.navbar{margin-bottom:20px;overflow:visible}.navbar-inner{min-height:40px;padding-right:20px;padding-left:20px;border-top:1px solid #eee;border-bottom:1px solid #eee}.navbar-inner:after,.navbar-inner:before{display:table;line-height:0;content:""}.navbar .container{width:auto}.nav-collapse.collapse{height:auto;overflow:visible}.navbar .brand{display:block;float:left;padding:10px 20px;margin-left:-20px;font-size:20px;font-weight:200;color:#777;text-shadow:0 1px 0 #fff}.navbar .brand:focus,.navbar .brand:hover{text-decoration:none}.navbar-text{margin-bottom:0;line-height:40px;color:#777}.navbar-link{color:#777}.navbar-link:focus,.navbar-link:hover{color:#333}.navbar .divider-vertical{height:40px;margin:0 9px;border-right:1px solid #fff;border-left:1px solid #f2f2f2}.navbar .btn,.navbar .btn-group{margin-top:5px}.navbar .btn-group .btn,.navbar .input-append .btn,.navbar .input-append .btn-group,.navbar .input-prepend .btn,.navbar .input-prepend .btn-group{margin-top:0}.navbar .nav{position:relative;left:0;display:block;float:left;margin:0 10px 0 0}.popover,.popover-title:empty{display:none}.navbar .nav.pull-right{float:right;margin-right:0}.navbar .nav>li{float:left}.navbar .nav>li>a{float:none;padding:10px 15px;color:#777;text-decoration:none;text-shadow:0 1px 0 #fff}.navbar .nav .dropdown-toggle .caret{margin-top:8px}.navbar .nav>li>a:focus,.navbar .nav>li>a:hover{color:#333;text-decoration:none;background-color:transparent}.navbar .nav>.active>a,.navbar .nav>.active>a:focus,.navbar .nav>.active>a:hover{color:#555;text-decoration:none;background-color:#e5e5e5;-webkit-box-shadow:inset 0 3px 8px rgba(0,0,0,.125);-moz-box-shadow:inset 0 3px 8px rgba(0,0,0,.125);box-shadow:inset 0 3px 8px rgba(0,0,0,.125)}.navbar .btn-navbar{display:none;float:right;padding:7px 10px;margin-right:5px;margin-left:5px;color:#fff;background-color:#ededed;background-image:-moz-linear-gradient(top,#f2f2f2,#e5e5e5);background-image:-webkit-gradient(linear,0 0,0 100%,from(#f2f2f2),to(#e5e5e5));background-image:-webkit-linear-gradient(top,#f2f2f2,#e5e5e5);background-image:-o-linear-gradient(top,#f2f2f2,#e5e5e5);background-image:linear-gradient(to bottom,#f2f2f2,#e5e5e5);border-color:#e5e5e5 #e5e5e5 #bfbfbf;border-color:rgba(0,0,0,.1) rgba(0,0,0,.1) rgba(0,0,0,.25);-webkit-box-shadow:inset 0 1px 0 rgba(255,255,255,.1),0 1px 0 rgba(255,255,255,.075);-moz-box-shadow:inset 0 1px 0 rgba(255,255,255,.1),0 1px 0 rgba(255,255,255,.075);box-shadow:inset 0 1px 0 rgba(255,255,255,.1),0 1px 0 rgba(255,255,255,.075)}.navbar .btn-navbar.active,.navbar .btn-navbar.disabled,.navbar .btn-navbar:active,.navbar .btn-navbar:focus,.navbar .btn-navbar:hover,.navbar .btn-navbar[disabled]{color:#fff;background-color:#e5e5e5}.navbar .btn-navbar.active,.navbar .btn-navbar:active{background-color:#ccc\9}.navbar .btn-navbar .icon-bar{display:block;width:18px;height:2px;background-color:#f5f5f5;-webkit-border-radius:1px;-moz-border-radius:1px;border-radius:1px;-webkit-box-shadow:0 1px 0 rgba(0,0,0,.25);-moz-box-shadow:0 1px 0 rgba(0,0,0,.25);box-shadow:0 1px 0 rgba(0,0,0,.25)}.btn-navbar .icon-bar+.icon-bar{margin-top:3px}.navbar .nav>li>.dropdown-menu:before{top:-7px;left:9px;border-right:7px solid transparent;border-bottom:7px solid #ccc;border-left:7px solid transparent;border-bottom-color:rgba(0,0,0,.2)}.navbar .nav>li>.dropdown-menu:after{top:-6px;left:10px;border-right:6px solid transparent;border-bottom:6px solid #fff;border-left:6px solid transparent}.clearfix:after,.clearfix:before,.modal-footer:after,.modal-footer:before,.pager:after,.pager:before,.popover .arrow:after,.thumbnails:after,.thumbnails:before{content:""}.navbar-fixed-bottom .nav>li>.dropdown-menu:before{top:auto;bottom:-7px;border-top:7px solid #ccc;border-bottom:0;border-top-color:rgba(0,0,0,.2)}.navbar-fixed-bottom .nav>li>.dropdown-menu:after{top:auto;bottom:-6px;border-top:6px solid #fff;border-bottom:0}.navbar .nav li.dropdown>a:focus .caret,.navbar .nav li.dropdown>a:hover .caret{border-top-color:#333;border-bottom-color:#333}.navbar .nav li.dropdown.active>.dropdown-toggle,.navbar .nav li.dropdown.open.active>.dropdown-toggle,.navbar .nav li.dropdown.open>.dropdown-toggle{color:#555;background-color:#e5e5e5}.navbar .nav li.dropdown>.dropdown-toggle .caret{border-top-color:#777;border-bottom-color:#777}.navbar .nav li.dropdown.active>.dropdown-toggle .caret,.navbar .nav li.dropdown.open.active>.dropdown-toggle .caret,.navbar .nav li.dropdown.open>.dropdown-toggle .caret{border-top-color:#555;border-bottom-color:#555}.navbar .nav>li>.dropdown-menu.pull-right,.navbar .pull-right>li>.dropdown-menu{right:0;left:auto}.navbar .nav>li>.dropdown-menu.pull-right:before,.navbar .pull-right>li>.dropdown-menu:before{right:12px;left:auto}.navbar .nav>li>.dropdown-menu.pull-right:after,.navbar .pull-right>li>.dropdown-menu:after{right:13px;left:auto}.navbar .nav>li>.dropdown-menu.pull-right .dropdown-menu,.navbar .pull-right>li>.dropdown-menu .dropdown-menu{right:100%;left:auto;margin-right:-1px;margin-left:0;-webkit-border-radius:6px 0 6px 6px;-moz-border-radius:6px 0 6px 6px;border-radius:6px 0 6px 6px}.pagination{margin:20px 0}.pagination ul{display:inline-block;margin-bottom:0;margin-left:0;-webkit-border-radius:4px;-moz-border-radius:4px;border-radius:4px;-webkit-box-shadow:0 1px 2px rgba(0,0,0,.05);-moz-box-shadow:0 1px 2px rgba(0,0,0,.05);box-shadow:0 1px 2px rgba(0,0,0,.05)}.pagination ul>li{display:inline}.pagination ul>li>a,.pagination ul>li>span{float:left;padding:4px 12px;line-height:20px;text-decoration:none;background-color:#fff;border:1px solid #ddd;border-left-width:0}.pagination ul>.active>a,.pagination ul>.active>span,.pagination ul>li>a:focus,.pagination ul>li>a:hover{background-color:#f5f5f5}.pagination ul>.active>a,.pagination ul>.active>span{color:#999;cursor:default}.pagination ul>.disabled>a,.pagination ul>.disabled>a:focus,.pagination ul>.disabled>a:hover,.pagination ul>.disabled>span{color:#999;cursor:default;background-color:transparent}.pagination ul>li:first-child>a,.pagination ul>li:first-child>span{border-left-width:1px;-webkit-border-bottom-left-radius:4px;border-bottom-left-radius:4px;-webkit-border-top-left-radius:4px;border-top-left-radius:4px;-moz-border-radius-bottomleft:4px;-moz-border-radius-topleft:4px}.pagination ul>li:last-child>a,.pagination ul>li:last-child>span{-webkit-border-top-right-radius:4px;border-top-right-radius:4px;-webkit-border-bottom-right-radius:4px;border-bottom-right-radius:4px;-moz-border-radius-topright:4px;-moz-border-radius-bottomright:4px}.pagination-right{text-align:right}.pagination-large ul>li>a,.pagination-large ul>li>span{padding:11px 19px;font-size:17.5px}.pagination-large ul>li:first-child>a,.pagination-large ul>li:first-child>span{-webkit-border-bottom-left-radius:6px;border-bottom-left-radius:6px;-webkit-border-top-left-radius:6px;border-top-left-radius:6px;-moz-border-radius-bottomleft:6px;-moz-border-radius-topleft:6px}.pagination-large ul>li:last-child>a,.pagination-large ul>li:last-child>span{-webkit-border-top-right-radius:6px;border-top-right-radius:6px;-webkit-border-bottom-right-radius:6px;border-bottom-right-radius:6px;-moz-border-radius-topright:6px;-moz-border-radius-bottomright:6px}.pagination-mini ul>li:first-child>a,.pagination-mini ul>li:first-child>span,.pagination-small ul>li:first-child>a,.pagination-small ul>li:first-child>span{-webkit-border-bottom-left-radius:3px;border-bottom-left-radius:3px;-webkit-border-top-left-radius:3px;border-top-left-radius:3px;-moz-border-radius-bottomleft:3px;-moz-border-radius-topleft:3px}.pagination-mini ul>li:last-child>a,.pagination-mini ul>li:last-child>span,.pagination-small ul>li:last-child>a,.pagination-small ul>li:last-child>span{-webkit-border-top-right-radius:3px;border-top-right-radius:3px;-webkit-border-bottom-right-radius:3px;border-bottom-right-radius:3px;-moz-border-radius-topright:3px;-moz-border-radius-bottomright:3px}.pagination-small ul>li>a,.pagination-small ul>li>span{padding:2px 10px;font-size:11.9px}.pagination-mini ul>li>a,.pagination-mini ul>li>span{padding:0 6px;font-size:10.5px}.pager{margin:20px 0;text-align:center}.modal-footer,.modal-form{margin-bottom:0}.pager:after,.pager:before{display:table;line-height:0}.pager li{display:inline}.pager li>a,.pager li>span{display:inline-block;padding:5px 14px;background-color:#fff;border:1px solid #ddd;-webkit-border-radius:15px;-moz-border-radius:15px;border-radius:15px}.pager li>a:focus,.pager li>a:hover{text-decoration:none;background-color:#f5f5f5}.pager .next>a,.pager .next>span{float:right}.pager .previous>a,.pager .previous>span{float:left}.pager .disabled>a,.pager .disabled>a:focus,.pager .disabled>a:hover,.pager .disabled>span{color:#999;cursor:default;background-color:#fff}.modal-backdrop{position:fixed;top:0;right:0;bottom:0;left:0;z-index:1040;background-color:#000}.modal-backdrop.fade{opacity:0}.modal-backdrop,.modal-backdrop.fade.in{opacity:.9;filter:alpha(opacity=90)}.modal{position:fixed;top:10%;left:50%;z-index:1050;width:775px;margin-left:-280px;background-color:#fff;border:1px solid #b5b5b5;border:1px solid rgba(0,0,0,.3)}.modal.fade{top:-25%;-webkit-transition:opacity .3s linear,top .3s ease-out;-moz-transition:opacity .3s linear,top .3s ease-out;-o-transition:opacity .3s linear,top .3s ease-out;transition:opacity .3s linear,top .3s ease-out}.modal.fade.in{top:10%}.modal-header{padding:9px 15px;border-bottom:1px solid #eee}.modal-header .close{margin-top:2px}.modal-header h3{margin:0;line-height:30px}.modal-body{position:relative;max-height:600px;padding:15px;overflow-y:auto}.popover,.tooltip,.tooltip-arrow{position:absolute}.modal-footer{padding:14px 15px 15px;text-align:right;background-color:#f5f5f5;border-top:1px solid #ddd;-webkit-border-radius:0 0 6px 6px;-moz-border-radius:0 0 6px 6px;border-radius:0 0 6px 6px;-webkit-box-shadow:inset 0 1px 0 #fff;-moz-box-shadow:inset 0 1px 0 #fff;box-shadow:inset 0 1px 0 #fff}.modal-footer:after,.modal-footer:before{display:table;line-height:0}.modal-footer .btn+.btn{margin-bottom:0;margin-left:5px}.modal-footer .btn-group .btn+.btn{margin-left:-1px}.modal-footer .btn-block+.btn-block{margin-left:0}.tooltip{z-index:1030;display:block;font-size:11px;line-height:1.4;opacity:0;filter:alpha(opacity=0);visibility:visible}.tooltip.in{opacity:.8;filter:alpha(opacity=80)}.tooltip.top{padding:5px 0;margin-top:-3px}.tooltip.right{padding:0 5px;margin-left:3px}.tooltip.bottom{padding:5px 0;margin-top:3px}.tooltip.left{padding:0 5px;margin-left:-3px}.tooltip-inner{max-width:200px;padding:8px;color:#fff;text-align:center;text-decoration:none;background-color:#000;-webkit-border-radius:4px;-moz-border-radius:4px;border-radius:4px}.tooltip-arrow{width:0;height:0;border-color:transparent;border-style:solid}.tooltip.top .tooltip-arrow{bottom:0;left:50%;margin-left:-5px;border-top-color:#000;border-width:5px 5px 0}.tooltip.right .tooltip-arrow{top:50%;left:0;margin-top:-5px;border-right-color:#000;border-width:5px 5px 5px 0}.tooltip.left .tooltip-arrow{top:50%;right:0;margin-top:-5px;border-left-color:#000;border-width:5px 0 5px 5px}.tooltip.bottom .tooltip-arrow{top:0;left:50%;margin-left:-5px;border-bottom-color:#000;border-width:0 5px 5px}.popover{top:0;left:0;z-index:1010;max-width:276px;padding:1px;text-align:left;white-space:normal;background-color:#fff;border:1px solid #ccc;border:1px solid rgba(0,0,0,.2);-webkit-border-radius:6px;-moz-border-radius:6px;border-radius:6px;-webkit-box-shadow:0 5px 10px rgba(0,0,0,.2);-moz-box-shadow:0 5px 10px rgba(0,0,0,.2);box-shadow:0 5px 10px rgba(0,0,0,.2);-moz-background-clip:padding;background-clip:padding-box}.popover-title,.progress{background-color:#f7f7f7}.popover.top{margin-top:-10px}.popover.right{margin-left:10px}.popover.bottom{margin-top:10px}.popover.left{margin-left:-10px}.popover-title{padding:8px 14px;margin:0;font-weight:400;line-height:18px;border-bottom:1px solid #ebebeb;-webkit-border-radius:5px 5px 0 0;-moz-border-radius:5px 5px 0 0;border-radius:5px 5px 0 0}.accordion,.progress,.thumbnails>li{margin-bottom:20px}.popover-content{padding:9px 14px}.popover .arrow,.popover .arrow:after{position:absolute;display:block;width:0;height:0;border-color:transparent;border-style:solid}.popover .arrow{border-width:11px}.popover .arrow:after{border-width:10px}.popover.top .arrow{bottom:-11px;left:50%;margin-left:-11px;border-top-color:#999;border-top-color:rgba(0,0,0,.25);border-bottom-width:0}.popover.top .arrow:after{bottom:1px;margin-left:-10px;border-top-color:#fff;border-bottom-width:0}.popover.right .arrow{top:50%;left:-11px;margin-top:-11px;border-right-color:#999;border-right-color:rgba(0,0,0,.25);border-left-width:0}.popover.right .arrow:after{bottom:-10px;left:1px;border-right-color:#fff;border-left-width:0}.popover.bottom .arrow{top:-11px;left:50%;margin-left:-11px;border-bottom-color:#999;border-bottom-color:rgba(0,0,0,.25);border-top-width:0}.popover.bottom .arrow:after{top:1px;margin-left:-10px;border-bottom-color:#fff;border-top-width:0}.popover.left .arrow{top:50%;right:-11px;margin-top:-11px;border-left-color:#999;border-left-color:rgba(0,0,0,.25);border-right-width:0}.popover.left .arrow:after{right:1px;bottom:-10px;border-left-color:#fff;border-right-width:0}.thumbnails{margin-left:-20px}.thumbnails:after,.thumbnails:before{display:table;line-height:0}.media-object,.thumbnail{display:block}.row-fluid .thumbnails{margin-left:0}.thumbnails>li{float:left;margin-left:20px}.thumbnail{padding:4px;line-height:20px;border:1px solid #ddd;-webkit-border-radius:4px;-moz-border-radius:4px;border-radius:4px;-webkit-box-shadow:0 1px 3px rgba(0,0,0,.055);-moz-box-shadow:0 1px 3px rgba(0,0,0,.055);box-shadow:0 1px 3px rgba(0,0,0,.055);-webkit-transition:all .2s ease-in-out;-moz-transition:all .2s ease-in-out;-o-transition:all .2s ease-in-out;transition:all .2s ease-in-out}a.thumbnail:focus,a.thumbnail:hover{border-color:#08c;-webkit-box-shadow:0 1px 4px rgba(0,105,214,.25);-moz-box-shadow:0 1px 4px rgba(0,105,214,.25);box-shadow:0 1px 4px rgba(0,105,214,.25)}.thumbnail>img{display:block;max-width:100%;margin-right:auto;margin-left:auto}.thumbnail .caption{padding:9px;color:#555}.media,.media-body{overflow:hidden;zoom:1}.media,.media .media{margin-top:15px}.media:first-child{margin-top:0}.media-heading{margin:0 0 5px}.media>.pull-left{margin-right:10px}.media>.pull-right{margin-left:10px}.media-list{margin-left:0}.badge,.label{display:inline-block;padding:2px 4px;font-size:11.84px;font-weight:700;line-height:14px;color:#fff;white-space:nowrap;background-color:#999}.label{-webkit-border-radius:3px;-moz-border-radius:3px;border-radius:3px}.badge{padding-right:9px;padding-left:9px;-webkit-border-radius:9px;-moz-border-radius:9px;border-radius:9px}.badge:empty,.label:empty{display:none}a.badge:focus,a.badge:hover,a.label:focus,a.label:hover{color:#fff;text-decoration:none;cursor:pointer}.badge-important,.label-important{background-color:#b94a48}.badge-important[href],.label-important[href]{background-color:#953b39}.badge-warning,.label-warning{background-color:#f89406}.badge-warning[href],.label-warning[href]{background-color:#c67605}.badge-success,.label-success{background-color:#468847}.badge-success[href],.label-success[href]{background-color:#356635}.badge-info,.label-info{background-color:#3a87ad}.badge-info[href],.label-info[href]{background-color:#2d6987}.badge-inverse,.label-inverse{background-color:#333}.badge-inverse[href],.label-inverse[href]{background-color:#1a1a1a}.btn .badge,.btn .label{position:relative;top:-1px}.btn-mini .badge,.btn-mini .label{top:0}.accordion-group{margin-bottom:2px;border:1px solid #e5e5e5;-webkit-border-radius:4px;-moz-border-radius:4px;border-radius:4px}.accordion-heading{border-bottom:0}.accordion-heading .accordion-toggle{display:block;padding:8px 15px}.accordion-toggle{cursor:pointer}.accordion-inner{padding:9px 15px;border-top:1px solid #e5e5e5}

{#/*============================================================================
  #Components
==============================================================================*/ #}

{# /* // Mixins */ #}

@mixin text-decoration-none(){
  text-decoration: none;
  &:hover,
  &:focus{
    text-decoration: none;
  }
}

{# This mixin adds browser prefixes to a CSS property #}

@mixin prefix($property, $value, $prefixes: ()) {
  @each $prefix in $prefixes {
    #{'-' + $prefix + '-' + $property}: $value;
  }
  #{$property}: $value;
}

{# /* // Animations */ #}

.transition-soft {
    -webkit-transition: all 0.3s ease;
    -moz-transition: all 0.3s ease;
    -ms-transition: all 0.3s ease;
    -o-transition: all 0.3s ease;
    transition: all 0.3s ease;
}
.transition-soft-slow {
    -webkit-transition: all 0.7s ease;
    -moz-transition: all 0.7s ease;
    -ms-transition: all 0.7s ease;
    -o-transition: all 0.7s ease;
    transition: all 0.7s ease;
}

.transition-up {
    position: relative;
    top: -8px;
    @include prefix(transition, all 0.5s ease, webkit ms moz o);
    z-index: 10;
    pointer-events: none; 
    &-active {
        top: 0;
        opacity: 1; 
        z-index: 100;
        pointer-events: all; 
    }
}

.fade-in-vertical {
    transition: all .5s cubic-bezier(.16,.68,.43,.99);
    transition-delay: .3s;
    @include prefix(transform, translate(0, 40%), webkit ms moz o);
    &.visible {
        @include prefix(transform, translate(0, 0%), webkit ms moz o);
        opacity: 1;
    }
}

{# /* Headings */ #}

.box-title {
  float: left;
  width: 100%;
  padding-bottom: 8px;
  font-weight: bold;
}

.theme-wide .subtitle-container *{
  font-weight: 700;
}

{# /* // Wrappers */ #}

body {
  background-repeat: repeat;
}
.backdrop{
  position: fixed;
  top: 0;
  left: 0;
  z-index: 1045;
  width: 100%;
  height: 140%; /* Height to always take full height even then the mobile nav moves up on scroll or the device keyboard is visible*/
  background-color: rgba(0,0,0,0.5); /* Dark overlay when cart or search is active */
}

.box-container{
  float: left;
  width: 100%;
  box-sizing: border-box;
  margin-bottom: 10px;
  padding:10px;
}

{# /* // SVG Icons */ #}

.svg-small {
  width: 20px;
  height: 20px;
}

{# /* // Buttons */ #}

.btn-transition {
    position: relative;
    overflow: hidden;
    cursor: not-allowed;
    .transition-container {
      position: absolute;
      top: 50%;
      left: 0;
      width: 100%;
      margin-top: -10px;
      opacity: 0;
      text-align: center;
      @include prefix(transition, all 0.5s ease, webkit ms moz o);
      cursor: not-allowed;
      pointer-events: none;
      &.active {
        opacity: 1;
      }
    }
}

.btn-link-floating {
  top: 0;
  right: 0;
}

.btn.facebook {
  background-color: #3B5998;
  color: white;
  &:hover,
  &:focus,
  &:active{
    background-color: #3B5998;
    color: white;
  }
  svg{
    display: inline-block;  
    position: absolute;
    top: 50%;
    left: 10px;
    height: 20px;
    margin-top: -10px;
    margin-right: 15px;
    vertical-align: bottom;
    fill: #fff;
  }
}

.link-module,
.btn-module{
  display: block;
  position: relative;
  float: left;
  width: 100%;
  clear: both;
  padding: 10px 0;
  box-sizing:border-box;
}
.link-module{
  padding: 15px 0;
  &.no-border{
    margin: 0;
    border: none;
  }
  &-content {
    display: inline-block;
  }
  + .link-module{
    border-top: 0;
  }
}

.link-module-icon {
  display: inline-block;
  float: left;
  margin-right: 10px;
}


{# /* // Chips */ #}

.chip {
    position: relative;
    display: inline-block;
    margin: 0 5px 10px 0;
    padding: 5px 28px 5px 10px;
    border: 1px solid;
    white-space: normal;
    word-break: break-word;
    &:focus {
        outline: 0;
    }
    &-remove-icon {
        position: absolute;
        top: 7px;
        right: 8px;
        display: inline-block;
        width: 10px;
    }
}

{# /* // Badges */ #}

.badge:empty {
    display: block;
}

{# /* // Modals */ #}

.modal{
    margin-left: -375px;
    border-radius:0;
    &-small {
        width: 500px;
        margin-left: -270px;
        .modal-body {
            height: auto;
            min-height: initial;
        }
    }
    &.fade.in{
        top: 5%;
    }
    &-header{
        h3{
          margin-top: 2px;
          text-transform: uppercase;
          font-size: 18px;
          font-weight: normal;
        }
        &.with-tabs{
          padding:0;
        }
    }
    &-body{
        min-height: 200px;
        max-height: 500px;
    }
    &-footer{
        width: 100%;
        padding: 15px;
        box-sizing: border-box;
        box-shadow: 0 1px 0 0 rgba(0, 0, 0, 0.06), 0 0 24px 0 rgba(0, 0, 0, 0.08);
    }
    &-centered-small .modal-body{
        max-height: 400px;
    }
}

.modal-with-fixed-footer {
    display: flex;
    flex-direction: column;
    height: 100%;
    .modal-scrollable-area {
        height: 100%;
        overflow: auto;
    }
}
.modal-backdrop {
  z-index: 1049;
  background-color: #000000ad;
}

.modal-open{
  overflow: hidden;
}

{# /* Modal docked to the right */ #}

.modal-right{
  position: fixed;
  top: 0;
  right: 0;
  width: 500px;
  height: 100%;
  z-index: 1048;
  overflow-y: scroll;
  text-align: left;
  &-header{
    padding: 25px 15px 0 15px;
    box-sizing:border-box;
  }
  &-body{
    padding: 0 15px 15px 15px;
  }
}

/* // Dividers */

.divider-with-circle {
  margin: -10px 0 29px 0;
}

.divider-dotted{
    float: left;
    width: 100%;
    margin: 20px 0;
}

{# /* // Forms */ #}

select {
    height: 36px;
}
.form-group{
    position: relative;
    clear: both;
    margin-bottom: 20px;
}
.form-label{
  text-transform: uppercase;
}
.radio-group-label{
  margin-bottom: 10px;
}
.radio-button{
  margin-bottom: 0;
  -webkit-tap-highlight-color: rgba(0,0,0,0);
  &.disabled{
    opacity: 0.6;
    cursor: not-allowed;
    input[type="radio"] {
      cursor: not-allowed;
    }
  }
  &-content{
    position: relative;
    width: 100%;
    float: left;
    padding: 15px; 
    clear: both;
    box-sizing: border-box;
  }
  &-icons-container{
    position: absolute;
    top: 14px;
    left: 10px;
  }
  &-icons{
    position: relative;
    float: left;
  }
  &-icon{
    border-radius: 50%;
    width: 16px;
    height: 16px;
  }
  input[type="radio"]{
    display: none;
    & +  .radio-button-content .unchecked{
      float: left;
    }
    & +  .radio-button-content .checked{
      position: absolute;
      left: 10px;
      top: 10px;
      width:0;
      height: 0;      
      @include prefix(transform, translate(-50%,-50%), webkit ms moz o);
      @include prefix(transition, all 0.2s , webkit ms moz o);
    }
    &:checked {
        .shipping-method-name{
            font-weight: bold;
        } 
        + .radio-button-content .checked{
            width: 8px;
            height: 8px;
        }  
    } 
  }
  &-label{
    width: calc(100% - 30px);
    float: left;
    padding-left: 30px;
  }
  &-text{
    font-size: 14px;
  }
}

.checkbox-container{
    .checkbox {
        position: relative;
        display: block;
        margin-bottom: 15px;
        padding-left: 30px;
        font-weight: normal;
        text-decoration: none;
        @include prefix(transition, all 0.4s ease, webkit ms moz o);
        cursor: pointer;
        &-icon {
            display: block;
            position: absolute;
            top: -1px;
            left: 0;
            width: 16px;
            height: 16px;
            &:after {
                position: absolute;
                top: 0px;
                left: 6px;
                display: none;
                width: 3px;
                height: 11px;
                content: '';
                @include prefix(transform, rotate(45deg), webkit ms moz o);
            }
        }
        &-text {
            display: inline-block;
            padding-top: 2px;
        }
    }
    input {
        display: none;
        &:checked ~ .checkbox {
            opacity: 1;
            .checkbox-icon:after {
            display: block;
            }
        }
    }
}

.quantity-container{
  margin-bottom: 20px;
  .quantity{
    &-label{
      float: left;
      font-size: 14px;
      text-transform: uppercase;
    }
    input.quantity-input{
      width: 70px;
      border: 1px solid #ABABAB;
      height: 25px;
      margin-top: 2px;
      padding-left: 7px;
    }
  }
}

.input-clear-content {
  position: absolute;
  right: 3px;
  bottom: 1px;
  width: 20px;
  height: 29px;
  padding: 1px;
  cursor: pointer;
  &:before {
    display: block;
    margin: 5px 0 0 5px;
  }
}

{# /* Disabled controls */ #}

input,
select,
textarea{
  &[disabled],
  &[disabled]:hover,
  &[readonly],
  &[readonly]:hover{
    background-color: #DDD;
    cursor: not-allowed; 
  }
}

{# /* Lists */ #}

.list-readonly{
  .radio-button-label{
    width: 100%;
    padding-left: 0;
  }
  .list-item{
    position: relative;
    width: 100%;
    float: left;
    padding: 15px;
    clear: both;
    box-sizing: border-box;
    .radio-button-content{
        padding: 0;
    }
  }
}


{# /* // Alerts and notifications */ #}

.alert {
  clear: both;
  box-sizing: border-box;
  padding: 5px 0;
  text-align: center;
  background: none;
  border: 0;
  border-radius: 0;
  text-transform: uppercase;
  text-shadow: none;
  .btn-link{
    vertical-align: baseline;
  }
  &-primary {
    padding: 8px;
  }
}

.form-group + .alert{
    text-transform: initial;
    text-align: left;
    font-size: 13px;
}
.notification-hidden{
  transition: all .1s cubic-bezier(.16,.68,.43,.99);
  opacity: 0;
  @include prefix(transform, translate(0, -10%), webkit ms moz o);
  pointer-events: none;
}
.notification-visible{
  transition: all .5s cubic-bezier(.16,.68,.43,.99);
  opacity: 1;
  @include prefix(transform, translate(0, 0), webkit ms moz o);
}

.notification-floating .notification-close {
  position: absolute;
  top: 16px;
  right: 18px;
  z-index: 1;
  font-size: 22px; 
  cursor: pointer;
}

.notification-arrow-up:after,
.notification-arrow-up:before{
    content: '';
    display: block;
    position: absolute;
    {% if settings.version_theme != 'box' %}
        {% if settings.logo_position == 'left' %}
            right: 78px;
        {% else %}
            right: 4px;
        {% endif %}
    {% else %}
        right: 13%;
    {% endif %}
    width: 0;
    height: 0;
    border-style: solid;
    @include prefix(transform, rotate(-90deg), webkit ms moz o);
}

{# /* // Progress bar */ #}

.bar-progress {
  position: relative;
  height: 8px;
  border-radius: 1px;
  .bar-progress-active {
    width: 0%;
    height: 8px;
    border-radius: 1px;
  }
  .bar-progress-check {
    position: absolute;
    top: -9px;
    right: -5px;
    width: 15px;
    height: 15px;
    padding: 3px;
    font-size: 12px;
    line-height: 16px;
    text-align: center;
    border-radius: 50%;
    transform: scale(0.5);
    opacity: 0;
    &.active {
      transform: scale(1);
      opacity: 1;
    }
  }
}

.ship-free-rest-message {
  position: relative;
  height: 35px;
  .ship-free-rest-text {
    position: absolute;
    top: -5px;
    width: 100%;
    text-align: center;  
    line-height: 36px;
    opacity: 0;
  }
  &.success .bar-progress-success,
  &.amount .bar-progress-amount,
  &.condition .bar-progress-condition {
    top: 0;
    opacity: 1;
  }
}

{# /* // Tabs */ #}

.tab-group{
  width: 100%;
  margin-bottom: 15px;
  padding: 0;
  overflow-x: auto;
  white-space: normal;
  .tab{
    display: inline-flex;
    float: left;
    &-link{
      float: left;
      padding: 10px;
      text-align: center;
      text-transform: uppercase;
    }
  }
}

.tab-panel:not(.active){
  display: none;
}
.tab-panel.active{
  display: block;
}

{# /* // Thumbs swiper */ #}

.swiper-vertical{
    &-btn{
        position: absolute;
        left: 50%;
        height: 20px;
        margin-left: -10px;
        padding: 0 5px 10px 5px;
        opacity: 0.8;
        z-index: 9999;
        &-next{
            bottom: 0;
        }
        &-prev{
            top: 0;
        }
        &-arrow{
            line-height: 18px;
        }
    }
}

{# /* // Banners */ #}

.textbanner {
    &-link {
        display: block;
        width: 100%;
        height: 100%;
    }
    &-image {
      @include prefix(transition, all 0.8s ease, webkit ms moz o);
    }
    &:hover .textbanner-image,
    &:focus .textbanner-image {
      @include prefix(transform, scale(1.03), webkit ms moz o);
    }
    &-image.overlay:after {
      @include prefix(transition, all 0.8s ease, webkit ms moz o);
    }
    &:hover .textbanner-image:after {
      opacity: 0.5;
    }
}

{# /* // Modules with image and text */ #}

.module-wrapper {
  min-height: 300px;
}

.module-image {
  .placeholder{
    position: relative;
    padding-top: 70%;
    text-align: center;
    background: #eee;
    .module-icon {
      position: absolute;
      top: 50%;
      left: 50%;
      margin-left: -28px;
      margin-top: -28px;
      opacity: 0.2;
    }
  }
}

.module-text {
  position: absolute;
  width: 50%;
  height: 100%;
  .text-container {
    position: absolute;
    top: 50%;
    left: 0;
    z-index: 9;
    padding: 30px 0;
    transform: translate(-0%, -50%);
    .module-text-title {
      margin-bottom: 10px;
      display: -webkit-box;
      font-size: 30px;
      font-weight: 700;
      line-height: 32px;
      text-transform: uppercase;
      overflow: hidden;
      text-overflow: ellipsis;
      -webkit-line-clamp: 3;
      -webkit-box-orient: vertical;
    }
    .module-text-paragraph {
      margin-bottom: 20px;
      display: -webkit-box;
      overflow: hidden;
      text-overflow: ellipsis;
      -webkit-line-clamp: 4;
      -webkit-box-orient: vertical;
    }
  }
}


{# /* // User content */ #}

.user-content {
  line-height: 19px;
  margin: 10px 0 30px 0;
  max-width: 100%;
  h1{
    font-size: 22px;
    margin: 20px 0px;
    line-height: 32px;
    font-weight: 400;
    text-transform: uppercase;
  }
  h2,
  h3,
  h4,
  h5{
    margin: 0 0 10px;
  }
  h2{
    font-size:28px;
  }
  h3{
    font-size:24px;
  }
  h4{
    font-size:20px;
  }
  h5{
    font-size:16px;
  }
  img{
    margin: 10px 0px;
    width: auto;
    max-width: 100%!important;
    height: auto!important;
    &.img.user-page-logos {
      width: 45px;
      margin-top: 5px;
    }
  }
  iframe {
    width: calc(100% + 30px);
    margin: 0 0 0 -15px;
  }
  p,
  div{
    margin: 20px 0;
    max-width: 100%!important;
  }
  ul,
  ol{
    list-style: initial;
    margin: 0 0 10px 25px;
  }
  ol {
    list-style-type: decimal;
  }
}

{# /* // Images */ #}

.card-img{
  margin: 0 5px 5px 0;
  border: 1px solid #00000012;
  &-small {
    height: 25px;
  }
  &-medium{
    height: 35px;
  }
  &-big{
    height: 50px;
  }
}

.quickshop-img {
  max-width: 100%;
  max-height: 600px;
  &-container {
    margin: -15px 0 -20px -15px;
  }
}

{# /* // Banners */ #}

.theme-wide {
  .banner-module 
  .text-container {
    p {
      padding: 0px 8%;
      max-height: 70px;
      font-size: 14px;
      line-height: 24px;
      -webkit-line-clamp: 3;
    }
    h2 {
      margin-bottom: 15px;
      font-size: 30px;
      line-height: 34px;
      letter-spacing: 2px;        
    }
  }

  .module-text {
    width: 40%;
    margin: 0 5%;  
    .text-container p {
      font-size: 14px;
      line-height: 24px;
    }    
  }
  .banner-services-footer {
    border: none;
  }
}

{# /*  // Welcome */ #}

.theme-wide {
  .welcome-title {
    font-weight: 700;
    letter-spacing: 2px;
  }
  .welcome-paragraph {
    padding: 0px 15px;
    line-height: 25px;
  }
}

{# /*  // Social widgets */ #}

.instafeed-item {
    display: inline-block;
    .instafeed-link {
        position: relative;
        display: block;
        padding-top: 100%;
    }
    .instafeed-img {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        padding: 10px;
        object-fit: cover;
        box-sizing: border-box;
    }
    .instafeed-info {
        float: left;
        margin: 5px 0 0 10px;
        font-size: 10px;
        .instafeed-info-item {
            display: inline-block;
            margin-right: 10px;
            &:last-child {
                margin: 0;
            }
        }
    }
}

.instafeed-fallback {
    {% if settings.version_theme != 'box' %}
        padding: 40px 0;
    {% endif %}
    a &:hover {
        opacity: 0.8;
    }
}

{% if settings.show_footer_fb_like_box and store.facebook %}

{# /* /// Facebook */ #}

.fb-page{
    width: 300px;
    clear: both;
    margin: 0 auto 20px auto;
    border: 1px solid #e0e0e0;
    background: white;
    font-family: Helvetica, Arial, sans-serif;
    font-size: 11px;
    text-align: left;
    color: #383838;
    &-box{
        background: #fff;
        border-color: #EBEDF0 #dfe0e4 #d0d1d5;
        border-radius: 2px;
        box-shadow: 0 1px 2px rgba(0, 0, 0, .12);
    }
    &-img-container{
        position: relative;
        flex: 0 0 50px;
        width: 50px;
        height: 50px;
        border: 2px solid #fff;
        box-shadow: 0 1px 6px rgba(0, 0, 0, .5);
      }
      &-img{
        position: absolute;
        top: 50%;
        left: 50%;
        width: 100%;
        @include prefix(transform, translate(-50%, -50%), webkit ms moz o);
      }
      &-icon{
        line-height: 50px;
        opacity: 0.1;
      }
    &-link{
        font-family: sans-serif;
        font-size: 12px;
        text-decoration: underline;
        color: #383838;
        svg{
            fill: #4267b2;
        }
    }
    .fb-like{
        padding: 5px 10px;
        border-radius: 3px;
        color: white;
        background: #4267b2;
        font-size: 12px;
        font-family: Helvetica, Arial, sans-serif;
        &:hover{
            opacity: 0.8;
            text-decoration: none;
        }
        svg {
          fill: white;
        }
    }
    &-footer{
        background: #f5f6f7;
        text-align: center;
    }
}
{% endif %}


{# /* // Twitter */ #}

{% if settings.twitter_widget and store.twitter %}
.twitter-time {
    float: left;
    width: 100%;
    max-width: 520px;
    font-family: Helvetica,Roboto,"Segoe UI",Calibri,sans-serif;
    text-align: left;
    background-color: #fff;
    border-radius: 5px;
    a {
        font-family: Helvetica,Roboto,"Segoe UI",Calibri,sans-serif;
        color: #2b7bb9;
        &:hover {
            color: #3b94d9;
            text-decoration: none;
        }
    }
}

.twitter-head {
    padding: 10px;
    .tw-title {
        font-size: 27px;
        line-height: 36px;
        color: #292F33;
        &-byline {
            font-size: 12px;
            font-weight: 400;
            line-height: 16px;
            color: #657786;
        }
    }
}

.tw-timeline {
    border-bottom: 1px solid rgba(15,70,100,.12);
    .tw-tweet {
        position: relative;
        padding: 10px;
        border-top: 1px solid rgba(15,70,100,.12);
        &:hover {
            background-color: rgba(160,200,220,.12);
            .tw-tweet-like svg,
            .tw-tweet-retweet svg {
                fill: #667580;
            }
            .tw-tweet-like:hover svg {
                fill: #fc004f;
            }
            .tw-tweet-retweet:hover svg {
                fill: #3b94d9;
            }
        }
    }
    .tw-tweet-user {
        position: relative;
        margin-bottom: 2px;
        padding-left: 40px;
        .TweetAuthor-avatar {
            position: absolute;
            top: 0;
            left: 0;
            -webkit-box-flex: 0;
            -webkit-flex: none;
            -moz-box-flex: 0;
            -ms-flex: none;
            flex: none;
            width: 32px;
            height: 32px;
            overflow: hidden;
            border-radius: 4px;
            .Avatar {
                max-width: 100%;
                max-height: 100%;
                border-radius: 50%;
            }
        }
        .TweetAuthor {
            max-width: 100%;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            word-wrap: normal;
            &-name {
                display: block;
                font-size: 14px;
                font-weight: 700;
                line-height: 18px;
                color: #292F33;
            }
            &-screenName {
                display: block;
                font-size: 13px;
                line-height: 18px;
                color: #8899A6;
            }
        }
        .TweetAuthor-link {
            display: -webkit-box;
            display: -webkit-flex;
            display: -moz-box;
            display: -ms-flexbox;
            display: flex;
            width: -webkit-min-content;
            width: -moz-min-content;
            width: min-content;
            max-width: 100%;
            -webkit-box-align: center;
            -webkit-align-items: center;
            -moz-box-align: center;
            -ms-flex-align: center;
            align-items: center;
        }
    }
    .tw-tweet-text {
        margin: 0 0 12px 40px;
        font-size: 18px;
        line-height: 24px;
        white-space: pre-wrap;
        word-wrap: break-word;
    }
    .tw-tweet-media {
        margin-bottom: 12px;
        margin-left: 40px;
        font-size: 12px;
    }
    .tw-tweet-time {
        float: right;
        margin-top: 2px;
        a {
            font-size: 12px;
            line-height: 18px;
            color: #8899a6;
        }
    }
    .tw-tweet-interact {
        margin-left: 40px;
    }
    .tw-tweet-like {
        float: left;
        svg {
            width: 18px;
            fill: #e1e8ed;
        }
    } 
    .tw-tweet-retweet {
        margin-left: 20px;
        svg {
            width: 18px;
            fill: #e1e8ed;
        }
    } 
}
{% endif %}    

{# /* // Video */ #}

.video-modal {
    position: absolute;
    width: 100%;
    height: 100%;
    .embed-responsive {
        height: 100%;
        padding-bottom: 0;
    }
}

{# /* // Captcha */ #}

.g-recaptcha {
    margin-bottom: 20px;
}

.g-recaptcha > div {
    margin: 0 auto;
}

.grecaptcha-badge {
    bottom: 100px !important;
}

{#/*============================================================================
  #Header and nav
==============================================================================*/#}

{# /* // Nav desktop */ #}

{% if settings.megamenu %}
  
  {% if settings.version_theme == 'box' %}
    .megamenu {
      margin-top: -10px;
    }
  {% endif %}

  .megamenu::-webkit-scrollbar {
    width: 5px;
  }

  .megamenu-list {
    {% if settings.version_theme == 'wide' and settings.logo_position == 'left' %}
      padding: 15px 15px 15px 60px;
    {% else %}
      padding: 15px;
    {% endif %}
    {% if settings.version_theme == 'full' %}
      width: calc(100% - 75px)!important;
    {% endif %}
    text-align: left;
    -webkit-column-count: 6;  
    -webkit-column-gap: 20px;   
    -moz-column-count: 6;   
    -moz-column-gap: 20px;
    column-count: 6;  
    column-gap: 20px;  
    .desktop-nav-item {
      display: block;
      margin: 0;
      padding: 0;
      -webkit-column-break-inside: avoid;
      break-inside: avoid;
      .nav-list-link {
        margin-bottom: 5px;
        padding: 0;
        font-weight: bold;
      }
      .list-subitems {
        margin-bottom: 30px;
        .desktop-nav-item {
          .nav-list-link {
            margin-bottom: 5px;
            font-weight: normal;
            text-transform: none;
          }
          .list-subitems {
            margin: 0 0 10px 0;
            .nav-list-link {
              padding-left: 5px;
              line-height: 15px;
              &:before {
                margin-right: 3px;
                content: '-';
              }
            }
          }
        }
      }
    }
    .nav-list-link {
      display: block;
      margin-bottom: 10px;
      line-height: 20px;
    }
  }

  .megamenu:hover,
  .desktop-nav-item:hover .megamenu,
  .desktop-nav-container:hover .desktop-nav-item.hover .megamenu {
    visibility: visible;
    opacity: 1;
    transition-delay: 0s;
  }
{% else %}
  .desktop-nav-item{
    .desktop-nav-link{
      @include text-decoration-none();
      &:hover,
      &:focus{
        opacity: 0.6;
        background-color:transparent;
      }
      &:hover + .desktop-nav-list{
        display: block;
        visibility: visible;
        opacity: 1;
      }
    }
    .desktop-nav-list:hover{
      display: block;
      visibility: visible;
      opacity: 1;
    }
    .desktop-nav-list{
      position: absolute;
      top: 40px; 
      z-index: 10;
      width: 100%;
      min-width: 220px;
      max-width: 300px;
      text-align: left;
      visibility: hidden;
      opacity: 0;
      transition: visibility 0s, opacity 0.1s linear;
    }
    .desktop-nav-item{
      width: 100%;
      .desktop-nav-list{
        top:0;
        left: 100%;
        margin: 0;
      }
    }
  }
{% endif %}

.user-access:hover + .tooltip-link {
    display: none;
}

{# /* // Nav mobile */ #}

.btn-hamburger{
  width: 40px;
}
.modal-active{
  margin: 0;
  height: 100%;
  overflow: hidden;
  .site-overlay{
    display: block;
    position: fixed;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    z-index: 4100;
    background-color: rgba(0,0,0,.5);
    -webkit-animation: fade .5s;
    -moz-animation: fade .5s;
    -o-animation: fade .5s;
    animation: fade .5s;
  }
}

.hamburger-panel{
    box-shadow: none;
    .btn-hamburger-close {
        right: 15px;
        top: 6px;
        font-size: 18px;
    }
    .list-items {
        padding: 45px 0 10px;
        .hamburger-panel-link {
            display: block;
            padding: 20px;
            letter-spacing: 1px;
            font-weight: 400;
            border-bottom: 0;
            &.selected .hamburger-panel-arrow {
                transform: rotate(90deg);
            }
        }
        .list-subitems { 
            padding: 0;
        }
    }
    .hamburger-panel-arrow {
        font-size: 12px;
    }
    .hamburger-panel-first-row {
        padding-bottom: 180px;
        background: none;
    }
    .mobile-accounts{
        padding: 10px 12px 18px 12px;
        .mobile-accounts-item {
            width: auto;
            display: inline-block;
            .mobile-accounts-link {
                padding: 0 5px;
            }
            {% if 'mandatory' not in store.customer_accounts %}
                &:first-child a:after {
                    position: relative;
                    right: -7px;
                    content: "|";
                }
            {% endif %}
        }
        .user-badge {
            display: table;
            float: left;
            width: 20px;
            height: 20px;
            margin-right: 10px;
            padding: 10px;
            text-align: center;
            font-weight: bold;
        }
    }
    &-arrow{
        top: 20px;
        right: 10px;
        margin-top: -15px;
    }
    .tooltip {
        transition: all .5s cubic-bezier(.16,.68,.43,.99);
        transition-delay: .3s;
        opacity: 0;
        @include prefix(transform, translate(0, 40%), webkit ms moz o);
    }
    &.modal-show {
        .tooltip {
            @include prefix(transform, translate(0, 0%), webkit ms moz o);
            opacity: 1;
        }
    }
}

{# /* // Search */ #}

.search-suggest{
  position: absolute;
  left: 0;
  z-index: 2000;
  display: none;
  width: 300px;
  box-shadow: 0 2px 2px 0 rgba(0,0,0,.14),0 3px 1px -2px rgba(0,0,0,.2),0 1px 5px 0 rgba(0,0,0,.12);
  -webkit-overflow-scrolling: touch;
  &-list{
    float: left;
    width: 100%;
    margin: 0;
    padding: 0;
  }
  &-item{
    list-style-type: none;
  }
  &-link{
    position: relative;
    display: block;
    float: left;
    width: 100%;
    padding: 5px 10px;
    box-sizing: border-box;
    border-bottom: 1px solid rgba(0, 0, 0, 0.12);
    list-style-type: none;
    @include text-decoration-none();
  }
  &-text{
    display: inline-block;
    float: left;
    width: 70%;
  }
  &-image-container{
    width: 40px;
    float: left;
    margin-right: 10px;
    padding-top: 3px;
  }
  &-image{
    max-width: 100%;
    max-height: 45px;
  }
  &-icon{
    position: absolute;
    right: 5px;
    top: 50%;
    margin-top: -7px;
    width: 20px;
  }
  &-all-link{
    min-height: initial;
    padding: 10px;
    text-align: center;
    text-decoration: underline;
  }
}
.theme-full {
  .head-logo-left {
    .search-suggest{
      left: auto;
      right: 0;
    }
  }
}

{#/*============================================================================
  #Product grid
==============================================================================*/#}

{# /* // Filters */ #}

.filters-overlay {
    position: fixed;
    top: 0;
    left: 0;
    z-index: 30000;
    width: 100%;
    height: 100%;
    .filters-updating-message {
        position: absolute;
        top: 50%;
        left: 50%;
        width: 80%;
        text-align: center;
        @include prefix(transform, translate(-50%, -50%), webkit ms moz o);
        * {
          font-size: 24px;
          font-weight: normal;
        }
    }
}

.filter-input-price-container {
  position: relative;
  display: inline-block;
  width: calc(50% - 25px);
  margin-right: 5px;
  .form-label {
    font-size: 10px;
  }
  .filter-input-price {
    height: auto;
    padding: 4px 6px;
    font-size: 10px;
  }
}

{# /* // Grid item */ #}

.label {
  padding: 5px;
  font-size: 12px;
  font-weight: normal;
  text-align: center;
  text-transform: uppercase;
  border-radius: 0;
  white-space: normal;
}

.item:hover,{
  @include text-decoration-none();
}
.item-quickshop-link:hover {
  opacity: 0.85;
}
.item-quickshop-link span:hover {
  @include text-decoration-none();
  color: #e5e5e5;
}
.item-button-container {
    width: calc(100% - 80px);
}
input.item-quantity-input {
    width: 55px;
    height: 26px;
    margin: 0;
    padding: 5px;
    text-align: center;
}

{# /* Paginator */ #}

input.pagination-input {
  height: 30px;
  width: 50px;
  margin-right: 5px;
  margin-left: 5px;
  padding: 0 7px;
}

{#/*============================================================================
  #Product detail
==============================================================================*/#}

{# /* // Image */ #}

.cloud-zoom-big {
  /* Importants necesaries to overide plugin inline styles */
  width: 100%!important;
  overflow:hidden;
  background-color:#fff;
  z-index: 1!important;
}
.mousetrap{
  /* Importants necesaries to overide plugin inline styles */
  width: 100%!important;
  z-index: 2!important;
}
.cloud-zoom-wrap{
  max-height: 550px;
  overflow: hidden;
}
.cloud-zoom-loading {
  color:white;
  background:#222;
  padding:3px;
  border:1px solid #000;
}

.desktop-zoom-big {
  position: absolute;
  width: 100%;
  height: 100%;
  z-index: 1;
  background-position: 50% 50%;
  opacity: 0;
  transition: opacity 0.5s;
}

.desktop-zoom-container {
  cursor: zoom-in;
}

.desktop-zoom-container:hover .product-slider-image:not(.desktop-zoom-big) {
  opacity: 0;
}

.desktop-zoom-container:hover .desktop-zoom-big {
  opacity: 1;
}
.quickshop-image{
  height: auto;
  max-width: 100%;
}

{# /* // Form and info */ #}

.product-form{
  height: auto;
}
.variant-container{
  position: relative;
  float: left;
  width: 100%;
  margin-bottom: 20px;
  &.btn-variant-container{
    margin-bottom: 15px;
  }
  .variant-label{
    display: block;
    font-size: 14px;
    text-transform: uppercase;
  }
  .variant-select{
    width: 100%;
    margin: 5px 0 0 0;
    background: #FFFFFF;
    border: 1px solid #ABABAB;
    color: #535353;
  }
  .btn-variant {
    width: auto;
    float: left;
    padding: 1px;
    display: inline-block;
    cursor: pointer;
    margin: 5px 10px 10px 0;
    height: 24px;
    .btn-variant-content {
      display: inline-block;
      cursor: pointer;
      height: 24px;
      width: 24px;
      opacity: 0.7;
    }
    &.selected .btn-variant-content{
      opacity: 1;
    }
    &.btn-variant-custom{
      min-height: 24px;
      height: auto;
    }
    &.btn-variant-custom .btn-variant-content {
      width: auto;
      height: auto;
      padding: 2px 8px;
    }
  }
}

.product-buy-fixed{
  &.affix{
    top: -1px;
    width: 450px;
    transition: all .5s cubic-bezier(.16,.68,.43,.99);
    -webkit-transform: translate3d(0,0,0);
    -moz-transform: translate3d(0,0,0);
    -ms-transform: translate3d(0,0,0);
    -o-transform: translate3d(0,0,0);
    transform: translate3d(0,0,0);
    z-index: 2;
    .product-buy-container{
      padding: 10px;
    }
    .product-fixed-info{
      display: block;
      width: 40%;
      padding-right: 10px;
      box-sizing: border-box;
    }
    .product-buy-btn{
      width: 60%;
    }
  }
  &.cta-move-up{
    top: 0;
    transition: all .3s cubic-bezier(.16,.68,.43,.99);
    -webkit-transform: translate3d(0,-100%,0);
    -moz-transform: translate3d(0,-100%,0);
    -ms-transform: translate3d(0,-100%,0);
    -o-transform: translate3d(0,-100%,0);
    transform: translate3d(0,-100%,0);
  }
}
.stockalarm-trigger {
  margin-top: 15px;
  text-align: center;
}
.product-description table{
  width: 100%!important; 
}

.product-detail-text {
  margin-top: 30px;
}

{# /* // Shipping calculator */ #}


.product-shipping-calculator{
  label{
    cursor: default;
  }
  li input[type="radio"]:checked + .shipping-option{
    border:0px solid;
  }
  .radio-button-icons{
    display: none
  }
}

{# /* // Payments */ #}

.product-payment-logos-img{
  height: 20px;
  margin: 0 1px 0 0;
}
.product-payment-logos-i-credit{
  line-height: 20px;
}
.payment-credit-icon{
  margin-top: 2px;
  line-height: 20px;
}
.product-payment-icon-plus{
  left: 25px;
}
.payments-card-img{
  height: 26px;
}
.product-check-icon-gw{
  position: relative;
  top: 0;
  right: 0;
  display: inline-block;
  margin-top: -3px;
}
.payments-disabled-select{
  top: 0;
  left: 0;
  cursor: not-allowed;
}
.payments-disabled-select.hidden{
  display: none!important;
}

{#/*============================================================================
  #Footer
==============================================================================*/#}

.footer{
  padding: 20px 0px;
  &-title {
    margin: 10px 0 5px 0;
  }
  li{
    list-style: none;
    clear: both;
    a:hover{
      text-decoration: underline;
    }
  }
  &-icon {
    float: left;
    margin: 0 10px 5px 0;
    text-align: center;
  }
  &-payship-img{
    width: auto;
    height: 25px;
  }
}
.rounded-icon {
  border-radius: 100%;
  height: 30px;
  width: 30px;
  text-align: center;
  line-height: 30px;
}
.submit-with-icon,
.submit-with-icon:hover,
.submit-with-icon:focus,
.submit-with-icon:active{
  position: absolute;
  top: 0;
  right: 0;
  background: transparent;
  border: 0;
  text-indent: -9999px;
}
.seals-container {
  img{
    max-height: 60px;
    height: auto;
  }
  .custom-seal-img,
  .custom-seal-code img{
    max-width: 90px;
    max-height: 60px;
  }
  .seal-afip img{
    max-height: 40px;
  }
}
#seloEbit{
  overflow: visible!important;
}
.footer-legal {
  background: #fff;
  color: #313131;
  padding: 5px;
  .powered-by-logo {
    width: 175px;
  }
}

{#/*============================================================================
  #Construction page
==============================================================================*/#}

.password-page-svg{
  width: 6%;
  margin-top: 20px;
  &.wiggle {
    -webkit-animation: wiggle 1.5s infinite;
    animation-delay: 2s;
  }
}
@-webkit-keyframes wiggle {
    0% {
        -webkit-transform:rotate(0deg);
    }
    25% {
        -webkit-transform:rotate(-4deg);
    }
    50%{
         -webkit-transform:rotate(4deg);
    }
    75% {
        -webkit-transform:rotate(0deg);
    }
    100%{
         -webkit-transform:rotate(0deg);
    }
}
.password-footer-tall{
  margin-top: 130px;
}

{#/*============================================================================
  #Cart page
==============================================================================*/#}

{# /* // Cart page */ #}

.cart-table-header{
  margin-top: 20px;
  padding-bottom: 10px;
  font-weight: bold;
  text-transform: uppercase;
}
.cart-table-row{
  position: relative;
  padding: 10px 0;
}
.cart-quantity-btn,
.cart-btn-delete{
  float: left;
  padding: 6px;
  display: inline-block;
  background: transparent;
  font-size: 16px;
  opacity: 0.8;
  &:hover{
    opacity: 0.6;
  }
}
.cart-btn-delete{
  float: right;
  border:0;
}
input.cart-quantity-input {
  display: inline-block;
  width: 30px;
  height: 18px;
  margin: 0px;
  padding: 5px;
  color: #353535;
  font-size: 16px;
  text-align: center;
  -moz-appearance:textfield;
  &::-webkit-outer-spin-button,
  &::-webkit-inner-spin-button{
    -webkit-appearance: none;
  }
}
.cart-quantity-input-container{
  svg{
    padding: 6px 14px;
  }
  .fa-cog{
    display: none;
  }
  &-spinner{
    position: absolute;
    left: 50%;
    width: 40px;
    margin-left: -20px;
    text-align: center;
  }
}
.cart-quantity-svg-icon{
  width: 16px;
  height:16px;
}
.cart-delete-svg-icon{
  width: 20px;
  height: 20px;
}

{# /* // Ajax cart */ #}


.ajax-cart-header{
  padding: 10px 15px 0 15px;
}
.ajax-cart-table-header{
  padding: 10px 0;
  overflow: hidden;
  font-weight: normal;
  text-transform: uppercase;
}
.ajax-cart-item {
  position: relative;
  float: left;
  width: 100%;
  padding: 10px 0;
  clear: both;
  &-col{
    float: left;
  }
  &-image-col{
    width: 12%;
  }
  &-desc-col{
    width: 53%;
    padding-left: 10px;
  }
  &-unit-price{
    float: left;
    width: 100%;
    margin:5px 0 2px 0;
  }
  &-subtotal{
    width: 25%;
  }
  &-delete-col{
    width: 10%;
  }
}
.ajax-cart-promotions{
  .cart-promotion-detail{
    float: left;
    width: 65%;
    text-align: left;
  } 
  .cart-promotion-number{
    position: absolute;
    right: 0;
    bottom: 0;
    float: right;
    text-align: right;
    font-weight: bold;
  } 
}
.ajax-cart-shipping-calculator{
  padding: 20px 0;
  box-sizing:border-box;
}
.cart-subtotal-header{
  margin-right: 10%;
}

{# /* // Totals */ #}

.cart-totals-container{
  margin-top: 10px;
  padding: 10px;
}
.cart-subtotal{
  float: right;
  clear: both;
  margin: 20px 0 10px 0;
}
.total-promotions-row{
  float: right;
  width: 100%;
  margin-bottom: 5px;
  position: relative;
  .cart-promotion-number{
    margin-left: 5px;
  }
}
.cart-total{
  float: right;
  clear: both;
  margin: 10px 0;
  font-weight: bold;
}


{#/*============================================================================
  #Media queries
==============================================================================*/#}

{# /* // Min width 770px */ #}

@media (min-width: 770px) {
    
    {# /* //// Components */ #}

    .no-slide-effect-md{
        -webkit-transition: 0.001s ease !important;
        transition: 0.001s ease !important;
    }
}

{# /* // Max width 979px */ #}

@media (max-width: 979px) {

  {# /* //// Product detail */ #}

  .product-buy-fixed.affix{
    width: 330px;
  }  
  .cloud-zoom-wrap{
    max-height: 300px;
  }
}

{# /* // Max width 769px */ #}

@media (max-width: 769px) {

  {# /* //// Components */ #}


  {# /* Wrappers */ #}

  .box-container {
    padding: 5px;
  }

  {# /* Buttons */ #}

  .btn-module {
    padding: 10px 40px 10px 10px;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
    text-align: left;
    &:hover{
      opacity: 0.7;
    }
  }
  .link-module {
    padding: 20px 0;
    text-align: left;
  }
  
  .link-module-icon-right,
  .btn-module-icon-right{
    position: absolute;
    right: 15px;
    float: right;
    display: block;
    top: 50%;
    margin-top: -15px;
  }

  {# /* Forms */ #}

  /* Hack to avoid autozoom on IOS */

  input:not([type=submit]),
  textarea,
  select.form-control,
  select{
    font-size: 16px;
  }

  .quantity-container{
    .quantity{
      float: left;
      padding: 15px 0;
      &-label{
        margin-top: 10px;
      }
      input.quantity-input{
        float: right;
        height: 38px;
        width: 20%;
        margin: 0;
        padding: 0;
        text-align: center;
      }
    }
  }

  {# /* Modals */ #}

  .modal-backdrop.fade.in{
    opacity:0;
    &.modal-backdrop-zindex-top{
      opacity: .8;
      z-index: 4300;
    }
  }
  .sheet-bottom-backdrop{
    background-color:#000;
    z-index: 4200;
  }
  .sheet-bottom-backdrop.fade.in{
    opacity:.6;
  }
  .modal:not(.modal-xs-centered) .modal-header{
    padding:0;
  }
  .modal-xs{
    position: fixed;
    top: 0;
    z-index: 4200;
    width: 100%;
    height: 100%;
    margin: 0;
    border:0;
    opacity: 1;
    box-sizing:border-box;
    overflow: auto;
    &-centered{
      width: 90%;
      height: auto;
      @include prefix(transform, translate(-50%, -50%), webkit ms moz o);
      .modal-body {
        max-height: 400px;
      }
      &.fade.in{
        top: 50%;
      }
    }
    &.modal-zindex-top{
      z-index: 4400;
    }
    &.sheet-bottom {
      top: initial!important;
      left: 0;
      bottom: 0;
      padding: 50% 0 0 0;
      z-index: 4300;
    }
    &-dialog{
      display: flex;
      flex-direction: column;
      height: 100%;
      margin: 0;
      .modal-content{
        height: 100%;
        overflow: auto;
        box-shadow:none;
        border: 0;
      }
    }
    &-header{
      position: relative;
      display: block;
      padding: 20px 15px;
      clear: both;
      text-decoration: none;
      ms-word-break: break-all;
      word-wrap: break-word;
      -webkit-hyphens: auto;
      -moz-hyphens: auto;
      hyphens: auto;
      -webkit-tap-highlight-color:rgba(0,0,0,0);
      &.sheet-bottom-header{
        text-align:center;
        .btn,
        .btn-link{
          position:absolute;
          text-decoration:none;
        }
        .btn-primary{
          padding: 8px 10px;
          font-size:14px;
        }
        .link-left{
          left:15px;
          top: 22px;
        }
        .btn-right{
          right: 15px;
          top: 10px;
        }
      }
    }
    &-header-text{
      display: inline-block;
      clear: both;
      font-size: 18px;
      &.modal-xs-right-header-text{
        margin-left: 25px;
      }
    }
    &-header-icon{
      position: absolute;
      top: 15px;
      right: 14px;
      &.modal-xs-right-header-icon{
        left: initial;
        right: initial;
      }
    }
    &-body{
      height: 100%;
      max-height: initial;
      padding:10px 10px 40px 10px;
      box-sizing: border-box;
      overflow: initial;
      &-list{
        padding:0 0 200px 0;
        overflow-y:auto;
      }
    }
    &-list-item{
      position: relative;
      display: block;
      clear: both;
      padding: 20px 15px;
      text-decoration: none;
      font-size: 16px;
      &.selected{
        .modal-xs-radio-icon svg{
          visibility: visible;
        }
      }
    }
    &-radio-icon-container {
      width: 12%;
      display: inline-block;
      float: left;
    }
    &-radio-icon {
      height: 20px;
      width: 12px;
      display: inline-block;
      padding: 0px 4px;
      border-radius: 100%;
      cursor: pointer;
      opacity: 0.7;
      svg{
        visibility: hidden;
      }
    }
    &-radio-text {
      width: 88%;
      display: inline-block;
    }
  }

  .modal .modal-footer {
    box-shadow: none;
    border-radius:0;
  }

  {# /* Modal animated from right */ #}

  .modal-xs-right{
    right: inherit;
    left: inherit;
    @include prefix(box-shadow, -4px 0 17px 0 rgba(0,0,0,0.23), webkit ms moz);
    -webkit-overflow-scrolling: touch;
    &.modal.fade.in,
    &.modal.fade{
      top: 0;
      left: 0;
    }
    &.mobile-nav-subcategories-panel{
      top: 95px;
      z-index: 3000;
    }
  }
  .modal-xs-right.modal.fade.in,
  .modal-xs-right-in{
    transition: all .5s cubic-bezier(.16,.68,.43,.99);
    @include prefix(transform, translate3d(0,0,0), webkit ms moz o);
  }

  {# /* Modal animated from bottom */ #}

  .modal-xs-bottom.modal.fade.in,
  .modal-xs-bottom-in{
    left: 0;
    top: 0;
    transition: all .5s cubic-bezier(.16,.68,.43,.99);
    @include prefix(transform, translate3d(0,0,0), webkit ms moz o);
  }

  {# /* Modals v2 - applied for now only on hamburguer panel */ #}

  .new-modal {
    position: fixed;
    top: 0;
    display: block;
    width: 80%;
    height: 100%;
    -webkit-overflow-scrolling: touch;
    overflow-y: auto;
    transition: all .2s cubic-bezier(.16,.68,.43,.99);
    z-index: 4200;
    &.modal-full {
      width: 100%;
    }
    &.modal-top{
      top: -100%;
    }
    &.modal-bottom{
      top: 100%;
    }
    &.modal-left{
      left: -100%;
    }
    &.modal-right{
      right: -100%;
    }
    &.modal-top.modal-show,
    &.modal-bottom.modal-show {
      top: 0;
    }
    &.modal-left.modal-show {
      left: 0;
    }
    &.modal-right.modal-show {
      right: 0;
    }
  }

  {# /* Filters */ #}

  .filter-input-price-container {
    width: 95px;
    .filter-input-price {
      padding: 5px 25px 8px 8px;
      font-size: 12px;
    }
  }

  
  {# /* Tabs */ #}

  .tab-group{
    overflow-x: scroll;
    white-space: nowrap;
    .tab{
      float: none;
    }
  }

  .card-img{
    &-big{
      height: 60px;
    }
  }

  .quickshop-img {
    position: absolute;
    left: 50%;
    width: auto;
    height: 100%;
    max-height: 490px;
    margin: 0;
    @include prefix(transform, translate3d(-50%,0,0), webkit ms moz o);
    &-container {
      position: relative;
      max-height: 490px;
      margin: -20px -20px 0 -20px;
      overflow: hidden;
    }
  }

  {# /* //// Header and nav */ #}

  {# /* Nav mobile */ #}
  .theme-wide {
    .search-fix {
      form {
        width: 100%;
        max-width: none;
      }
    }
  }
  .mobile-nav-search-row form {
    max-width: 100%;
    .mobile-search-input-container {
      width: 100%;
      .mobile-search-input-back {
        position: absolute;
        display: block;
        left: 0px;
        top: 0px;
        margin: 15px;
        font-size: 22px;
        border: none;
        z-index: 1040;
      }
      .mobile-search-input {
        width: calc(100% - 100px) !important;
        height: 42px;
        margin-top: 0px;
        padding: 10px 60px 10px 40px;
        font-size: 14px;
      }
      .mobile-search-input-submit {
        position: absolute;
        right: 0px;
        margin: 12px 14px;
        font-size: 22px;
        border: none;
        z-index: 1040;
      }
    }
  }

  .add-on.mobile-search-input-back,
  .add-on.mobile-search-input-submit{
    height: auto;
    border: 0;
    margin-top: 10px;
    background: none;
  }
  input.mobile-search-input{
    width: 80%!important; /*Override Bootstrap width*/
    height: 50px;
    margin-top: 4px;
    border: 0!important; /*Override Bootstrap */
    padding: 10px;
    font-size: 18px;
    &:focus{
      border: 0;
      box-shadow: none;
    }
  }
  
  .search-suggest{
    position: fixed;
    top: 64px;
    z-index: 3000;
    display: none;
    height: 100%;
    width: 100%;
    box-sizing:border-box;
    margin: 0;
    padding-bottom: 1000px;
    overflow-y: scroll;
    &-link{
      padding: 20px 15px;
    }
  }
  .has_store_bar_thin .search-suggest{
    top: 60px;
  }
  .theme-wide .search-fix .search-suggest,
  .theme-wide .search-fix-tab .search-suggest {
    top: 132px;
  }
  .mobile-search-backdrop{
    z-index: 1;
  }
  .mobile-nav-categories-container{
    top: 95px;
    z-index: 3000;
    padding-bottom: 150px;
    -webkit-overflow-scrolling: touch;
    overflow: auto;
  }

  .move-list-up .mobile-nav-categories-container,
  .move-list-up .mobile-nav-subcategories-panel{
    top: 45px;
  }

  .theme-wide {
    .mobile-nav-categories-container,
    .mobile-nav-subcategories-panel {
      top: auto;
    }
  }

  {# /* //// Construction page */ #}

  .password-page-svg{
    width: 15%;
  }

  {# /* //// Product grid */ #}

  .mobile-filters-btn {
    margin-top: 34px;
    padding: 0 15px;
  }

  input.item-quantity-input {
    height: 32px;
  }

  {# /* //// Product detail */ #}
  
  .product-buy-fixed.affix {
      display: none;
  }
  .product-detail-text {
    margin: 0 0 20px;
  }

  {# /* Variants */ #}

  .btn-variant{
    margin: 10px 15px 5px 0;
  }
  .panel-mobile-variant {
    left: 0;
  }

  {# /* Mobile Zoom */ #}

  .cloud-zoom-wrap .mousetrap{
    display: none;
  }

  .zoom-svg-icon{
    width: 16px;
    height: 18px;
  }
  .mobile-zoom-panel{
    display: none;
    position: fixed;
    top: 0;
    left: 0;
    z-index: 9999;
    width: 100%;
    height: 100%;
    overflow: auto;
    .mobile-zoom-image-container{
      margin: 15px;
      max-height: 95%;
    }
    .mobile-zoom-spinner{
      display: none;
      position: absolute;
      top: 40%;
      left: 50%;
      z-index: 99;
      margin-left: -15px;
    }
    img{
      width: 100%;
      max-height: inherit;
    }
  }

  .desktop-zoom-container:hover .product-slider-image:not(.desktop-zoom-big) {
    opacity: 1;
  }

  {# /* Social Sharing */ #}

  .btn-social-mobile {
    margin: 0 2px;
    padding: 5px;
    .fa-whatsapp{
      fill: #43d854; /* hardcoded colors for social network identity */
    }
    .fa-facebook-f{
      fill: #3b5998; /* hardcoded colors for social network identity */
    }
    .fa-twitter{
      fill: #55acee; /* hardcoded colors for social network identity */
    }
    .fa-google-plus-g{
      fill: #dc4e41; /* hardcoded colors for social network identity */
    }
    .fa-pinterest{
      fill: #bd081c; /* hardcoded colors for social network identity */
    }
  }


  {# /* Modules with image and text */ #}

  .module-text {
    position: relative;
    float: left;
    width: 100%;
    .text-container {
      position: relative;
      padding: 20px 15px 40px 15px;
      transform: none;
      .module-text-paragraph {
        -webkit-line-clamp: 6;
      }
    }
  }  

  {# /* Banners */ #}

  .theme-wide {     
    .module-text {
      width: 100%;
      margin: 0;
      .text-container {
        position: relative;
        transform: none;
        padding: 20px 15px 50px 15px;
      }
    }
  }

  {# /* // Instafeed */ #}
  
  .theme-wide {
    .instafeed-item:nth-child(odd) .instafeed-link {
      margin: -16px 4px 4px 8px;
    }
    .instafeed-item:nth-child(even) .instafeed-link {
      margin: -16px 8px 4px 4px;
    }
    .instafeed-item .instafeed-img {
      padding: 16px 0 0 0;
    }
  }

  .instafeed-item .instafeed-img {
    padding: 0;
  }
  .instafeed-item .instafeed-info {
    margin-top: 10px;
  }

  .instafeed-fallback svg {
    font-size: 50px;
  }

  {# /* //// Home */ #}

  .tw-timeline .tw-tweet-text {
    font-size: 14px;
    line-height: 18px;
  }

  {# /* User Content */ #}

  .user-content 
  .user-content{
    width: 100%;
    img {
      max-width: 80%!important;
      height: auto!important;
      width: auto;
    }
    table{
      width: 100%!important;
    }
  }

  {# /* //// Cart page */ #}

  {# /* Table */ #}

  .cart-item-name{
    float: left;
    width: 100%;
    padding: 0 40px 10px 0;
    box-sizing:border-box;
  }
  .cart-table-product{
    /* !important necesary to override Bootstrap 2*/
    width: 18%!important;
    float: left!important;
  }
  .cart-quantity{
    /* !important necesary to override Bootstrap 2*/
    width: 82%!important;
    float: left!important;
    padding-left: 10px;
  }
  .cart-item-subtotal{
    /* !important necesary to override Bootstrap 2*/
    width: auto;
    padding: 12px 0 10px 10px;
    text-align: right;
    font-weight: bold;
  }
  .cart-quantity-btn,
  .cart-btn-delete{
    padding: 8px 12px;
  }
  input.cart-quantity-input{
    height: 26px;
  }
  .cart-quantity-svg-icon{
    width: 18px;
    height: 20px;
  }
  .cart-delete-container{
    /* !important necesary to override Bootstrap 2*/
    position: absolute;
    right: 0;
    top: 7px;
    float: right!important;
    width: 32px!important;
    .cart-btn-delete{
      padding-right:0; 
    }
  }

  .cart-total {
    margin-top: 20px;
  }

  {# /* Ajax cart */ #}

  .ajax-cart-container{
    width: 100%;
    box-sizing: border-box;
    .ajax-cart-item{
      &-image-col{
        width: 16%;
      }
      &-desc-col{
        width: 82%;
      }
    }
  }

  {# /* Totals */ #}
  
  .cart-totals-container{
    padding:0;
  }
  .cart-promotion-detail{
    width: 65%;
    float: left;
  }
  .cart-promotion-number{
    position: absolute;
    right: 0;
    bottom: 0;
    width: 35%;
    float: right;
    margin: 0;
    text-align: right;
  }

  {# /* Shipping calcualtor */ #}

  .cart-shipping-calculator{
    padding: 10px;
    box-sizing:border-box;
  } 
  .btn-shipping{
    width: 51%;
    margin-left:1%;
  }
  
  {# /* //// Footer */ #}

  .footer{
    padding: 0 20px 20px 20px;
    .footer-title{
      margin: 20px 0 5px 0;
    }
    li {
      margin: 10px 0;
      padding: 0;
      a {
        display: inline-block;
        min-width: 48px;
        padding: 0;
      }
    }
    &-icon {
      display: inline-block;
      float: none;
      vertical-align: middle;
    }
  }
  .powered-by-logo{
    margin: auto;
  }
  .btn-footer {
    height: 44px;
  }
  .theme-wide {
    .newsletter-footer{
      input.newsletter-footer-input {
        width: 80%;
        border: none;
      }
      &-btn,
      input.newsletter-footer-btn{
        width: 20%;
      }
    }
  }
}


{#/*============================================================================
  #Critical path utilities
==============================================================================*/#}

.visible-when-content-ready{
  visibility: visible!important;
}
.display-when-content-ready{
  display: block!important;
}
.hidden-when-content-ready{
  display: none;
}
.product-single-image{
  height: auto;
}
