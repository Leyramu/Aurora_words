class InfoItem {
  final String title;
  final String imageUrl;
  final String source;
  final String time;
  final String navigateUrl;

  const InfoItem(this.title, this.imageUrl, this.source, this.time,
      this.navigateUrl);
}

const List<InfoItem> infoData = [
  InfoItem(
      '【每日英语】如何用英语表达“我”',
      'static/images/home_profile_wallet.png',
      '英领头条',
      '2023-03-01',
      'login'),
  InfoItem(
      '【每日英语】如何用英语表达“我”',
      'static/images/home_profile_wallet.png',
      '英领头条',
      '2023-03-01',
      'login'),
  InfoItem(
      '【每日英语】如何用英语表达“我”',
      'static/images/home_profile_wallet.png',
      '英领头条',
      '2023-03-01',
      'login')
];
