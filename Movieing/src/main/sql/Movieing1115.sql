
/* Drop Tables */

DROP TABLE auth_security CASCADE CONSTRAINTS;
DROP TABLE BUY CASCADE CONSTRAINTS;
DROP TABLE CALENDAR CASCADE CONSTRAINTS;
DROP TABLE COMMENT_TABLE CASCADE CONSTRAINTS;
DROP TABLE EVALUATION CASCADE CONSTRAINTS;
DROP TABLE FILMOGRAPHY CASCADE CONSTRAINTS;
DROP TABLE FOLLOW CASCADE CONSTRAINTS;
DROP TABLE GOODS CASCADE CONSTRAINTS;
DROP TABLE LIKE_REVIEW CASCADE CONSTRAINTS;
DROP TABLE MOVIE_PRICE CASCADE CONSTRAINTS;
DROP TABLE REVIEW CASCADE CONSTRAINTS;
DROP TABLE STILLCUT CASCADE CONSTRAINTS;
DROP TABLE WISH CASCADE CONSTRAINTS;
DROP TABLE MOVIE CASCADE CONSTRAINTS;
DROP TABLE MOVIE_PEOPLE CASCADE CONSTRAINTS;
DROP TABLE NOTICE CASCADE CONSTRAINTS;
DROP TABLE QNA CASCADE CONSTRAINTS;
DROP TABLE REALTIME_SEARCH CASCADE CONSTRAINTS;
DROP TABLE TAG CASCADE CONSTRAINTS;
DROP TABLE USER_TABLE CASCADE CONSTRAINTS;

drop sequence seq_review;
drop sequence seq_qna;



/* Create Tables */




CREATE TABLE BUY
(
   -- 상품번호
   GOODS_NO number(10) NOT NULL,
   -- 유저아이디
   USER_ID nvarchar2(10) NOT NULL
);


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
   COMMENT_NO number(10) NOT NULL,
   -- 댓글내용
   COMMENT_CONTENT nvarchar2(500) NOT NULL,
   -- 댓글작성일
   COMMENT_DATE date DEFAULT SYSDATE NOT NULL,
   -- 유저아이디
   USER_ID nvarchar2(10) NOT NULL,
   -- 리뷰 고유번호
   REVIEW_NO number(10) NOT NULL,
   PRIMARY KEY (COMMENT_NO)
);


CREATE TABLE EVALUATION
(
   -- 유저아이디
   USER_ID nvarchar2(10) NOT NULL,
   -- 영화진흥원 코드
   --
   MOVIE_NO nvarchar2(15) NOT NULL,
   -- 사용자가 영화를 평가한 점수
   EVALUATION_GRADE number(3,0) NOT NULL,
   -- 사용자가 영화를 평가한 날짜
   EVALUATION_DATE date DEFAULT SYSDATE NOT NULL,
   PRIMARY KEY (USER_ID, MOVIE_NO)
);


CREATE TABLE FILMOGRAPHY
(
   -- 영화진흥원 코드
   --
   MOVIE_NO nvarchar2(15) NOT NULL,
   -- 영화인번호
   MOVIE_PEOPLE_NO nvarchar2(10) NOT NULL,
   PRIMARY KEY (MOVIE_NO, MOVIE_PEOPLE_NO)
);


CREATE TABLE FOLLOW
(
   -- 팔로잉 당하는 유저 아이디
   FOLLOWING nvarchar2(10) NOT NULL,
   -- 팔로우 하는 유저 아이디
   FOLLOWER nvarchar2(10) NOT NULL,
   PRIMARY KEY (FOLLOWING, FOLLOWER)
);


CREATE TABLE GOODS
(
   -- 상품번호
   GOODS_NO number(10) NOT NULL,
   NAMING nvarchar2(50) NOT NULL,
   PRICE number(10) NOT NULL,
   PRIMARY KEY (GOODS_NO)
);


CREATE TABLE LIKE_REVIEW
(
   -- 유저아이디
   USER_ID nvarchar2(10) NOT NULL,
   -- 리뷰 고유번호
   REVIEW_NO number(10) NOT NULL,
   -- 좋아요 한 날짜
   --
   LIKE_DATE date DEFAULT SYSDATE NOT NULL,
   PRIMARY KEY (USER_ID, REVIEW_NO)
);


