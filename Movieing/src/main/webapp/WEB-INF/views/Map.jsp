<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
    .wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
    .wrap * {padding: 0;margin: 0;}
    .wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
    .info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
    .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
    .info .close:hover {cursor: pointer;}
    .info .body {position: relative;overflow: hidden;}
    .info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
    .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
    .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
    .info .link {color: #5085BB;}
</style>

<div class="container " style="padding-top: 200px">
	<div id="map" style="width:100%;height:350px;"></div>
</div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=67216b019c0bbf6c95c07b3ae2dad59a"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도의 중심좌표
    mapOption = { 
        center: new kakao.maps.LatLng(37.478335, 126.889029), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    }; 

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// 지도에 마커를 표시합니다 
var marker = new kakao.maps.Marker({
    map: map, 
    position: new kakao.maps.LatLng(37.477880, 126.889192)
});

// 커스텀 오버레이에 표시할 컨텐츠 입니다
// 커스텀 오버레이는 아래와 같이 사용자가 자유롭게 컨텐츠를 구성하고 이벤트를 제어할 수 있기 때문에
// 별도의 이벤트 메소드를 제공하지 않습니다 
var content = '<div class="wrap">' + 
            '    <div class="info">' + 
            '        <div class="title">' + 
            '            롯데시네마 가산디지털' + 
            '            <div class="close" onclick="closeOverlay()" title="닫기"></div>' + 
            '        </div>' + 
            '        <div class="body">' + 
            '            <div class="img">' +
            '                <img src="data:image/png;base64,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" width="73" height="70">' +
            '           </div>' + 
            '            <div class="desc">' + 
            '                <div class="ellipsis">서울 금천구 디지털로10길 9 하이힐아울렛 8층</div>' + 
            '                <div class="jibun ellipsis">(우)08514 (지번)가산동 60-8</div>' + 
            '                <div><a href="https://map.kakao.com/link/to/롯데시네마 가산디지털,37.477880, 126.889192" target="_blank" class="link">길찾기</a></div>' + 
            '            </div>' + 
            '        </div>' + 
            '    </div>' +    
            '</div>';

// 마커 위에 커스텀오버레이를 표시합니다
// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
var overlay = new kakao.maps.CustomOverlay({
    content: content,
    map: map,
    position: marker.getPosition()       
});

// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
kakao.maps.event.addListener(marker, 'click', function() {
    overlay.setMap(map);
});

// 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
function closeOverlay() {
    overlay.setMap(null);     
}
</script>
