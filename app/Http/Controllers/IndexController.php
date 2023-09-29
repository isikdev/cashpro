<?php

namespace App\Http\Controllers;


use App\Models\Company;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Validation\ValidationException;
use TCG\Voyager\Facades\Voyager;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;


class IndexController extends Controller
{

	public function documentid($id){
		$res = '<html>

<head>
<meta http-equiv=Content-Type content="text/html; charset=utf-8">
<meta name=Generator content="Microsoft Word 15 (filtered)">
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin-top:0cm;
	margin-right:0cm;
	margin-bottom:8.0pt;
	margin-left:0cm;
	line-height:107%;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{font-family:"Calibri",sans-serif;}
.MsoPapDefault
	{margin-bottom:8.0pt;
	line-height:107%;}
@page WordSection1
	{size:595.3pt 841.9pt;
	margin:2.0cm 42.5pt 2.0cm 3.0cm;}
div.WordSection1
	{page:WordSection1;}
-->
</style>

</head>

<body lang=ru-UA>

<div class=WordSection1>';
		$cp = Company::where('id', $id)->first();
		$res .= '<h1>'.$cp->name.'</h1>';
		$res .= '<p>'.$cp->address.'</p>';
		$res .= '<p>ИНН: '.$cp->inn.'</p>';
		$res .= '<p>КПП: '.$cp->kpp.'</p>';
		$res .= '<p>ОГРН: '.$cp->ogrn.'</p>';
		$res .= '<p>р/c: '.$cp->pc.'</p>';
		$res .= '<p>БИК: '.$cp->bik.'</p>';
		$res .= '<p>k/c: '.$cp->kc.'</p>';
		$res .= '<p>Директор: '.$cp->director.'</p>';


	$res .= '</div>

</body>

</html>';
		file_put_contents($cp->id.'.html', $res);
		rename($cp->id.'.html', $cp->id.'.doc');
		header('Location: /'.$cp->id.'.doc');
		exit;

	}
	public function invoice(Request $request){
		return view('invoice', ['request'=>$request]);
	}
	public function breach(Request $request){
		return view('breach', ['request'=>$request]);
	}

	public function documents(Request $request){
		return view('documents', ['request'=>$request]);
	}

	

	public function control(Request $request){
		return view('control', ['request'=>$request]);
	}
	public function ajaxyear(Request $request){
		$request->session()->put('year', $request->year);
		$request->session()->put('n', $request->n);
		return 1;

	}
	public function ajaxyearodrff(Request $request){
		$res = '';
		$coms = Company::all();
		foreach($coms as $c){
			if(strpos($c->name, $request->tct) !== false || strpos($c->inn, $request->tct) !== false){
				$res .= '<div _ngcontent-ng-c3024498063="" bumz-card-product="" class="card-product ng-star-inserted" _nghost-ng-c1658467850="">
  <div _ngcontent-ng-c1658467850="" class="card-product_top">
  <div _ngcontent-ng-c1658467850="" class="card-product_login">'.$c->name.'</div><!----></div><div _ngcontent-ng-c1658467850="" class="card-product_bottom"><div _ngcontent-ng-c1658467850="" class="card-product_id"><p _ngcontent-ng-c1658467850=""> ИНН: <span _ngcontent-ng-c1658467850="">'.$c->inn.'</span></p><p _ngcontent-ng-c1658467850=""> КПП: <span _ngcontent-ng-c1658467850="">'.$c->kpp.'</span></p></div><div _ngcontent-ng-c1658467850="" class="card-product_sum">'.$c->number.'</div>
  <div _ngcontent-ng-c1658467850="" class="card-product_okved"> ОКВЭД <span _ngcontent-ng-c1658467850=""></span><i _ngcontent-ng-c1658467850="" class="pi pi-more ng-star-inserted " onclick="srtss(\"'.$c->okved.'\")"></i><!----><p-overlaypanel _ngcontent-ng-c1658467850="" class="p-element ng-tns-c3157156003-3 ng-star-inserted"><!----></p-overlaypanel></div><div _ngcontent-ng-c1658467850="" class="card-product_company-cart"><span _ngcontent-ng-c1658467850=""><a href="/docum/'.$c->id.'">Карточка <br _ngcontent-ng-c1658467850="">компании</a></span><div _ngcontent-ng-c1658467850="" class="card-product_info"><!----><!----></div></div></div></div>';
			}
  			
		}
  	return $res;	
	}

	public function ajaxyearod(Request $request){
		$res = '';
		$coms = Company::all();
		foreach($coms as $c){
			if(strpos($c->okved, $request->fc) !== false){
				$res .= '<div _ngcontent-ng-c3024498063="" bumz-card-product="" class="card-product ng-star-inserted" _nghost-ng-c1658467850="">
  <div _ngcontent-ng-c1658467850="" class="card-product_top">
  <div _ngcontent-ng-c1658467850="" class="card-product_login">'.$c->name.'</div><!----></div><div _ngcontent-ng-c1658467850="" class="card-product_bottom"><div _ngcontent-ng-c1658467850="" class="card-product_id"><p _ngcontent-ng-c1658467850=""> ИНН: <span _ngcontent-ng-c1658467850="">'.$c->inn.'</span></p><p _ngcontent-ng-c1658467850=""> КПП: <span _ngcontent-ng-c1658467850="">'.$c->kpp.'</span></p></div><div _ngcontent-ng-c1658467850="" class="card-product_sum">'.$c->number.'</div>
  <div _ngcontent-ng-c1658467850="" class="card-product_okved"> ОКВЭД <span _ngcontent-ng-c1658467850="">'.$request->fc.'</span><i _ngcontent-ng-c1658467850="" class="pi pi-more ng-star-inserted " onclick="srtss(\"'.$c->okved.'\")"></i><!----><p-overlaypanel _ngcontent-ng-c1658467850="" class="p-element ng-tns-c3157156003-3 ng-star-inserted"><!----></p-overlaypanel></div><div _ngcontent-ng-c1658467850="" class="card-product_company-cart"><span _ngcontent-ng-c1658467850=""><a href="/docum/'.$c->id.'">Карточка <br _ngcontent-ng-c1658467850="">компании</a></span><div _ngcontent-ng-c1658467850="" class="card-product_info"><!----><!----></div></div></div></div>';
			}
  			
		}
  	return $res;
	}

    public function index(Request $request){

    	if(Auth::check()){
    		$companys = Company::all();
    		return view('index', ['request' => $request, 'companys'=>$companys]);
    	}else{
    		return view('auth', ['request' => $request]);
    	}
		
    }

    public function logout(Request $request){
    	if(Auth::check()){
    		Auth::logout();
    	}
    	return redirect('/');
    }

    public function auth(Request $request){
    	$data = $request->all();

		//User::where('email', $data['email_login'])->where('password', $data['password_login'])

		$credentials = [
		    'email' => $data['login'],
		    'password' => $data['password'],
		];

		if (Auth::attempt($credentials)) {
		    // Пользователь успешно аутентифицирован
		    return 1;
		} else {
		    // Пользователь не аутентифицирован
		    return 0;
		}
    }
	
	
}