CREATE TABLE MOVIE
(
   -- 영화진흥원 코드
   --
   -- 영화진흥원 코드
   MOVIE_NO nvarchar2(100) NOT NULL,
   -- 영화 제목
   MOVIE_TITLE nvarchar2(50) NOT NULL,
   -- 영화 줄거리
   MOVIE_CONTENT nvarchar2(2000),
   -- 영화 관람 등급
   MOVIE_GRADE nvarchar2(1000),
   -- 영화 개봉 년도
   MOVIE_YEAR number(4,0),
   -- 영화 원제목
   MOVIE_ORG_TITLE nvarchar2(50),
   -- 영화 제작 국가
   MOVIE_COUNTRY nvarchar2(50),
   -- 영화 장르
   MOVIE_GENRE nvarchar2(50),
   -- 영화 이미지
   MOVIE_IMG nvarchar2(2000),
   -- 영화 감독
   MOVIE_DIRECTOR nvarchar2(1000),
   -- 네이버 가격
   NAVER_PRICE nvarchar2(100),
   -- 웨이브 가격
   WAVVE_PRICE nvarchar2(100),
   -- 구글 가격
   GOOGLE_PRICE nvarchar2(100),
   -- 영화배우
   
   PRIMARY KEY (MOVIE_NO)
   -- 네이버 영화 코드
);


CREATE TABLE MOVIE_PEOPLE
(
   -- 영화인번호
   MOVIE_PEOPLE_NO nvarchar2(10) NOT NULL,
   -- 영화인 이름
   MOVIE_PEOPLE_NAME nvarchar2(50) NOT NULL,
   -- 감독/배우 구분
   MOVIE_PEOPLE_JOB nvarchar2(10),
   -- 출신
   MOVIE_PEOPLE_COUNTRY nvarchar2(50),
   -- 이미지
   MOVIE_PEOPLE_IMG nvarchar2(1000),
   PRIMARY KEY (MOVIE_PEOPLE_NO)
);


CREATE TABLE MOVIE_PRICE
(
   -- VOD제공처
   PROVIDER nvarchar2(50) NOT NULL,
   -- 영화진흥원 코드
   --
   MOVIE_NO nvarchar2(15) NOT NULL,
   -- VOD가격
   PRICE number(10) NOT NULL,
   PRIMARY KEY (PROVIDER, MOVIE_NO)
);


CREATE TABLE NOTICE
(
   -- 공지사항 번호
   --
   NOTI_NO number(10) NOT NULL,
   -- 공지사항 제목
   NOTI_TITLE nvarchar2(50) NOT NULL,
   -- 공지내용
   NOTI_CONTENT nvarchar2(2000) NOT NULL,
   -- 공지 날짜
   NOTI_DATE date DEFAULT SYSDATE,
   PRIMARY KEY (NOTI_NO)
);


CREATE TABLE QNA
(
   -- 문의번호
   --
   QNA_NO number(10) NOT NULL,
   -- 문의제목
   QNA_TITLE nvarchar2(50) NOT NULL,
   -- 문의내용
   QNA_CONTENT nvarchar2(2000) NOT NULL,
   -- 유저아이디
   USER_ID nvarchar2(10) NOT NULL,
   -- 문의 작성일
   POSTDATE date DEFAULT SYSDATE NOT NULL,
   -- 문의답변
   -- (댓글)
   QNA_ANSWER nvarchar2(2000),
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
   REVIEW_NO number(10) NOT NULL,
   -- 유저아이디
   USER_ID nvarchar2(10) NOT NULL,
   -- 영화진흥원 코드
   --
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
   -- 영화진흥원 코드
   --
   MOVIE_NO nvarchar2(15) NOT NULL,
   PRIMARY KEY (STILLCUT_NO)
);


CREATE TABLE TAG
(
   TAG nvarchar2(50) NOT NULL,
   GENRE nvarchar2(50) NOT NULL,
   PRIMARY KEY (TAG)
);


