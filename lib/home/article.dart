import '../main.dart'; //传数据sqf_text

class Article {
  String headUrl;
  String user;
  String action;
  String time;
  String title;
  String mark;
  String imgUrl;
  int agreeNum;
  int commentNum;

  Article(this.headUrl, this.user, this.action, this.time, this.title, this.mark, this.agreeNum, this.commentNum, {this.imgUrl});
}

List<Article> articleList = [
  new Article(
      "https://pic3.zhimg.com/50/2b8be8010409012e7cdd764e1befc4d1_s.jpg",
      "learner",
      "赞同了回答",
      "2小时前",
      "百度网盘下载速度慢，怎么进行提速呢？",
      "百度网盘下载慢是因为百度网盘对用户单文件下载进行了限速，所以我们可以利用下面的工具进行...",
      32, 10,
      imgUrl: "https://pic2.zhimg.com/50/v2-710b7a6fea12a7203945b666790b7181_hd.jpg"
  ),
  new Article(
    "https://pic4.zhimg.com/50/v2-9a3cb5d5ee4339b8cf4470ece18d404f_s.jpg",
    "learner",
    "回答了问题",
    "5小时前",
    "我的手机系统是安卓。无意间发现自己的屏幕被人监控，请问怎样才能彻底摆脱被监控的处境呢？",
    "检查一下你手机里是不是被人装了什么软件，把你不认识的非系统软件删掉。不会删就去找手机店里的小哥，为什么这么多人...",
    38, 13,
  ),
  new Article(
      "https://pic3.zhimg.com/50/v2-8943c20cecab028e19644cccf0f3a38b_s.jpg",
      "learner",
      "回答了问题",
      "7小时前",
      "如何评价2018年安徽省程序设计竞赛？",
      "带着政治任务和压力去打了比赛，所幸最后被高中生抬了一手。榜可以见另外某回答。大概经历就是前...",
      38, 13,
      imgUrl: "https://pic4.zhimg.com/v2-a7493d69f0d8f849c6345f8f693454f3_200x112.jpg"
  ),
  new Article(
      "https://pic3.zhimg.com/50/v2-8943c20cecab028e19644cccf0f3a38b_s.jpg",
      "learner",
      "回答了问题",
      "7小时前",
      "极致的文明是什么样的？会真的像黑暗森林法则一样对其他低等生物进行屠杀吗？",
      "最喜欢的人物是章北海和维德但最喜欢的情节却是这一段，地球上的人承诺给他们鲜花和荣誉...",
      38, 13,
      imgUrl: "https://pic3.zhimg.com/v2-b67be50be51e2e6d6112a64528683b09_b.jpg"
  )
];