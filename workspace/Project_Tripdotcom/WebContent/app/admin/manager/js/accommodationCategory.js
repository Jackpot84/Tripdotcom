// 페이지들
var accommodationCategory = document.accommodationCategory;
var hotelInformation = document.hotelInformation;
var tabs = document.getElementsByClassName("tabs");
var tab = document.getElementsByClassName("tab");


//정규표현식
var check_num = /[0-9]/;
var check_eng = /[a-zA-Z]/; 
var check_spc = /[~!@#$%^&*()_+|<>?:{}]/;
var check_kor = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;



// 상세분류 숨김처리
document.getElementById("stay_types").style.visibility = 'hidden';

// select 분기처리
function testChange(sVal) {
	var opt = $("#location option").length;

	if (sVal == "지역선택") {
		Regions = new Array("구역선택");
		vRegions = new Array("");
	} else if (sVal == "서울") {
		Regions = new Array("강남구", "강북구", "종로구");
//		vRegions = new Array("1-1", "1-2", "1-3");
	} else if (sVal == "강릉") {
		Regions = new Array("교동", "초당");
//		vRegions = new Array("2-1", "2-2");
	} else if (sVal == "부산") {
		Regions = new Array("수영구", "해운대구", "부산진구");
//		vRegions = new Array("3-1", "3-2", "3-3");
	} else {
		Regions = new Array("애월", "한림", "세화");
//		vRegions = new Array("4-1", "4-2", "4-3");
	}

	
	for (var i = 0; i < opt; i++) {
		accommodationCategory.location.options[0] = null;
	}

	for (var i = 0; i < Regions.length; i++) {
		accommodationCategory.location.options[i] = new Option(Regions[i]);
	}
	
//	, vRegions[i]

}

// 숙박시설 분류 클릭 시 파란색
let hotel = document.getElementsByClassName('hotel');
let guesthouse = document.getElementsByClassName('guesthouse');

let stay_type1 = document.getElementsByClassName('stay_type1');
let stay_type2 = document.getElementsByClassName('stay_type2');

let stay_type1_id = document.getElementById('stay_type1_id');
let stay_type2_id = document.getElementById('stay_type2_id');

let stay_type1_exp = document.getElementById('stay_type1_exp');
let stay_type2_exp = document.getElementById('stay_type2_exp');

let stay = null;
let stay_type = null;

function StayClick() {

	stay_type1[1].style.color ='black';
	stay_type1[2].style.color ='black';
	stay_type2[1].style.color ='black';
	stay_type2[2].style.color ='black';
	
	if (event.target.className.includes("hotel")) {
		hotel[1].style.color = "#007bff";
		hotel[2].style.color = "#007bff";
		guesthouse[1].style.color = "black";
		guesthouse[2].style.color = "black";

		stay = '호텔';
		
		// 숙박 시설분류 호텔 선택시 상세분류 노출
		document.getElementById("stay_types").style.visibility = 'visible';
		
		//호텔 선택시 상세분류
		stay_type1_id.innerText = '호텔';
		stay_type1_exp.innerText = '호텔 설명';
		
		stay_type2_id.innerText = '리조트';
		stay_type2_exp.innerText = '리조트 설명';

	} else if (event.target.className.includes("guesthouse")) {
		guesthouse[1].style.color = "#007bff";
		guesthouse[2].style.color = "#007bff";
		hotel[1].style.color = "black";
		hotel[2].style.color = "black";
		
		stay = '게스트하우스';
		
		// 숙박 시설 분류 게스트하우스 선택시 상세분류 노출
		document.getElementById("stay_types").style.visibility = 'visible';
		//게스트하우스 선택 시 상세분류
		stay_type1_id.innerText = '주택';
		stay_type1_exp.innerText = '주택 설명';

		stay_type2_id.innerText = '아파트';
		stay_type2_exp.innerText = '아파트 설명';
	}
	

}

for (var i = 0; i < hotel.length; i++) {
	hotel[i].addEventListener("click", StayClick);
}

for (var i = 0; i < guesthouse.length; i++) {
	guesthouse[i].addEventListener("click", StayClick);
}



// 상세분류 클릭시 파란색
function Stay_type_click(){
	
	if (event.target.className.includes("stay_type1")) {
		
		stay_type1[1].style.color = "#007bff";
		stay_type1[2].style.color = "#007bff";
		stay_type2[1].style.color = "black";
		stay_type2[2].style.color = "black";

		stay_type = document.getElementById("stay_type1_id").innerText;
		
	} else if (event.target.className.includes("stay_type2")) {
		
		stay_type2[1].style.color = "#007bff";
		stay_type2[2].style.color = "#007bff";
		stay_type1[1].style.color = "black";
		stay_type1[2].style.color = "black";
		
		stay_type = document.getElementById("stay_type2_id").innerText;
	}
}

for (var i = 0; i < stay_type1.length; i++) {
	stay_type1[i].addEventListener("click", Stay_type_click);
}

for (var i = 0; i < stay_type2.length; i++) {
	stay_type2[i].addEventListener("click", Stay_type_click);
}


// 1번째 페이지에서 각각의 값 담아주고 전송
function accomoCategory(){
	
	Stay = document.getElementsByName("stay")[0];
	Stay_type = document.getElementsByName("stay_type")[0];
	
	Stay.value = stay;
	Stay_type.value = stay_type;
	
	
	let region = accommodationCategory.region;
	let location = accommodationCategory.location;
	

	//validation check
	//지역 체크
	if(region.value == "지역선택"){
		alert("지역을 선택하세요!");
		region.focus();
		return false;
	}
	

	//숙박시설 분류 체크
	if( Stay.value =="" || Stay.value==null ){
		alert("숙박시설 분류를 선택해주세요!");
		return false;
	}
	
	
	//상세분류 체크
	if( Stay_type.value =="" || Stay_type.value==null ){
		alert("상세 분류를 선택해주세요!");
		return false;
	}
	
	
	accommodationCategory.submit();
	
}

// 2번째 페이지에서 전송
function hotelinfo(){
	
	let hotel_name_kor = hotelInformation.hotel_name_kor;
	let hotel_name_eng = hotelInformation.hotel_name_eng;
	
	//아이디
	if( hotel_name_kor.value==""){
		alert("빈칸을 입력하세요!");
		hotel_name_kor.focus();
		return false;
	}
	
		
	if(!check_kor.test(hotel_name_kor.value)){
		alert("한글만 입력하세요!");
		hotel_name_kor.focus();
		return false;
	}
	
	
	if(!check_eng.test(hotel_name_eng.value)){
		alert("영어만 입력하세요!");
		hotel_name_eng.focus();
		return false;
	}
	

	
	

	hotelInformation.submit();
	
}

//3번째 페이지에서 객실추가 
function roomAdd(){
	location.href="/app/admin/manager/managerAdd/hotelCategoryHead4.jsp";
}

function addBed(){
	let roomInformation = document.roomInformation;
	let div = document.createElement('div')
	let AddBed = document.getElementById("Addbed");
	
	div.innerHTML = AddBed.innerHTML;
	
	document.getElementById("field").appendChild(div);
}


function removeBed(obj){
	
	
	var child = document.getElementById("field");
	child.parentNode.removeChild(child);




}

function hotelRule(){
	location.href="hotelCategoryHead5.jsp";
}

function Facility(){
	location.href="hotelCategoryHead6.jsp";
}