CREATE TABLE USER_TABLE
(
   -- 유저아이디
   USER_ID nvarchar2(10) NOT NULL,
   -- 사용자 비밀번호
   USER_PWD nvarchar2(100) NOT NULL,
   -- 유저 이름
   USER_NAME nvarchar2(10) NOT NULL,
   -- 사용자 닉네임
   USER_NICK nvarchar2(10) NOT NULL,
   -- 사용자 휴대폰 번호
   USER_CONTACT nvarchar2(11) NOT NULL,
   -- 사용자 이메일 주소
   USER_MAIL nvarchar2(30) NOT NULL,
   -- 사용가 가입 날짜
   USER_SIGNUP_DATE date DEFAULT SYSDATE NOT NULL,
   -- 사용자 프로필 사진
   USER_PROFILE nvarchar2(2000),
   -- 사용자 자기 소개
   USER_SELF nvarchar2(2000) NOT NULL,
   PRIMARY KEY (USER_ID)
);


CREATE TABLE WISH
(
   -- 유저아이디
   USER_ID nvarchar2(10) NOT NULL,
   -- 영화진흥원 코드
   --
   MOVIE_NO nvarchar2(15) NOT NULL,
   -- 보고싶어요 한 날짜
   WISH_DATE date DEFAULT SYSDATE,
   PRIMARY KEY (USER_ID, MOVIE_NO)
);

--시큐리티를 위한 테이블
CREATE TABLE auth_security(
    USER_ID nvarchar2(10) not null REFERENCES USER_TABLE (USER_ID),
   ENABLED number DEFAULT 1,
   AUTHORITY varchar2(20) DEFAULT 'ROLE_USER'
);



/* Create Foreign Keys */

ALTER TABLE BUY
   ADD FOREIGN KEY (GOODS_NO)
   REFERENCES GOODS (GOODS_NO)
;


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


ALTER TABLE BUY
   ADD FOREIGN KEY (USER_ID)
   REFERENCES USER_TABLE (USER_ID)
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
   ADD FOREIGN KEY (FOLLOWING)
   REFERENCES USER_TABLE (USER_ID)
;


ALTER TABLE FOLLOW
   ADD FOREIGN KEY (FOLLOWER)
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

ALTER TABLE BUY  ADD QUANTITY NUMBER(10) NOT NULL;
ALTER TABLE USER_TABLE DROP COLUMN USER_PROFILE;
ALTER TABLE USER_TABLE  ADD USER_PROFILE NVARCHAR2(1000);
ALTER TABLE MOVIE_PEOPLE DROP COLUMN MOVIE_PEOPLE_BIRTH;
ALTER TABLE MOVIE_PEOPLE  ADD MOVIE_PEOPLE_IMG NVARCHAR2(1000);

