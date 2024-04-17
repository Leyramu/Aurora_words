class IndexRecommendItem {
  final String title;
  final String subTitle;
  final String imageUrl;
  final String navigateUrl;

  const IndexRecommendItem(
      this.title, this.subTitle, this.imageUrl, this.navigateUrl);
}

const List<IndexRecommendItem> indexRecommendItemList = [
  IndexRecommendItem(
      '私人外教', '一键找到', 'static/images/home_profile_id.png', 'login'),
  IndexRecommendItem(
      '专业专注', '全心全译', 'static/images/home_profile_message.png', 'login'),
  IndexRecommendItem(
      '英领头条', '非聊不行', 'static/images/home_profile_order.png', 'login'),
  IndexRecommendItem(
      '大音稀声', '大象无形', 'static/images/home_profile_record.png', 'login')
];
