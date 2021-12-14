
class StatusModelUser {
  String avatarUrl;
  String nameUser;

  String time;

  StatusModelUser({
    required this.avatarUrl,
    required this.nameUser,
    required this.time,
  });
}

class StatusViewModelUser {
  String avatarUrlView;
  String nameUserView;
  String timeView;

  StatusViewModelUser({
    required this.avatarUrlView,
    required this.nameUserView,
    required this.timeView,
  });
}
