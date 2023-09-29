<html lang="en"><head>
<meta charset="utf-8">
<title>@yield('title')</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Подключение Font Awesome через CDN -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css">
<link rel="stylesheet" href="/css/style.css" >
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/primeicons/6.0.1/primeicons.css" integrity="sha512-Cou4yk7SP7nVaRItjs6oYZODG52OUnJcTnaIo3B8cS8CCjUi0nkaW015K3Tw07zByRrZTj/ToFIzX9VcbsHtig==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<style>

.pi-times:before {
    content: "\e90b";
  font-family: "Font Awesome 5 Free"; 
  
}
.bumz-menu .menu-tochno p{
margin: 0;
}
.pi-clock:before {
    content: "\e940";
}
.bumz-menu .p-menuitem-icon.breach{
background-image: url(https://bumz.pro/assets/ng/breach.svg);
}
.p-menu-overlay{position:absolute;top:0;left:0}.p-menu ul{margin:0;padding:0;list-style:none}.p-menu .p-submenu-header{align-items:center}.p-menu .p-menuitem-link{cursor:pointer;display:flex;align-items:center;text-decoration:none;overflow:hidden;position:relative}.p-menu .p-menuitem-text{line-height:1}

</style>
</head>
<body>
<app-root ng-version="16.2.3"><router-outlet></router-outlet><bumz-site-layout _nghost-ng-c3477347030="" class="ng-star-inserted"><bumz-header _ngcontent-ng-c3477347030=""><div class="header-bumz"><div class="bumz-wrapper">

<a href="/" class="ng-star-inserted">
  <img src="/images/cash-pro-logo-fin.svg" width="60px">
</a><div class="header_period hide ng-star-inserted click_block_df"><div class="header_period-value"><div class="ng-star-inserted"> Выбранный <!----> квартал: </div><div class="ng-star-inserted">

@if ($request->session()->exists('year'))
{{$request->session()->get('n')}}кв{{$request->session()->get('year')}}
@else
{{ceil(date('n') / 3)}}кв{{date('Y')}}
@endif
</div><!----><!----></div><div class="header_period-limits ng-star-inserted"> Лимиты: <span>0 кк / 0 кк</span></div><!----></div>

<div class="header_controls ng-star-inserted vk_hide_dd"><div><p> Выберите <span>квартал:</span></p>

  <div class="header_controls-quarter"><p-radiobutton label="1" name="quarter" value="1" class="p-element ng-untouched ng-pristine ng-valid"><div class="p-radiobutton p-component">
    <div class="p-hidden-accessible"><input type="radio" name="quarter" value="1" aria-checked="false"></div>
    <div class="p-radiobutton-box"><span class="p-radiobutton-icon"></span></div></div><label class="p-radiobutton-label ng-star-inserted btn_dfc_der @if($request->session()->exists('n')) @if($request->session()->get('n') == 1) p-radiobutton-label-active @endif @endif">1</label><!----></p-radiobutton><p-radiobutton label="2" name="quarter" value="2" class="p-element ng-untouched ng-pristine ng-valid"><div class="p-radiobutton p-component p-radiobutton-checked"><div class="p-hidden-accessible"><input type="radio" name="quarter" value="2" aria-checked="true"></div><div class="p-radiobutton-box p-highlight"><span class="p-radiobutton-icon"></span></div></div><label class="p-radiobutton-label ng-star-inserted @if($request->session()->exists('n')) @if($request->session()->get('n') == 2) p-radiobutton-label-active @endif @endif btn_dfc_der">2</label><!----></p-radiobutton><p-radiobutton label="3" name="quarter" value="3" class="p-element without-border ng-untouched ng-pristine ng-valid"><div class="p-radiobutton p-component"><div class="p-hidden-accessible"><input type="radio" name="quarter" value="3" aria-checked="false"></div><div class="p-radiobutton-box"><span class="p-radiobutton-icon"></span></div></div><label class="p-radiobutton-label ng-star-inserted btn_dfc_der  @if($request->session()->exists('n')) @if($request->session()->get('n') == 3) p-radiobutton-label-active @endif @endif" >3</label><!----></p-radiobutton><p-radiobutton label="4" name="quarter" value="4" class="p-element ng-untouched ng-pristine ng-valid"><div class="p-radiobutton p-component"><div class="p-hidden-accessible"><input type="radio" name="quarter" value="4" aria-checked="false"></div><div class="p-radiobutton-box"><span class="p-radiobutton-icon"></span></div></div><label class="p-radiobutton-label ng-star-inserted btn_dfc_der @if($request->session()->exists('n')) @if($request->session()->get('n') == 4) p-radiobutton-label-active @endif @endif">4</label><!----></p-radiobutton></div></div><div><p> Выберите <span>год:</span></p><div class="header_controls-year"><i class="pi pi-chevron-left"></i><p-inputnumber class="p-element p-inputwrapper ng-untouched ng-pristine ng-valid p-inputwrapper-filled" maxlength="4"><span class="p-inputnumber p-component">

@if ($request->session()->exists('year'))
<input  class="p-inputtext p-component p-element p-inputnumber-input p-filled text_val" value="{{$request->session()->get('year')}}">
@else
<input  class="p-inputtext p-component p-element p-inputnumber-input p-filled text_val" value="{{date('Y')}}">

@endif
<!----><!----><!----><!----></span></p-inputnumber><i class="pi pi-chevron-right"></i></div></div>

<button label="Применить" pbutton="" type="button" class="p-element p-button p-component fox_btn"><span class="p-button-label">Применить</span></button>

</div>
<!----><!----><div class="header_exit ng-star-inserted"><div class="header_exit_left"><i class="pi pi-user-exit"></i><span class="header_exit-username">{{auth()->user()->name}}</span></div><div class="header_exit_right"><span class="header_exit-out"><i class="pi pi-exit"></i><a href="/logout" style="color: white"> выход </a></span></div></div><!----><button icon="pi pi-bars" iconpos="left" pbutton="" type="button" class="p-element header_burger p-button p-component p-button-icon-only ng-star-inserted"><span class="p-button-icon pi pi-bars show_dfc" aria-hidden="true"></span></button><!----><!----><!---->

<!----><!----><!----><!----></div></div></bumz-header>

<bumz-menu _ngcontent-ng-c3477347030=""><aside class="bumz-menu active"><div class="menu_logo"><i class="pi pi-logo"></i></div><div class="menu-tochno"><p><i class="pi pi-clock"></i> Сдача уточненок: </p><div class="menu-tochno_date"><span class="ng-star-inserted">20.09</span><span class="ng-star-inserted">17:15 (МСК)</span><!----><!----><!----></div></div><button icon="pi pi-times" iconpos="left" pbutton="" type="button" class="p-element header_burger p-button p-component p-button-icon-only ng-star-inserted  btn-addd"><span class="p-button-icon pi pi-times" aria-hidden="true"></span></button><!----><p-menu class="p-element ng-tns-c215187649-4 ng-star-inserted"><div class="ng-trigger ng-trigger-overlayAnimation ng-tns-c215187649-4 ng-animate-disabled p-menu p-component ng-star-inserted" id="pn_id_4" data-pc-name="menu"><ul role="menu" class="p-menu-list p-reset ng-tns-c215187649-4" id="pn_id_4_list" tabindex="0" data-pc-section="menu"><!----><!----><li ptooltip="" role="menuitem" class="p-element p-menuitem ng-tns-c215187649-4 ng-star-inserted" data-pc-section="menuitem" aria-label="Разрывы" data-p-focused="false" data-p-disabled="false" aria-disabled="false" id="pn_id_4_0" style=""><div class="p-menuitem-content" data-pc-section="content"><!----><a routerlinkactive="p-menuitem-link-active" pripple="" class="p-ripple p-element p-menuitem-link ng-star-inserted" tabindex="-1" data-pc-section="action" aria-hidden="true" href="/breach">

<span class="p-menuitem-icon breach ng-star-inserted p1">
  <img src="https://bumz.pro/assets/ng/breach.svg">
</span>


<!----><span class="p-menuitem-text ng-star-inserted">Разрывы</span><!----><!----><!----><!----></a><!----><!----></div></li><!----><!----><!----><li ptooltip="" role="menuitem" class="p-element p-menuitem ng-tns-c215187649-4 p-hidden ng-star-inserted" data-pc-section="menuitem" aria-label="Конфигуратор" data-p-focused="false" data-p-disabled="false" aria-disabled="false" id="pn_id_4_1" style=""><div class="p-menuitem-content" data-pc-section="content"><!----><a routerlinkactive="p-menuitem-link-active" pripple="" class="p-ripple p-element p-menuitem-link ng-star-inserted" tabindex="-1" data-pc-section="action" aria-hidden="true" href="/chains"><span class="p-menuitem-icon config ng-star-inserted"></span><!----><span class="p-menuitem-text ng-star-inserted">Конфигуратор</span><!----><!----><!----><!----></a><!----><!----></div></li><!----><!----><!----><li ptooltip="" role="menuitem" class="p-element p-menuitem ng-tns-c215187649-4 p-hidden ng-star-inserted" data-pc-section="menuitem" aria-label="Генератор" data-p-focused="false" data-p-disabled="false" aria-disabled="false" id="pn_id_4_2" style=""><div class="p-menuitem-content" data-pc-section="content"><!----><a routerlinkactive="p-menuitem-link-active" pripple="" class="p-ripple p-element p-menuitem-link ng-star-inserted" tabindex="-1" data-pc-section="action" aria-hidden="true" href="/empty"><span class="p-menuitem-icon thunder ng-star-inserted"></span><!----><span class="p-menuitem-text ng-star-inserted">Генератор</span><!----><!----><!----><!----></a><!----><!----></div></li><!----><!----><!---->


<!----><!----><!----><li ptooltip="" role="menuitem" class="p-element p-menuitem ng-tns-c215187649-4 ng-star-inserted" data-pc-section="menuitem" aria-label="Контроль" data-p-focused="false" data-p-disabled="false" aria-disabled="false" id="pn_id_4_4" style=""><div class="p-menuitem-content" data-pc-section="content"><!----><a routerlinkactive="p-menuitem-link-active" pripple="" class="p-ripple p-element p-menuitem-link ng-star-inserted" tabindex="-1" data-pc-section="action" aria-hidden="true" href="/control"><span class="p-menuitem-icon pencil ng-star-inserted"></span><!----><span class="p-menuitem-text ng-star-inserted">Контроль</span><!----><!----><!----><!----></a><!----><!----></div></li><!----><!----><!----><li ptooltip="" role="menuitem" class="p-element p-menuitem ng-tns-c215187649-4 p-hidden ng-star-inserted" data-pc-section="menuitem" aria-label="Лимиты" data-p-focused="false" data-p-disabled="false" aria-disabled="false" id="pn_id_4_5" style=""><div class="p-menuitem-content" data-pc-section="content"><!----><a routerlinkactive="p-menuitem-link-active" pripple="" class="p-ripple p-element p-menuitem-link ng-star-inserted" tabindex="-1" data-pc-section="action" aria-hidden="true" href="/empty"><span class="p-menuitem-icon limit ng-star-inserted"></span><!----><span class="p-menuitem-text ng-star-inserted">Лимиты</span><!----><!----><!----><!----></a><!----><!----></div></li><!----><!----><!---->

<li ptooltip="" role="menuitem" class="p-element p-menuitem ng-tns-c215187649-4 ng-star-inserted" data-pc-section="menuitem" aria-label="Счета" data-p-focused="false" data-p-disabled="false" aria-disabled="false" id="pn_id_4_6" style=""><div class="p-menuitem-content" data-pc-section="content"><!----><a routerlinkactive="p-menuitem-link-active" pripple="" class="p-ripple p-element p-menuitem-link ng-star-inserted" tabindex="-1" data-pc-section="action" aria-hidden="true" href="/invoice"><span class="p-menuitem-icon rub ng-star-inserted"></span><!----><span class="p-menuitem-text ng-star-inserted">Счета</span><!----><!----><!----><!----></a><!----><!----></div></li><!----><!----><!----><li ptooltip="" role="menuitem" class="p-element p-menuitem ng-tns-c215187649-4 p-hidden ng-star-inserted" data-pc-section="menuitem" aria-label="Спецрежим" data-p-focused="false" data-p-disabled="false" aria-disabled="false" id="pn_id_4_7" style=""><div class="p-menuitem-content" data-pc-section="content"><!----><a routerlinkactive="p-menuitem-link-active" pripple="" class="p-ripple p-element p-menuitem-link ng-star-inserted" tabindex="-1" data-pc-section="action" aria-hidden="true" href="/empty"><span class="p-menuitem-icon special ng-star-inserted"></span><!----><span class="p-menuitem-text ng-star-inserted">Спецрежим</span><!----><!----><!----><!----></a><!----><!----></div></li><!----><!----><!----><li ptooltip="" role="menuitem" class="p-element p-menuitem ng-tns-c215187649-4 p-hidden ng-star-inserted" data-pc-section="menuitem" aria-label="Книги" data-p-focused="false" data-p-disabled="false" aria-disabled="false" id="pn_id_4_8" style=""><div class="p-menuitem-content" data-pc-section="content"><!----><a routerlinkactive="p-menuitem-link-active" pripple="" class="p-ripple p-element p-menuitem-link ng-star-inserted" tabindex="-1" data-pc-section="action" aria-hidden="true" href="/books"><span class="p-menuitem-icon books ng-star-inserted"></span><!----><span class="p-menuitem-text ng-star-inserted">Книги</span><!----><!----><!----><!----></a><!----><!----></div></li><!----><!----><!----><li ptooltip="" role="menuitem" class="p-element p-menuitem ng-tns-c215187649-4 ng-star-inserted" data-pc-section="menuitem" aria-label="Примерочная" data-p-focused="false" data-p-disabled="false" aria-disabled="false" id="pn_id_4_9" style=""><div class="p-menuitem-content" data-pc-section="content"><!----><a routerlinkactive="p-menuitem-link-active" pripple="" class="p-ripple p-element p-menuitem-link ng-star-inserted" tabindex="-1" data-pc-section="action" aria-hidden="true" href="/"><span class="p-menuitem-icon dressing ng-star-inserted"></span><!----><span class="p-menuitem-text ng-star-inserted">Примерочная</span><!----><!----><!----><!----></a><!----><!----></div></li><!----><!----><!----><li ptooltip="" role="menuitem" class="p-element p-menuitem ng-tns-c215187649-4 ng-star-inserted" data-pc-section="menuitem" aria-label="Документы" data-p-focused="false" data-p-disabled="false" aria-disabled="false" id="pn_id_4_10" style=""><div class="p-menuitem-content" data-pc-section="content"><!----><a routerlinkactive="p-menuitem-link-active" pripple="" class="p-ripple p-element p-menuitem-link ng-star-inserted" tabindex="-1" data-pc-section="action" aria-hidden="true" href="/documents"><span class="p-menuitem-icon docs ng-star-inserted"></span><!----><span class="p-menuitem-text ng-star-inserted">Документы</span><!----><!----><!----><!----></a><!----><!----></div></li><!----><!----><!----><li ptooltip="" role="menuitem" class="p-element p-menuitem ng-tns-c215187649-4 p-hidden ng-star-inserted" data-pc-section="menuitem" aria-label="Суб-партнеры" data-p-focused="false" data-p-disabled="false" aria-disabled="false" id="pn_id_4_11" style=""><div class="p-menuitem-content" data-pc-section="content"><!----><a routerlinkactive="p-menuitem-link-active" pripple="" class="p-ripple p-element p-menuitem-link ng-star-inserted" tabindex="-1" data-pc-section="action" aria-hidden="true" href="/subPartners"><span class="p-menuitem-icon users ng-star-inserted"></span><!----><span class="p-menuitem-text ng-star-inserted">Суб-партнеры</span><!----><!----><!----><!----></a><!----><!----></div></li><!----><!----><!----><li ptooltip="" role="menuitem" class="p-element p-menuitem ng-tns-c215187649-4 p-hidden ng-star-inserted" data-pc-section="menuitem" aria-label="Пользователи" data-p-focused="false" data-p-disabled="false" aria-disabled="false" id="pn_id_4_12" style=""><div class="p-menuitem-content" data-pc-section="content"><!----><a routerlinkactive="p-menuitem-link-active" pripple="" class="p-ripple p-element p-menuitem-link ng-star-inserted" tabindex="-1" data-pc-section="action" aria-hidden="true" href="/users"><span class="p-menuitem-icon users ng-star-inserted"></span><!----><span class="p-menuitem-text ng-star-inserted">Пользователи</span><!----><!----><!----><!----></a><!----><!----></div></li><!----><!----><!----><li ptooltip="" role="menuitem" class="p-element p-menuitem ng-tns-c215187649-4 p-hidden ng-star-inserted" data-pc-section="menuitem" aria-label="Самотестирование" data-p-focused="false" data-p-disabled="false" aria-disabled="false" id="pn_id_4_13" style=""><div class="p-menuitem-content" data-pc-section="content"><!----><a routerlinkactive="p-menuitem-link-active" pripple="" class="p-ripple p-element p-menuitem-link ng-star-inserted" tabindex="-1" data-pc-section="action" aria-hidden="true" href="/empty"><span class="p-menuitem-icon self-test ng-star-inserted"></span><!----><span class="p-menuitem-text ng-star-inserted">Самотестирование</span><!----><!----><!----><!----></a><!----><!----></div></li><!----><!----><!----><li ptooltip="" role="menuitem" class="p-element p-menuitem ng-tns-c215187649-4 ng-star-inserted" data-pc-section="menuitem" aria-label="Связаться с нами" data-p-focused="false" data-p-disabled="false" aria-disabled="false" id="pn_id_4_14" style=""><div class="p-menuitem-content" data-pc-section="content"><a pripple="" class="p-ripple p-element p-menuitem-link ng-star-inserted" target="undefined" tabindex="-1" data-pc-section="action" aria-hidden="true"><span class="p-menuitem-icon contact ng-star-inserted"></span><!----><span class="p-menuitem-text ng-star-inserted">Связаться с нами</span><!----><!----><!----><!----></a><!----><!----><!----></div></li><!----><!----><!----><!----></ul></div><!----></p-menu><!----><!----><!----><div class="menu_copyright"><p>bumz.pro ©</p></div></aside></bumz-menu>


<main _ngcontent-ng-c3477347030="" class="content ng-star-inserted content_clk_ff">
@yield('content')
</main>

<!----><!----></bumz-site-layout><!----><p-toast key="mainToast" class="p-element ng-tns-c3410864869-0"><div class="ng-tns-c3410864869-0 p-toast p-component p-toast-top-right" pn_id_1="" style=""><!----></div></p-toast></app-root>


<script defer="" src="https://static.cloudflareinsights.com/beacon.min.js/v8b253dfea2ab4077af8c6f58422dfbfd1689876627854" integrity="sha512-bjgnUKX4azu3dLTVtie9u6TKqgx29RBwfj3QXYt5EKfWM/9hPSAI/4qcV5NACjwAo8UtTeWefx6Zq5PHcMm7Tg==" data-cf-beacon="{&quot;rayId&quot;:&quot;808b65175b0202ad&quot;,&quot;version&quot;:&quot;2023.8.0&quot;,&quot;r&quot;:1,&quot;token&quot;:&quot;cb3644eea1ef4cd3a39ea7c997c917b5&quot;,&quot;si&quot;:100}" crossorigin="anonymous"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script>
$('.bumz-menu').removeClass('active');
$('.btn-addd').on('click', function(){
$('.bumz-menu').removeClass('active');
});
$('.show_dfc').on('click', function(){
$('.bumz-menu').addClass('active');
});
$('.vk_hide_dd').hide();
$('.click_block_df').on('click', function(){
  $('.vk_hide_dd').show();
});
$('.content_clk_ff').on('click', function(){
  $('.vk_hide_dd').hide();
});

$('.btn_dfc_der').on('click', function(){
  $('.btn_dfc_der').removeClass('p-radiobutton-label-active');
  $(this).addClass('p-radiobutton-label-active');
  let txt = $('.p-radiobutton-label-active').text();
//  alert(txt);
});
$('.pi-chevron-right').on('click', function(){
  //alert(1);
  $('.text_val').val(Number($('.text_val').val())+1);
});
$('.pi-chevron-left').on('click', function(){
  //alert(1);
  $('.text_val').val(Number($('.text_val').val())-1);
});
$('.fox_btn').on('click', function(){
  let n = $('.p-radiobutton-label-active').text();
  let year = $('.text_val').val();
  $.ajax({
          url: '/ajaxyear',
          method: 'post',
          dataType: 'html',
          data: {'_token':'{{csrf_token()}}',n:n, year:year },
          success: function(data){
              document.location.href='/'

        }
        });
});
function getPosition(e){
  var x = y = 0;
 
  if (!e) {
    var e = window.event;
  }
 
  if (e.pageX || e.pageY){
    x = e.pageX;
    y = e.pageY;
  } else if (e.clientX || e.clientY){
    x = e.clientX + document.body.scrollLeft + document.documentElement.scrollLeft;
    y = e.clientY + document.body.scrollTop + document.documentElement.scrollTop;
  }
 
  return {x: x, y: y}
}
$('.addsfer_uu').on('click', function(e){
  var coord = getPosition(e);
   $('.bddf_sd').css('left', coord['x']);
      $('.bddf_sd').css('top', coord['y']);

    $('.bddf_sd').show();
});
$('.close_btn_close').on('click', function(){
  alert(1);
  
});
function closebtnclose(){
  $('.bddf_sd').hide();
}
function srtss(tx, e){
  //alert(tx);
  var coord = getPosition(e);
   $('.bddf_sd').css('left', coord['x']);
      $('.bddf_sd').css('top', coord['y']);
      $('.p-overlaypanel-content').text();
    $('.bddf_sd').show();
    $('.p-overlaypanel-content').text(tx);
}
$('p-dropdownitem li').on('click', function(){
 // alert(1);
  let fc = $(this).text();
  $('.fdcddff').val(fc);
  $('.sdfsdgsdgsdg').hide();
  $('.afasfasfasfasf').text(fc);
   $.ajax({
          url: '/ajaxyearod',
          method: 'post',
          dataType: 'html',
          data: {'_token':'{{csrf_token()}}',fc:fc },
          success: function(data){
              //alert(data);
           $('.contdfpp').html(data);
        }
        });

});
$('.afasfasfasfasf').on('click', function(){
  $('.sdfsdgsdgsdg').show();

});
$('.sdfsdgsdgsdg').hide();
$('.dressing-page_input-search').on('input', function(){
  let tct = $('.dressing-page_input-search').val();
  $.ajax({
          url: '/ajaxyearodrff',
          method: 'post',
          dataType: 'html',
          data: {'_token':'{{csrf_token()}}',tct:tct },
          success: function(data){
             // alert(data);
           $('.contdfpp').html(data);
        }
        });
});
</script>
<div role="dialog" style="display: none" class="bddf_sd ng-trigger ng-trigger-animation ng-tns-c3157156003-8 p-overlaypanel p-component ng-star-inserted" aria-modal="true" style="z-index: 1002; transform-origin: center top; top: 343px; left: 780.984px; --overlayArrowLeft: 0px; transform: translateY(0px); opacity: 1;">
  <div class="p-overlaypanel-content ng-tns-c3157156003-8" style="word-wrap: break-word;line-height: 24px;">
    <!----><h4 _ngcontent-ng-c1658467850="" class="p-overlaypanel-title ng-star-inserted" style="">46.71</h4>
    <span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 16.10 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 16.24 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 18.12 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 25.11 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 25.61 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 25.62 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 25.91 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 25.92 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 25.93 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 25.99 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 27.11 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 27.90 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 28.12.1 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 30.20 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 33.12 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 33.14 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 33.20 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 41.20 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 42.11 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 42.12 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 42.21 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 42.22 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 42.91.5 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 43.12 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 43.13 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 43.21 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 43.22 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 43.29 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 43.31 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 43.33 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 43.39 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 43.91 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 43.99 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 43.99.1 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 43.99.2 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 43.99.3 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 43.99.4 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 43.99.5 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 43.99.6 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 43.99.9 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 45.19 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 45.20 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 45.31.1 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 46.13 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 46.31 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 46.31.1 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 46.33 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 46.34 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 46.35 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 46.36 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 46.37 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 46.38 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 46.39 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 46.47 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 46.49 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 46.49.4 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 46.49.49 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 46.51 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 46.61 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 46.62 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 46.63 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 46.64 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 46.65 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 46.66 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 46.69 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 46.71 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 46.72 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 46.72.21 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 46.73 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 46.73.6 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 46.75 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 46.76 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 46.77 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 46.90 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 47.11 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 47.11.1 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 47.11.3 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 47.19 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 47.19.1 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 47.19.2 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 47.21 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 47.24 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 47.26 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 47.29 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 47.29.39 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 47.41.2 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 47.52.73 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 47.74.1 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 47.78 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 47.78.9 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 47.89.1 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 49.10 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 49.20 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 49.31 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 49.41 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 49.42 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 50.20 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 52.10 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 52.21 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 52.24 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 52.29 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 56.10.1 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 56.10.2 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 56.29 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 62.01 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 63.91 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 63.99 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 69.10 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 69.20 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 70.22 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 71.11 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 71.12 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 73.20 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 77.11 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 78.10 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 78.30 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 81.10 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 81.21 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 81.22 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 81.30 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 82.99 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 86.90 </span><span _ngcontent-ng-c1658467850="" class="ng-star-inserted" style="display: inline-block; font-size: 14px; margin: 2px;"> 96.09 </span><!----><!----></div>
<button type="button" pripple="" onclick="closebtnclose()" class="close_btn_close p-ripple p-element p-overlaypanel-close p-link ng-tns-c3157156003-8 ng-star-inserted" style=""><timesicon class="p-element p-icon-wrapper ng-tns-c3157156003-8 ng-star-inserted"><svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg" class="p-icon p-overlaypanel-close-icon" aria-hidden="true"><path d="M8.01186 7.00933L12.27 2.75116C12.341 2.68501 12.398 2.60524 12.4375 2.51661C12.4769 2.42798 12.4982 2.3323 12.4999 2.23529C12.5016 2.13827 12.4838 2.0419 12.4474 1.95194C12.4111 1.86197 12.357 1.78024 12.2884 1.71163C12.2198 1.64302 12.138 1.58893 12.0481 1.55259C11.9581 1.51625 11.8617 1.4984 11.7647 1.50011C11.6677 1.50182 11.572 1.52306 11.4834 1.56255C11.3948 1.60204 11.315 1.65898 11.2488 1.72997L6.99067 5.98814L2.7325 1.72997C2.59553 1.60234 2.41437 1.53286 2.22718 1.53616C2.03999 1.53946 1.8614 1.61529 1.72901 1.74767C1.59663 1.88006 1.5208 2.05865 1.5175 2.24584C1.5142 2.43303 1.58368 2.61419 1.71131 2.75116L5.96948 7.00933L1.71131 11.2675C1.576 11.403 1.5 11.5866 1.5 11.7781C1.5 11.9696 1.576 12.1532 1.71131 12.2887C1.84679 12.424 2.03043 12.5 2.2219 12.5C2.41338 12.5 2.59702 12.424 2.7325 12.2887L6.99067 8.03052L11.2488 12.2887C11.3843 12.424 11.568 12.5 11.7594 12.5C11.9509 12.5 12.1346 12.424 12.27 12.2887C12.4053 12.1532 12.4813 11.9696 12.4813 11.7781C12.4813 11.5866 12.4053 11.403 12.27 11.2675L8.01186 7.00933Z" fill="currentColor"></path></svg></timesicon><!----><!----></button><!----></div>
</body>

</html>
