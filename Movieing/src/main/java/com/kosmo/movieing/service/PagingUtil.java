package com.kosmo.movieing.service;

public class PagingUtil {

	public static String pagingBootStrapStyle(int totalRecordCount,int pageSize,int blockPage,int nowPage){

		String pagingStr="<nav aria-label=\"Page navigation example\"><ul class=\"pagination\" >";

		//1.전체 페이지 구하기
		int totalPage= (int)(Math.ceil(((double)totalRecordCount/pageSize)));

		int intTemp = ((nowPage - 1) / blockPage) * blockPage + 1;

		//처음 및 이전을 위한 로직
		if(intTemp != 1){
			pagingStr+="<li class=\"page-item\">\r\n" +
					"<a class=\"page-link\" href='javascript:paging(1);'>\r\n" +
					"<span aria-hidden=\"true\">&laquo;</span>\r\n" +
					"</a>\r\n" +
					"</li>\r\n" +
					"<li class=\"page-item\">\r\n" +
					"<a class=\"page-link\" href='javascript:paging("+(intTemp - blockPage)+");' aria-label=\"Previous\">\r\n" +
					"<span aria-hidden=\"true\">&lsaquo;</span>\r\n" +
					"</a>\r\n" +
					"</li>";

		}

		//페이지 표시 제어를 위한 변수
		int blockCount = 1;

		//페이지를 뿌려주는 로직
		//블락 페이지 수만큼 혹은 마지막 페이지가 될때까지 페이지를 표시한다1
		while(blockCount <= blockPage && intTemp <= totalPage){  // 페이지 오버 를 체크
				//현재 페이지를 의미함
			if(intTemp == nowPage){//active
				pagingStr+="<li class='active page-item'><a  class=\"page-link\" href='javascript:paging("+intTemp+");'>"+intTemp+"</a></li>";
			}
		     else
		    	 pagingStr+="<li class=\"page-item\" ><a class=\"page-link\"  href='javascript:paging("+intTemp+");'>"+intTemp+"</a></li>";

			intTemp = intTemp + 1;
			blockCount = blockCount + 1;

		}

		//다음 및 마지막을 위한 로직

		if(intTemp <= totalPage){
			pagingStr+="<li>\r\n" +
					"<a class=\"page-link\" href='javascript:paging("+intTemp+");' aria-label=\"Next\">\r\n" +
					"<span aria-hidden=\"true\">&rsaquo;</span>\r\n" +
					"</a>\r\n" +
					"</li>\r\n" +
					"<li>\r\n" +
					"<a class=\"page-link\"  href='javascript:paging("+totalPage+");' >\r\n" +
					"<span aria-hidden=\"true\">&raquo;</span>\r\n" +
					"</a>\r\n" +
					"</li>";

		}
		pagingStr+="</ul></nav>";
		return pagingStr;
	}

}