/* Comments */
--
--COMMENT ON COLUMN auth_security.USER_ID IS '유저아이디';
--COMMENT ON COLUMN BUY.GOODS_NO IS '상품번호';
--COMMENT ON COLUMN BUY.USER_ID IS '유저아이디';
--COMMENT ON COLUMN CALENDAR.EVENT_NAME IS '이벤트이름';
--COMMENT ON COLUMN CALENDAR.EVENT_CONTENT IS '이벤트 내용';
--COMMENT ON COLUMN CALENDAR.EVENT_START IS '이벤트 시작 날짜';
--COMMENT ON COLUMN CALENDAR.EVENT_END IS '이벤트 종료 날짜';
--COMMENT ON COLUMN CALENDAR.EVENT_PLACE IS '이벤트 발생 장소';
--COMMENT ON COLUMN COMMENT_TABLE.COMMENT_NO IS '댓글번호';
--COMMENT ON COLUMN COMMENT_TABLE.COMMENT_CONTENT IS '댓글내용';
--COMMENT ON COLUMN COMMENT_TABLE.COMMENT_DATE IS '댓글작성일';
--COMMENT ON COLUMN COMMENT_TABLE.USER_ID IS '유저아이디';
--COMMENT ON COLUMN COMMENT_TABLE.REVIEW_NO IS '리뷰 고유번호';
--COMMENT ON COLUMN EVALUATION.USER_ID IS '유저아이디';
--COMMENT ON COLUMN EVALUATION.MOVIE_NO IS '영화진흥원 코드
--';
--COMMENT ON COLUMN EVALUATION.EVALUATION_GRADE IS '사용자가 영화를 평가한 점수';
--COMMENT ON COLUMN EVALUATION.EVALUATION_DATE IS '사용자가 영화를 평가한 날짜';
--COMMENT ON COLUMN FILMOGRAPHY.MOVIE_NO IS '영화진흥원 코드
--';
--COMMENT ON COLUMN FILMOGRAPHY.MOVIE_PEOPLE_NO IS '영화인번호';
--COMMENT ON COLUMN FOLLOW.FOLLOWING IS '팔로잉 당하는 유저 아이디';
--COMMENT ON COLUMN FOLLOW.FOLLOWER IS '팔로우 하는 유저 아이디';
--COMMENT ON COLUMN GOODS.GOODS_NO IS '상품번호';
--COMMENT ON COLUMN LIKE_REVIEW.USER_ID IS '유저아이디';
--COMMENT ON COLUMN LIKE_REVIEW.REVIEW_NO IS '리뷰 고유번호';
--COMMENT ON COLUMN LIKE_REVIEW.LIKE_DATE IS '좋아요 한 날짜
--';
--COMMENT ON COLUMN MOVIE.MOVIE_NO IS '영화진흥원 코드
--';
--COMMENT ON COLUMN MOVIE.MOVIE_TITLE IS '영화 제목';
--COMMENT ON COLUMN MOVIE.MOVIE_CONTENT IS '영화 줄거리';
--COMMENT ON COLUMN MOVIE.MOVIE_GRADE IS '영화 관람 등급';
--COMMENT ON COLUMN MOVIE.MOVIE_YEAR IS '영화 개봉 년도';
--COMMENT ON COLUMN MOVIE.MOVIE_ORG_TITLE IS '영화 원제목';
--COMMENT ON COLUMN MOVIE.MOVIE_COUNTRY IS '영화 제작 국가';
--COMMENT ON COLUMN MOVIE.MOVIE_GENRE IS '영화 장르';
--COMMENT ON COLUMN MOVIE.NAVER_CODE IS '네이버 영화 코드
--';
--COMMENT ON COLUMN MOVIE_PEOPLE.MOVIE_PEOPLE_NO IS '영화인번호';
--COMMENT ON COLUMN MOVIE_PEOPLE.MOVIE_PEOPLE_NAME IS '영화인 이름';
--COMMENT ON COLUMN MOVIE_PEOPLE.MOVIE_PEOPLE_BIRTH IS '영화인 생년월일';
--COMMENT ON COLUMN MOVIE_PEOPLE.MOVIE_PEOPLE_JOB IS '감독인지/배우인지 구분';
--COMMENT ON COLUMN MOVIE_PEOPLE.MOVIE_PEOPLE_COUNTRY IS '영화인국적';
--COMMENT ON COLUMN MOVIE_PRICE.PROVIDER IS 'VOD제공처';
--COMMENT ON COLUMN MOVIE_PRICE.MOVIE_NO IS '영화진흥원 코드
--';
--COMMENT ON COLUMN MOVIE_PRICE.PRICE IS 'VOD가격';
--COMMENT ON COLUMN NOTICE.NOTI_NO IS '공지사항 번호
--';
--COMMENT ON COLUMN NOTICE.NOTI_TITLE IS '공지사항 제목';
--COMMENT ON COLUMN NOTICE.NOTI_CONTENT IS '공지내용';
--COMMENT ON COLUMN NOTICE.NOTI_DATE IS '공지 날짜';
--COMMENT ON COLUMN QNA.QNA_NO IS '문의번호
--';
--COMMENT ON COLUMN QNA.QNA_TITLE IS '문의제목';
--COMMENT ON COLUMN QNA.QNA_CONTENT IS '문의내용';
--COMMENT ON COLUMN QNA.USER_ID IS '유저아이디';
--COMMENT ON COLUMN QNA.POSTDATE IS '문의 작성일';
--COMMENT ON COLUMN QNA.QNA_ANSWER IS '문의답변
--(댓글)';
--COMMENT ON COLUMN REALTIME_SEARCH.KEYWORD IS '키워드 명';
--COMMENT ON COLUMN REALTIME_SEARCH.COUNT IS '검색 된 수 ';
--COMMENT ON COLUMN REVIEW.REVIEW_NO IS '리뷰 고유번호';
--COMMENT ON COLUMN REVIEW.USER_ID IS '유저아이디';
--COMMENT ON COLUMN REVIEW.MOVIE_NO IS '영화진흥원 코드
--';
--COMMENT ON COLUMN REVIEW.REVIEW_CONTENT IS '리뷰 내용';
--COMMENT ON COLUMN REVIEW.REVIEW_POSTDATE IS '리뷰작성날짜';
--COMMENT ON COLUMN REVIEW.PUBLIC_PRIVATE IS '공개여부
--공개/비공개/팔로워공개';
--COMMENT ON COLUMN STILLCUT.STILLCUT_NO IS '스틸컷 번호';
--COMMENT ON COLUMN STILLCUT.STILLCUT_IMAGE IS '이미지';
--COMMENT ON COLUMN STILLCUT.MOVIE_NO IS '영화진흥원 코드
--';
--COMMENT ON COLUMN USER_TABLE.USER_ID IS '유저아이디';
--COMMENT ON COLUMN USER_TABLE.USER_PWD IS '사용자 비밀번호';
--COMMENT ON COLUMN USER_TABLE.USER_NAME IS '유저 이름';
--COMMENT ON COLUMN USER_TABLE.USER_NICK IS '사용자 닉네임';
--COMMENT ON COLUMN USER_TABLE.USER_CONTACT IS '사용자 휴대폰 번호';
--COMMENT ON COLUMN USER_TABLE.USER_MAIL IS '사용자 이메일 주소';
--COMMENT ON COLUMN USER_TABLE.USER_SIGNUP_DATE IS '사용가 가입 날짜';
--COMMENT ON COLUMN USER_TABLE.USER_PROFILE IS '사용자 프로필 사진';
--COMMENT ON COLUMN USER_TABLE.USER_SELF IS '사용자 자기 소개';
--COMMENT ON COLUMN WISH.USER_ID IS '유저아이디';
--COMMENT ON COLUMN WISH.MOVIE_NO IS '영화진흥원 코드
--';
--COMMENT ON COLUMN WISH.WISH_DATE IS '보고싶어요 한 날짜';


