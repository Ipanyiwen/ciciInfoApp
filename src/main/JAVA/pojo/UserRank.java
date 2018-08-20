package pojo;


public class UserRank {

  private long rankId;
  private long userId;
  private long source;
  private String rankName;


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


  public long getSoure() {
    return source;
  }

  public void setSoure(long soure) {
    this.source = soure;
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
