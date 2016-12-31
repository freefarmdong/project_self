set names UTF8;
drop database if exists ear;
create database ear charset=utf8;
use ear;
create table ear_user(
  uid int primary key auto_increment,
  uname varchar(32),
  upwd varchar(32),
  email varchar(128)
);
insert into ear_user values(null,'chenwenyan','123456','123456@qq.com');
insert into ear_user values(null,'naicha','456789','456789@qq.com');
select * from ear_user;
create table ear_writer(
  wid int primary key auto_increment,
  wname varchar(32),
  wimg varchar(32),
  wtopic varchar(64),
  wintro varchar(128)
);
insert into ear_writer values(null,'NJ晨晨，漫步心情，有声电台','images/article_01.jpg','【漫步心情】假如你我不曾相遇','假如你我不曾相遇，你的世界里没有我，你的世界里没有我，你还是那个天真的你，我还是那个懵懂的我。');
insert into ear_writer values(null,'NJ诗酱，漫步心情，柚子说','images/article_02.jpg','【柚子说】愚蠢','是的，无知不可怕，但如果你的无知影响了他人，那么，这种无知就是一种罪恶。');
insert into ear_writer values(null,'NJ柳柳，倾听情感调频，有声电台','images/article_03.jpg','【倾听情感调频】你未痊愈，我怎敢老','因为爱你，她在最艰难的岁月里都没想过放弃，也因为爱你，她用尽了最动人的洪荒之力......');
insert into ear_writer values(null,'NJ凉城，有声电台，灵魂电台','images/article_04.jpg','【灵魂电台】有个很好的男孩爱过我','我终于想面对自己的内心了，接受你已不在我身边的事实，我牵着一个爱我的人的手，并且爱上他，然后勇敢走下去走过你不曾陪我走完的人生');
insert into ear_writer values(null,'NJ璐璐，你和时间，有声电台','images/article_05.jpg','【关于你和时间】谢谢你曾来过我的生命','对已经过去的事情最好的尊重是绝口不提，人生就是一个不断说再见的过程啊');
insert into ear_writer values(null,'NJ不会游泳的鱼，一只鱼，有声电台','images/article_06.jpg','【一只鱼】永远的门','一扇画在墙上的门！');
insert into ear_writer values(null,'NJ沈良年，暖地电台，有声电台','images/article_07.jpg','【暖地电台】有些事，你有心让他过去，他一定会过去的','怕黑可以开灯，怕伤就别听慢歌，怕手贱就去忙点别的事情，作归作，心情已经不好了，那就对身体好点');
insert into ear_writer values(null,'毛毛有声电台，静听FM，有声电台','images/article_08.jpg','【静听FM】青春如烟','这个世界每天都在重复着相同的夜晚，但想你的夜晚总有些特别，我的思念如潮，如星辰浩瀚');
insert into ear_writer values(null,'漫漫，慢走漫说，有声电台','images/article_09.jpg','【慢走漫说】你是如何忘记那个人的','不要为了忘记而忘记，时间会证明，你终将会忘记，而那个人，也终将会成为曾经');
insert into ear_writer values(null,'诗酱，有声电台，柚子说','images/article_10.jpg','【柚子说】我的美丽不是你犯罪的借口','近年来，无论是成年还是未成年，无论是青春美丽还是垂垂老矣，各个阶级都有受害的女性朋友');
insert into ear_writer values(null,'紫萱，听紫萱说，有声电台 ','images/article_11.jpg','【听紫萱说】谢谢你曾喜欢过我','我一直相信L你的那个姑娘会在不久的将来来到你的身边');
insert into ear_writer values(null,'雪樱，雪樱私语，有声电台 ','images/article_12.jpg','【雪樱私语】当我们离人性太近','我不知道一个傻白甜严重的世界是怎样的，我只知道，即便我们看到的世界可能并不美好，或者有时会有些阴暗，但我们内心的世界始终是温暖而明亮的');
insert into ear_writer values(null,'NJ晨晨，漫步心情，有声电台','images/article_01.jpg','【漫步心情】假如你我不曾相遇','假如你我不曾相遇，你的世界里没有我，你的世界里没有我，你还是那个天真的你，我还是那个懵懂的我。');
insert into ear_writer values(null,'NJ诗酱，漫步心情，柚子说','images/article_02.jpg','【柚子说】愚蠢','是的，无知不可怕，但如果你的无知影响了他人，那么，这种无知就是一种罪恶。');
insert into ear_writer values(null,'NJ柳柳，倾听情感调频，有声电台','images/article_03.jpg','【倾听情感调频】你未痊愈，我怎敢老','因为爱你，她在最艰难的岁月里都没想过放弃，也因为爱你，她用尽了最动人的洪荒之力......');
insert into ear_writer values(null,'NJ凉城，有声电台，灵魂电台','images/article_04.jpg','【灵魂电台】有个很好的男孩爱过我','我终于想面对自己的内心了，接受你已不在我身边的事实，我牵着一个爱我的人的手，并且爱上他，然后勇敢走下去走过你不曾陪我走完的人生');
insert into ear_writer values(null,'NJ璐璐，你和时间，有声电台','images/article_05.jpg','【关于你和时间】谢谢你曾来过我的生命','对已经过去的事情最好的尊重是绝口不提，人生就是一个不断说再见的过程啊');
insert into ear_writer values(null,'NJ不会游泳的鱼，一只鱼，有声电台','images/article_06.jpg','【一只鱼】永远的门','一扇画在墙上的门！');
insert into ear_writer values(null,'NJ沈良年，暖地电台，有声电台','images/article_07.jpg','【暖地电台】有些事，你有心让他过去，他一定会过去的','怕黑可以开灯，怕伤就别听慢歌，怕手贱就去忙点别的事情，作归作，心情已经不好了，那就对身体好点');
insert into ear_writer values(null,'毛毛有声电台，静听FM，有声电台','images/article_08.jpg','【静听FM】青春如烟','这个世界每天都在重复着相同的夜晚，但想你的夜晚总有些特别，我的思念如潮，如星辰浩瀚');
insert into ear_writer values(null,'漫漫，慢走漫说，有声电台','images/article_09.jpg','【慢走漫说】你是如何忘记那个人的','不要为了忘记而忘记，时间会证明，你终将会忘记，而那个人，也终将会成为曾经');
insert into ear_writer values(null,'诗酱，有声电台，柚子说','images/article_10.jpg','【柚子说】我的美丽不是你犯罪的借口','近年来，无论是成年还是未成年，无论是青春美丽还是垂垂老矣，各个阶级都有受害的女性朋友');
insert into ear_writer values(null,'紫萱，听紫萱说，有声电台 ','images/article_11.jpg','【听紫萱说】谢谢你曾喜欢过我','我一直相信L你的那个姑娘会在不久的将来来到你的身边');
insert into ear_writer values(null,'雪樱，雪樱私语，有声电台 ','images/article_12.jpg','【雪樱私语】当我们离人性太近','我不知道一个傻白甜严重的世界是怎样的，我只知道，即便我们看到的世界可能并不美好，或者有时会有些阴暗，但我们内心的世界始终是温暖而明亮的');
insert into ear_writer values(null,'雪樱，雪樱私语，有声电台 ','images/article_12.jpg','【雪樱私语】当我们离人性太近','我不知道一个傻白甜严重的世界是怎样的，我只知道，即便我们看到的世界可能并不美好，或者有时会有些阴暗，但我们内心的世界始终是温暖而明亮的');
insert into ear_writer values(null,'NJ晨晨，漫步心情，有声电台','images/article_01.jpg','【漫步心情】假如你我不曾相遇','假如你我不曾相遇，你的世界里没有我，你的世界里没有我，你还是那个天真的你，我还是那个懵懂的我。');
insert into ear_writer values(null,'NJ诗酱，漫步心情，柚子说','images/article_02.jpg','【柚子说】愚蠢','是的，无知不可怕，但如果你的无知影响了他人，那么，这种无知就是一种罪恶。');
insert into ear_writer values(null,'NJ柳柳，倾听情感调频，有声电台','images/article_03.jpg','【倾听情感调频】你未痊愈，我怎敢老','因为爱你，她在最艰难的岁月里都没想过放弃，也因为爱你，她用尽了最动人的洪荒之力......');
insert into ear_writer values(null,'NJ凉城，有声电台，灵魂电台','images/article_04.jpg','【灵魂电台】有个很好的男孩爱过我','我终于想面对自己的内心了，接受你已不在我身边的事实，我牵着一个爱我的人的手，并且爱上他，然后勇敢走下去走过你不曾陪我走完的人生');
insert into ear_writer values(null,'NJ璐璐，你和时间，有声电台','images/article_05.jpg','【关于你和时间】谢谢你曾来过我的生命','对已经过去的事情最好的尊重是绝口不提，人生就是一个不断说再见的过程啊');
insert into ear_writer values(null,'NJ不会游泳的鱼，一只鱼，有声电台','images/article_06.jpg','【一只鱼】永远的门','一扇画在墙上的门！');
insert into ear_writer values(null,'NJ沈良年，暖地电台，有声电台','images/article_07.jpg','【暖地电台】有些事，你有心让他过去，他一定会过去的','怕黑可以开灯，怕伤就别听慢歌，怕手贱就去忙点别的事情，作归作，心情已经不好了，那就对身体好点');
insert into ear_writer values(null,'毛毛有声电台，静听FM，有声电台','images/article_08.jpg','【静听FM】青春如烟','这个世界每天都在重复着相同的夜晚，但想你的夜晚总有些特别，我的思念如潮，如星辰浩瀚');

select * from ear_writer;