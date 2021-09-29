$(function(){
	if (window.matchMedia('(max-width: 668px)').matches) {
		$('product_icon').html('<img src="" alt="product_icon">');
		$('material_icon').html('<img src="" alt="product_icon">');
		$('technique_icon').html('<img src="" alt="product_icon">');
		$('discuss_icon').html('<img src="" alt="product_icon">');
	} else if (window.matchMedia('(max-width:768px)').matches) {
		/* ウィンドウサイズ768以下の処理を記述 */
	} else if (window.matchMedia('(min-width:769px)').matches) {
		$('product_icon').html('<img src="" alt="product_icon">');
		$('material_icon').html('<img src="" alt="product_icon">');
		$('technique_icon').html('<img src="" alt="product_icon">');
		$('discuss_icon').html('<img src="" alt="product_icon">');
}})