package com.kosmo.movieing.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.movieing.service.LikeReviewDto;
import com.kosmo.movieing.service.LikeReviewService;

@Repository
public class LikeReviewDao implements LikeReviewService{

	@Resource(name="template")
	private SqlSessionTemplate template;

	@Override
	public boolean isLogin(Map map) {

		return false;
	}

	@Override
	public List<LikeReviewDto> selectList(Map map) {

		return template.selectList("selectLikeList", map);
	}

	@Override
	public int getTotalCount(Map map) {

		return template.selectOne("LikeOneReviewTotalCount",map);
	}

	@Override
	public LikeReviewDto selectOne(Map map) {

		return null;
	}

	@Override
	public int insert(Map map) {

		return template.insert("insertLike",map);
	}

	@Override
	public int update(Map map) {

		return 0;
	}

	@Override
	public int delete(Map map) {

		return template.delete("deleteLike",map);
	}

	@Override
	public int getTotalCountByMe(Map map) {

		return template.selectOne("LikeAllReviewTotalCount",map);
	}

	@Override
	public int getTotalCountByAll(Map map) {

		return template.selectOne("AllLikeOneReviewTotalCount",map);
	}

	@Override
	public List<LikeReviewDto> selectReviewNoList(Map map) {

		return template.selectList("selectReviewNoList", map);
	}


}
