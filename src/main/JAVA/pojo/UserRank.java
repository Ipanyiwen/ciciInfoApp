package pojo;


import java.io.Serializable;

public class UserRank implements Serializable{

  private static final long serialVersionUID = 1222518953874783367L;
  private long rankId;
  private long userId;
  private long source;
  private String rankName;

  public UserRank(){}

  public UserRank(long userId) {
    this.userId = userId;
    this.source = 0;
    this.rankName = "初出茅庐";
  }

  public long getRankId() {
    return rankId;
  }

  public void setRankId(long rankId) {
    this.rankId = rankId;
  }

  public long getUserId() {
    return userId;
  }

  public void setUserId(long userId) {
    this.userId = userId;
  }

  public long getSource() {
    return source;
  }

  public void setSource(long source) {
    this.source = source;
  }

  public String getRankName() {
    return rankName;
  }

  public void setRankName(String rankName) {
    this.rankName = rankName;
  }

  @Override
  public String toString() {
    return "UserRank{" +
            "rankId=" + rankId +
            ", userId=" + userId +
            ", source=" + source +
            ", rankName='" + rankName + '\'' +
            '}';
  }
}
