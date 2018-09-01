package pojo;


import java.io.Serializable;

public class TagsRelationships implements Serializable{

  private static final long serialVersionUID = 4259898275485546954L;
  private long tid;
  private long uid;


  public long getTid() {
    return tid;
  }

  public void setTid(long tid) {
    this.tid = tid;
  }


  public long getUid() {
    return uid;
  }

  public void setUid(long uid) {
    this.uid = uid;
  }

}
