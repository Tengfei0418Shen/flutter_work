class UpdateList {
  String imgUrl;
  String title;
  String date;
  String content;
  double ves;
  String size;

  UpdateList(
      this.imgUrl, this.title, this.date, this.content, this.ves, this.size);
}

List<UpdateList> getUpdateList() {
  List<UpdateList> lists = [
    UpdateList(
      "https://stfupload.oss-cn-shanghai.aliyuncs.com/pictures/%E5%A4%B4%E5%83%8F3.webp",
      "Google Map",
      "2022-09-02",
      "湖南芷江继南京之后获准成为第307座国际和平城市8、年货节前10天，全网零售额3441.1亿元，跳绳等宅家健身器材销量猛增9、多家快递春节安排出炉：不打烊，但价格上调，时效受影响10、英国通讯管理局撤销中国国际电视台在英国广播许可。",
      5.19,
      "83.3",
    ),
    UpdateList(
      "https://stfupload.oss-cn-shanghai.aliyuncs.com/pictures/%E5%A4%B4%E5%83%8F1.webp",
      "Google Map",
      "2022-09-02",
      "美国“猎鹰9”号火箭又送第19组“星链”，60颗卫星上太空12、世卫组织数据：2020全球确诊的癌症患者数量达1930万，乳腺癌首超肺癌，成全球最常见癌症【微语】你还年轻，别凑活过，接下来的人生还有一万种可能。",
      5.19,
      "83.3",
    ),
    UpdateList(
      "https://stfupload.oss-cn-shanghai.aliyuncs.com/pictures/%E5%A4%B4%E5%83%8F2.webp",
      "Google Map",
      "2022-09-02",
      "农业农村部：禁止闲置、荒芜耕地，禁止占用耕地建窑、建坟5、北京：春节聚餐时间在2小时内，人数10人以下；春节期间北京影院上座率不超过50%6、苏州：将于2月5日再发3000万元数字人民币红包，仍采取摇号抽签发放。",
      5.19,
      "83.3",
    ),
    UpdateList(
      "https://stfupload.oss-cn-shanghai.aliyuncs.com/pictures/%E5%A4%B4%E5%83%8F4.webp",
      "Google Map",
      "2022-09-02",
      "国家卫健委：单纯核酸检测采样无需挂号，免收门诊诊查费2、教育部：小学作业不出校门、初中作业不超纲，高中阶段作业不越界3、两部门：提取已故存款人1万元以内存款无需继承公证书。",
      5.19,
      "83.3",
    ),
  ];
  return lists;
}
