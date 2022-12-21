use query

create table loginDtl(UserName varchar(30), UserId varchar(20), Password varchar(20), Role varchar(10));
select * from loginDtl;

insert into loginDtl values('Ashna','ashna@99','meenu@123','user'),
							('Meenu','mumu@04','ashu@1999','admin');

create table pagesDtl(pageid varchar(20), pagename varchar(20), pagedescs varchar(500));
select* from pagesDtl;

insert into pagesDtl values('p101','UserPage1','“Be yourself; everyone else is already taken.”― Oscar Wilde'),
							('p102','UserPage2','“So many books, so little time.”― Frank Zappa & “A room without books is like a body without a soul.”― Marcus Tullius Cicero');