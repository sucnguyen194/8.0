<?php namespace App\Http\Controllers;

use App\Enums\SystemsModuleType;
use App\Models\Product;

class GalleryController extends Controller {

	public function index(){
		$galleries = Product::whereType(SystemsModuleType::GALLERY)->public()->langs()->get();

		return view('Gallery.index',compact('galleries'));
	}
}
