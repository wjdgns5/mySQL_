

/*
	-- 데이터 베이스 생성 방법 : shopdb 데이터 베이스를 생성한다.
	-- create database shopdb;

	-- 테이블 생성 방법 : DDL --> Data Definition Language : 데이터 정의 언어
	
	create table [테이블 명](
		속성1 char(8) not null, primary key,
		속성2 char(5) not null,
		속성3 char(20)
	);

	create table tb_member(
		memberID char(8) not null primary key, --> memberID 속성에 문자값 8개, 공백X, 기본키
        memberName char(5) not null, --> memberName 속성에 문자값 5개, 공백X
        memberAddress char(20) --> memberAddress 속성에 문자값 20개
	);
    
*/


/*	
	-- 데이터베이스 구축절차 -4
	-- 테이블 조회 : DML --> Data Manipulation Language : 데이터 조작 언어

	select *
	from tb_member;
    
*/


/*
	-- 테이블 데이터 입력 
    
	insert into [테이블명] (속성1, 속성2, 속성3)
    valuses ('string 값','string 값', 'string 값'),
			('string 값','string 값', 'string 값'),
            ('string 값','string 값', 'string 값'),
            ('string 값','string 값', 'string 값');
	
    -- 단일 표기
    insert into tb_member (memberID, memberName, memberAddress)
    values ('M000001', '홍길동', '서울특별시강남구역삼동123-456');
    
    -- 다중 표기
   insert into tb_member (memberID, memberName, memberAddress)
   values ('M000001', '홍길동', '서울특별시강남구역삼동123-456'),
		  ('M000002', '김철수', '서울특별시송파구잠실동789-123'),
		  ('M000003', '이영희', '부산광역시수영구광안동456-789');
	
*/


/*
	-- 데이터베이스 모델링 -5
    
    -- 데이터 사용방법
    use db_tenco_market;
	
    -- 고객 테이블 생성
    create table userTBL(
		userName char(3) not null primary key,
        birthYear int not null,
        addr char(2) not null,
        mobile char(12)
    );
    
    -- 구매 테이블 생성
    create table buyTBL(
		id int not null auto_increment,
        userName char(3) not null,
        prodName char(3) not null,
        price int not null,
        amount int,
        foreign key(userName) references userTBL(userName)
    );
    
*/


/*
	-- 테이블 생성과 제약 사항 연습 -7
    
    create database mydb;
    user mydb;
    
    --테이블 생성
    create table student(
		student_id int,
        name varchar(50) not null,
        grade int not null,
        major varchar(50) not null
    );
    
    select * from student;
    desc sutdent;
    
    --과목 테이블 생성
	create table subject(
		subject_id int,
        subject_name varchar(50) not null,
        credit int not null,
    );
    
    select *
    from subject;
    */
    
/*    
    desc student;
    -- 이미 생성된 테이블에 PK(기본키 - 제약조건) 추가해보기
    
    alter
    table student
    add primary key(student_id);
    
    alter
    table subject
    add primary key(subject_id);
    
    desc subject;
    
*/

/*
	create table `order` (
		id int primary key,
        price bigint,
        customer_name varchar(50),
        product_name varchar(20) not null,
        quantity int not null,
        order_data date not null
    );
    
    desc `order`;
    
    inser into `order` (id, price, customer_order, product_name, quantity, order_date)
    value (2, 15000, 'or123', '청방지', 3, '2024-05-30');
    
    select *
    from `order`;

*/

/*
	-- 테이블 생성시에 디폴트 값을 제약 설정하는 방법
    
    create table student(
		student_id int primary key,
        name varchar(50), not null,
        grade int not null,
        major varchar(50) default '미정' not null
    );
    
    desc student;
    
    insert into student(student_id, name, grade, major)
    values(1, '홍길동', 3, '컴퓨터공학과')
    
    -- 디폴트 제약을 사용했을 때
    insert into student(student_id, name, grade)
    values(2, '길철수', 1);
    
    -- 컬럼명  생략 버전
    insert into student(3, '이영희', 4, '경영학과');
    
    -- 디폴트 제약을 사용했을 때 값을 넣은 방법
    insert into student(student_id, name, grade, major)
    values(4, "야스오", 2, default);
    
    -- delete from 구문을 사용할 때는 (실무) 반드시 필터를 걸자
    delete
    from student
    where student_id = 4;
  
*/

/*
	-- 1. grade가 3인 학생들 조회 하기 (특정 데이터를 지정하지 않으면 전부 출력 - 컬럼)
	select *
    from student
    where grade = 3;
  
	-- 2. 이름이 홍길동인 학생 조회 하기 
    select *
    from student
    where name = "홍길동";
  
	--3. 학번이 1부터 10까지인 학생들 조회하기 (between )
    select *
    from student
    where student_id between 1 and 10;
  
  
	-- 4. 학과가 컴퓨터 공학과 그리고, 학년이 2학년인 학생들만 조회 해줘 
    select *
    from student
    where major = "컴퓨터 공학과" and grade = 2;
  
	-- 5. 학과가 컴퓨터공학과 이거나(또는) 학년이 2학년인 학생들을 조회 해주세요
    select *
    from student
    where major = "컴퓨터 공학과" or grade = 2;
  
	-- 6. 학생 이름이 홍길동이 아닌 학생들을 조회해주세요
    select *
    from student
    where name <> "홍길동";
    
    select *
    from student
    where != "홍길동";
  
	-- 7. 학생들의 학년이 2학년 이상인 사람들을 조회 
    select *
    from student
    where grade >=2;
   
	-- 8. 학생들의 학년이 2학년 미만인 사람들을 조회 
    select *
    from student
    where grade <2;
  
	-- 9. 학년이 1학년 이거나 3학년인, 4학년 학생들 조회하기 
	-- IN 으로 사용 
    
    select *
    from student
    where grade(1, 3, 4);
    
    select *
    from student
    where grade !=2;

*/
