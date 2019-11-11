--
--/* Drop Tables */
--
--DROP TABLE CALENDAR CASCADE CONSTRAINTS;
--DROP TABLE COMMENT_TABLE CASCADE CONSTRAINTS;
--DROP TABLE EVALUATION CASCADE CONSTRAINTS;
--DROP TABLE FILMOGRAPHY CASCADE CONSTRAINTS;
--DROP TABLE FOLLOW CASCADE CONSTRAINTS;
--DROP TABLE LIKE_REVIEW CASCADE CONSTRAINTS;
--DROP TABLE MOVIE_PRICE CASCADE CONSTRAINTS;
--DROP TABLE REVIEW CASCADE CONSTRAINTS;
--DROP TABLE STILLCUT CASCADE CONSTRAINTS;
--DROP TABLE WISH CASCADE CONSTRAINTS;
--DROP TABLE MOVIE CASCADE CONSTRAINTS;
--DROP TABLE MOVIE_PEOPLE CASCADE CONSTRAINTS;
--DROP TABLE QNA CASCADE CONSTRAINTS;
--DROP TABLE REALTIME_SEARCH CASCADE CONSTRAINTS;
--DROP TABLE USER_TABLE CASCADE CONSTRAINTS;




/* Create Tables */

CREATE TABLE CALENDAR
(
	-- 이벤트이름
	EVENT_NAME nvarchar2(50) NOT NULL,
	-- 이벤트 내용
	EVENT_CONTENT nvarchar2(2000) NOT NULL,
	-- 이벤트 시작 날짜
	EVENT_START date NOT NULL,
	-- 이벤트 종료 날짜
	EVENT_END date NOT NULL,
	-- 이벤트 발생 장소
	EVENT_PLACE nvarchar2(50) NOT NULL,
	PRIMARY KEY (EVENT_NAME)
);


CREATE TABLE COMMENT_TABLE
(
	-- 댓글번호
	COMMENT_NO nvarchar2(10) NOT NULL,
	-- 댓글내용
	COMMENT_CONTENT nvarchar2(500) NOT NULL,
	-- 댓글작성일
	COMMENT_DATE date DEFAULT SYSDATE NOT NULL,
	-- 유저아이디
	USER_ID nvarchar2(20) NOT NULL,
	-- 리뷰 고유번호
	REVIEW_NO nvarchar2(10) NOT NULL,
	PRIMARY KEY (COMMENT_NO)
);



CREATE TABLE EVALUATION
(
	-- 유저아이디
	USER_ID nvarchar2(20) NOT NULL,
	-- 영화 고유 번호
	MOVIE_NO nvarchar2(15) NOT NULL,
	-- 사용자가 영화를 평가한 점수
	EVALUATION_GRADE nvarchar2(10) NOT NULL,
	-- 사용자가 영화를 평가한 날짜
	EVALUATION_DATE date DEFAULT SYSDATE NOT NULL,
	PRIMARY KEY (USER_ID, MOVIE_NO)
);


CREATE TABLE FILMOGRAPHY
(
	-- 영화 고유 번호
	MOVIE_NO nvarchar2(15) NOT NULL,
	-- 영화인번호
	MOVIE_PEOPLE_NO nvarchar2(10) NOT NULL,
	PRIMARY KEY (MOVIE_NO, MOVIE_PEOPLE_NO)
);


CREATE TABLE FOLLOW
(
	-- 팔로잉 당하는 유저 아이디
	FOLLOWING nvarchar2(20) NOT NULL,
	-- 팔로우 하는 유저 아이디
	FOLLOWER nvarchar2(20) NOT NULL,
	PRIMARY KEY (FOLLOWING, FOLLOWER)
);


CREATE TABLE LIKE_REVIEW
(
	-- 유저아이디
	USER_ID nvarchar2(20) NOT NULL,
	-- 리뷰 고유번호
	REVIEW_NO nvarchar2(10) NOT NULL,
	PRIMARY KEY (USER_ID, REVIEW_NO)
);


CREATE TABLE MOVIE
(
	-- 영화 고유 번호
	MOVIE_NO nvarchar2(15) NOT NULL,
	-- 영화 제목
	MOVIE_TITLE nvarchar2(50) NOT NULL,
	-- 영화 줄거리
	MOVIE_CONTENT nvarchar2(2000) NOT NULL,
	-- 영화 관람 등급
	MOVIE_GRADE nvarchar2(50) NOT NULL,
	-- 영화 개봉 년도
	MOVIE_YEAR number(4,0) NOT NULL,
	-- 영화 원제목
	MOVIE_ORG_TITLE nvarchar2(50) NOT NULL,
	-- 영화 제작 국가
	MOVIE_COUNTRY nvarchar2(50) NOT NULL,
	-- 영화 장르
	MOVIE_GENRE nvarchar2(50) NOT NULL,
	PRIMARY KEY (MOVIE_NO)
);


