CREATE TABLE `board`.`board` (
  `num` INT NOT NULL AUTO_INCREMENT,
  `pass` VARCHAR(45) NOT NULL,
  `userid` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `title` VARCHAR(45) NOT NULL,
  `content` VARCHAR(1000) NOT NULL,
  `readcount` INT NULL DEFAULT 0,
  `writedate` DATETIME NULL DEFAULT now(),
  PRIMARY KEY (`num`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;





CREATE TABLE `board`.`member` (
  `userid` VARCHAR(45) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `pwd` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `phone` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`userid`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


insert into member values('hong1', '홍길동', '1234', 'hong1@naver.com', '010-1234-5678');
insert into member values('hong2', '홍길서', '1234', 'hong2@naver.com', '010-2222-2222');
insert into member values('hong3', '홍길남', '1234', 'hong3@naver.com', '010-3333-3333');

insert into board(pass, userid, email, title, content)
values('1234', 'hong1', 'hong1@naver.com', '첫방문입니다', '반갑습니다.');
insert into board(pass, userid, email, title, content)
values('1234', 'hong2', 'hong2@naver.com', '칼국수', 'JMT');
insert into board(pass, userid, email, title, content)
values('1234', 'hong3', 'hong3@naver.com', '게시판 개설', '축하합니다');
insert into board(pass, userid, email, title, content)
values('1234', 'hong1', 'hong1@naver.com', '날씨', '너무 더워요');



CREATE TABLE `board`.`reply` (
  `replynum` INT NOT NULL AUTO_INCREMENT,
  `boardnum` INT NOT NULL,
  `userid` VARCHAR(45) NOT NULL,
  `writedate` DATETIME NOT NULL DEFAULT now(),
  `content` VARCHAR(500) NOT NULL,
  PRIMARY KEY (`replynum`),
  INDEX `f1_idx` (`boardnum` ASC) VISIBLE,
  INDEX `f2_idx` (`userid` ASC) VISIBLE,
  CONSTRAINT `f1`
    FOREIGN KEY (`boardnum`)
    REFERENCES `board`.`board` (`num`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `f2`
    FOREIGN KEY (`userid`)
    REFERENCES `board`.`member` (`userid`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

insert into reply(boardnum, userid, content) values(6, 'hong1', '수고하세요');
insert into reply(boardnum, userid, content) values(6, 'hong2', '반갑습니다');


select * from member;
select * from board;
select * from reply;