window.onload = function(){
	var form = document.getElementById('search');
	form.onsubmit = function() {
		var keyword = document.getElementById('keyword');
		if(keyword.value == '') {
			alert('검색어를 입력하세요!');
			keyword.focus();
			return false;
		}
	};
};