--시퀀스
create sequence seq_review nocache nocycle;
create sequence seq_qna nocache nocycle;
create sequence seq_comment nocache nocycle;

--유저정보
insert into user_table values( 'KIM','1234','김길동','Road_dong','01055557777','email',sysdate,'하이',null  );

insert into user_table values( 'LEE','1234','이길동','LEELEE','01034243447','email',sysdate,'오오',null  );
insert into user_table values( 'PARK','1234','박길동','박수무당','01012345678','email',sysdate,'아아아아',null );

--영화정보
insert into movie values('20198182','아내를 죽였다','"친구와 술을 마신 후 곯아떨어진 ‘정호’는 숙취로 눈을 뜬 다음 날 아침,
별거 중이던 아내 ‘미영’이 살해당했다는 충격적인 소식을 듣게 된다.

그 순간, 자신의 옷에 묻은 핏자국과 피 묻은 칼을 발견한 ‘정호’.
가장 강력한 용의자로 지목된 그는 경찰의 눈을 피해 도망친다.

알리바이를 입증하고 싶지만 간밤의 기억은 모두 사라진 상태.
스스로를 믿을 수 없는 최악의 상황에서
‘정호’는 어젯밤의 행적을 따라가기 시작하는데…

끊어진 기억과 기억 사이,
사라진 모든 것을 의심하라."','15세이상관람가',2019,'Killed My Wife','한국','스릴러','https://movie-phinf.pstatic.net/20191113_200/1573606889920v3T1B_JPEG/movie_image.jpg','김하라',' ',' ',' ');
--보고싶어요
insert into wish values('KIM','20182669',SYSDATE);

--평가
insert into EVALUATION values('KIM','20182669',4,SYSDATE);

--리뷰
insert into review values(seq_review.nextval,'KIM','20182669','재밌었다',SYSDATE,'Y');

--qna
insert into qna(qna_no, qna_title, qna_content, user_id) values(seq_qna.nextval, '제목1','내용1', 'LEE');
--시큐리티 사용을 위한 권한 추가
insert into auth_security values('KIM',default,default);