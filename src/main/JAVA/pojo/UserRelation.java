package pojo;


import java.io.Serializable;

public class UserRelation implements Serializable{

  private static final long serialVersionUID = -8681192268051422413L;
  private long userId;
  private long friendId;


  public long getUserId() {
    return userId;
  }

  public void setUserId(long userId) {
    this.userId = userId;
  }


  public long getFriendId() {
    return friendId;
  }

  public void setFriendId(long friendId) {
    this.friendId = friendId;
  }

}