CREATE TABLE MOVIE_PEOPLE
(
	-- 영화인번호
	MOVIE_PEOPLE_NO nvarchar2(10) NOT NULL,
	-- 영화인 이름
	MOVIE_PEOPLE_NAME nvarchar2(50) NOT NULL,
	-- 영화인 생년월일
	MOVIE_PEOPLE_BIRTH nvarchar2(20),
	-- 감독인지/배우인지 구분
	MOVIE_PEOPLE_JOB nvarchar2(10),
	-- 영화인국적
	MOVIE_PEOPLE_COUNTRY nvarchar2(50),
	PRIMARY KEY (MOVIE_PEOPLE_NO)
);


CREATE TABLE MOVIE_PRICE
(
	-- VOD제공처
	PROVIDER nvarchar2(50) NOT NULL,
	-- 영화 고유 번호
	MOVIE_NO nvarchar2(15) NOT NULL,
	-- VOD가격
	PRICE number(10) NOT NULL,
	PRIMARY KEY (PROVIDER, MOVIE_NO)
);


CREATE TABLE QNA
(
	-- 문의번호
	-- 
	QNA_NO nvarchar2(10) NOT NULL,
	-- 문의제목
	QNA_TITLE nvarchar2(50) NOT NULL,
	-- 문의내용
	QNA_CONTENT nvarchar2(2000) NOT NULL,
	-- 문의 상태
	QNA_STATUS nvarchar2(10) NOT NULL,
	-- 문의답변
	-- 
	QNA_ANSWER nvarchar2(2000),
	-- 유저아이디
	USER_ID nvarchar2(20) NOT NULL,
	PRIMARY KEY (QNA_NO)
);


CREATE TABLE REALTIME_SEARCH
(
	-- 키워드 명
	KEYWORD nvarchar2(50) NOT NULL,
	-- 검색 된 수 
	COUNT number(30) NOT NULL,
	PRIMARY KEY (KEYWORD)
);


CREATE TABLE REVIEW
(
	-- 리뷰 고유번호
	REVIEW_NO nvarchar2(10) NOT NULL,
	-- 유저아이디
	USER_ID nvarchar2(20) NOT NULL,
	-- 영화 고유 번호
	MOVIE_NO nvarchar2(15) NOT NULL,
	-- 리뷰 내용
	REVIEW_CONTENT nvarchar2(2000) NOT NULL,
	-- 리뷰작성날짜
	REVIEW_POSTDATE date DEFAULT SYSDATE NOT NULL,
	-- 공개여부
	-- 공개/비공개/팔로워공개
	PUBLIC_PRIVATE nvarchar2(20) NOT NULL,
	PRIMARY KEY (REVIEW_NO)
);


CREATE TABLE STILLCUT
(
	-- 스틸컷 번호
	STILLCUT_NO nvarchar2(10) NOT NULL,
	-- 이미지
	STILLCUT_IMAGE blob NOT NULL,
	-- 영화 고유 번호
	MOVIE_NO nvarchar2(15) NOT NULL,
	PRIMARY KEY (STILLCUT_NO)
);


CREATE TABLE USER_TABLE
(
	-- 유저아이디
	USER_ID nvarchar2(20) NOT NULL,
	-- 사용자 비밀번호
	USER_PWD nvarchar2(100) NOT NULL,
	-- 유저 이름
	USER_NAME nvarchar2(10) NOT NULL,
	-- 사용자 닉네임
	USER_NICK nvarchar2(10) NOT NULL,
	-- 사용자 휴대폰 번호
	USER_CONTACT number(11) NOT NULL,
	-- 사용자 이메일 주소
	USER_MAIL nvarchar2(30) NOT NULL,
	-- 사용가 가입 날짜
	USER_SIGNUP_DATE date DEFAULT SYSDATE NOT NULL,
	-- 사용자 프로필 사진
	USER_PROFILE blob,
	-- 사용자 자기 소개
	USER_SELF nvarchar2(2000) NOT NULL,
	PRIMARY KEY (USER_ID)
);


CREATE TABLE WISH
(
	-- 유저아이디
	USER_ID nvarchar2(20) NOT NULL,
	-- 영화 고유 번호
	MOVIE_NO nvarchar2(15) NOT NULL,
	PRIMARY KEY (USER_ID, MOVIE_NO)
);



/* Create Foreign Keys */

ALTER TABLE EVALUATION
	ADD FOREIGN KEY (MOVIE_NO)
	REFERENCES MOVIE (MOVIE_NO)
;


ALTER TABLE FILMOGRAPHY
	ADD FOREIGN KEY (MOVIE_NO)
	REFERENCES MOVIE (MOVIE_NO)
;


ALTER TABLE MOVIE_PRICE
	ADD FOREIGN KEY (MOVIE_NO)
	REFERENCES MOVIE (MOVIE_NO)
;


ALTER TABLE REVIEW
	ADD FOREIGN KEY (MOVIE_NO)
	REFERENCES MOVIE (MOVIE_NO)
;


ALTER TABLE STILLCUT
	ADD FOREIGN KEY (MOVIE_NO)
	REFERENCES MOVIE (MOVIE_NO)
;


ALTER TABLE WISH
	ADD FOREIGN KEY (MOVIE_NO)
	REFERENCES MOVIE (MOVIE_NO)
;


ALTER TABLE FILMOGRAPHY
	ADD FOREIGN KEY (MOVIE_PEOPLE_NO)
	REFERENCES MOVIE_PEOPLE (MOVIE_PEOPLE_NO)
;


ALTER TABLE COMMENT_TABLE
	ADD FOREIGN KEY (REVIEW_NO)
	REFERENCES REVIEW (REVIEW_NO)
;


ALTER TABLE LIKE_REVIEW
	ADD FOREIGN KEY (REVIEW_NO)
	REFERENCES REVIEW (REVIEW_NO)
;


ALTER TABLE COMMENT_TABLE
	ADD FOREIGN KEY (USER_ID)
	REFERENCES USER_TABLE (USER_ID)
;


ALTER TABLE EVALUATION
	ADD FOREIGN KEY (USER_ID)
	REFERENCES USER_TABLE (USER_ID)
;


ALTER TABLE FOLLOW
	ADD FOREIGN KEY (FOLLOWER)
	REFERENCES USER_TABLE (USER_ID)
;


ALTER TABLE FOLLOW
	ADD FOREIGN KEY (FOLLOWING)
	REFERENCES USER_TABLE (USER_ID)
;


ALTER TABLE LIKE_REVIEW
	ADD FOREIGN KEY (USER_ID)
	REFERENCES USER_TABLE (USER_ID)
;


ALTER TABLE QNA
	ADD FOREIGN KEY (USER_ID)
	REFERENCES USER_TABLE (USER_ID)
;


ALTER TABLE REVIEW
	ADD FOREIGN KEY (USER_ID)
	REFERENCES USER_TABLE (USER_ID)
;


ALTER TABLE WISH
	ADD FOREIGN KEY (USER_ID)
	REFERENCES USER_TABLE (USER_ID)
;



/* Comments */

COMMENT ON COLUMN CALENDAR.EVENT_NAME IS '이벤트이름';
COMMENT ON COLUMN CALENDAR.EVENT_CONTENT IS '이벤트 내용';
COMMENT ON COLUMN CALENDAR.EVENT_START IS '이벤트 시작 날짜';
COMMENT ON COLUMN CALENDAR.EVENT_END IS '이벤트 종료 날짜';
COMMENT ON COLUMN CALENDAR.EVENT_PLACE IS '이벤트 발생 장소';
COMMENT ON COLUMN COMMENT_TABLE.COMMENT_NO IS '댓글번호';
COMMENT ON COLUMN COMMENT_TABLE.COMMENT_CONTENT IS '댓글내용';
COMMENT ON COLUMN COMMENT_TABLE.COMMENT_DATE IS '댓글작성일';
COMMENT ON COLUMN COMMENT_TABLE.USER_ID IS '유저아이디';
COMMENT ON COLUMN COMMENT_TABLE.REVIEW_NO IS '리뷰 고유번호';
COMMENT ON COLUMN EVALUATION.USER_ID IS '유저아이디';
COMMENT ON COLUMN EVALUATION.MOVIE_NO IS '영화 고유 번호';
COMMENT ON COLUMN EVALUATION.EVALUATION_GRADE IS '사용자가 영화를 평가한 점수';
COMMENT ON COLUMN EVALUATION.EVALUATION_DATE IS '사용자가 영화를 평가한 날짜';
COMMENT ON COLUMN FILMOGRAPHY.MOVIE_NO IS '영화 고유 번호';
COMMENT ON COLUMN FILMOGRAPHY.MOVIE_PEOPLE_NO IS '영화인번호';
COMMENT ON COLUMN FOLLOW.FOLLOWING IS '팔로잉 당하는 유저 아이디';
COMMENT ON COLUMN FOLLOW.FOLLOWER IS '팔로우 하는 유저 아이디';
COMMENT ON COLUMN LIKE_REVIEW.USER_ID IS '유저아이디';
COMMENT ON COLUMN LIKE_REVIEW.REVIEW_NO IS '리뷰 고유번호';
COMMENT ON COLUMN MOVIE.MOVIE_NO IS '영화 고유 번호';
COMMENT ON COLUMN MOVIE.MOVIE_TITLE IS '영화 제목';
COMMENT ON COLUMN MOVIE.MOVIE_CONTENT IS '영화 줄거리';
COMMENT ON COLUMN MOVIE.MOVIE_GRADE IS '영화 관람 등급';
COMMENT ON COLUMN MOVIE.MOVIE_YEAR IS '영화 개봉 년도';
COMMENT ON COLUMN MOVIE.MOVIE_ORG_TITLE IS '영화 원제목';
COMMENT ON COLUMN MOVIE.MOVIE_COUNTRY IS '영화 제작 국가';
COMMENT ON COLUMN MOVIE.MOVIE_GENRE IS '영화 장르';
COMMENT ON COLUMN MOVIE_PEOPLE.MOVIE_PEOPLE_NO IS '영화인번호';
COMMENT ON COLUMN MOVIE_PEOPLE.MOVIE_PEOPLE_NAME IS '영화인 이름';
COMMENT ON COLUMN MOVIE_PEOPLE.MOVIE_PEOPLE_BIRTH IS '영화인 생년월일';
COMMENT ON COLUMN MOVIE_PEOPLE.MOVIE_PEOPLE_JOB IS '감독인지/배우인지 구분';
COMMENT ON COLUMN MOVIE_PEOPLE.MOVIE_PEOPLE_COUNTRY IS '영화인국적';
COMMENT ON COLUMN MOVIE_PRICE.PROVIDER IS 'VOD제공처';
COMMENT ON COLUMN MOVIE_PRICE.MOVIE_NO IS '영화 고유 번호';
COMMENT ON COLUMN MOVIE_PRICE.PRICE IS 'VOD가격';
COMMENT ON COLUMN QNA.QNA_NO IS '문의번호
';
COMMENT ON COLUMN QNA.QNA_TITLE IS '문의제목';
COMMENT ON COLUMN QNA.QNA_CONTENT IS '문의내용';
COMMENT ON COLUMN QNA.QNA_STATUS IS '문의 상태';
COMMENT ON COLUMN QNA.QNA_ANSWER IS '문의답변
';
COMMENT ON COLUMN QNA.USER_ID IS '유저아이디';
COMMENT ON COLUMN REALTIME_SEARCH.KEYWORD IS '키워드 명';
COMMENT ON COLUMN REALTIME_SEARCH.COUNT IS '검색 된 수 ';
COMMENT ON COLUMN REVIEW.REVIEW_NO IS '리뷰 고유번호';
COMMENT ON COLUMN REVIEW.USER_ID IS '유저아이디';
COMMENT ON COLUMN REVIEW.MOVIE_NO IS '영화 고유 번호';
COMMENT ON COLUMN REVIEW.REVIEW_CONTENT IS '리뷰 내용';
COMMENT ON COLUMN REVIEW.REVIEW_POSTDATE IS '리뷰작성날짜';
COMMENT ON COLUMN REVIEW.PUBLIC_PRIVATE IS '공개여부
공개/비공개/팔로워공개';
COMMENT ON COLUMN STILLCUT.STILLCUT_NO IS '스틸컷 번호';
COMMENT ON COLUMN STILLCUT.STILLCUT_IMAGE IS '이미지';
COMMENT ON COLUMN STILLCUT.MOVIE_NO IS '영화 고유 번호';
COMMENT ON COLUMN USER_TABLE.USER_ID IS '유저아이디';
COMMENT ON COLUMN USER_TABLE.USER_PWD IS '사용자 비밀번호';
COMMENT ON COLUMN USER_TABLE.USER_NAME IS '유저 이름';
COMMENT ON COLUMN USER_TABLE.USER_NICK IS '사용자 닉네임';
COMMENT ON COLUMN USER_TABLE.USER_CONTACT IS '사용자 휴대폰 번호';
COMMENT ON COLUMN USER_TABLE.USER_MAIL IS '사용자 이메일 주소';
COMMENT ON COLUMN USER_TABLE.USER_SIGNUP_DATE IS '사용가 가입 날짜';
COMMENT ON COLUMN USER_TABLE.USER_PROFILE IS '사용자 프로필 사진';
COMMENT ON COLUMN USER_TABLE.USER_SELF IS '사용자 자기 소개';
COMMENT ON COLUMN WISH.USER_ID IS '유저아이디';
COMMENT ON COLUMN WISH.MOVIE_NO IS '영화 고유 번호';



