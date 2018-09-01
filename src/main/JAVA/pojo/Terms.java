package pojo;


import com.sun.org.apache.xpath.internal.SourceTree;

import java.io.Serializable;
import java.util.List;

public class Terms implements Serializable{

  private static final long serialVersionUID = 348921708415231193L;
  private long termId;
  private String name;
  private String slug;
  private int type;
  private long count;
  private long termType;
  private List<Posts> posts;

  public List<Posts> getPosts() {
    return posts;
  }

  public void setPosts(List<Posts> posts) {
    this.posts = posts;
  }

  public long getTermId() {
    return termId;
  }

  public void setTermId(long termId) {
    this.termId = termId;
  }


  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }


  public String getSlug() {
    return slug;
  }

  public void setSlug(String slug) {
    this.slug = slug;
  }


  public long getType() {
    return type;
  }

  public void setType(int type) {
    this.type = type;
  }


  public long getCount() {
    return count;
  }

  public void setCount(long count) {
    this.count = count;
  }


  public long getTermType() {
    return termType;
  }

  public void setTermType(long termType) {
    this.termType = termType;
  }

  @Override
  public String toString() {
    return "Terms{" +
            "termId=" + termId +
            ", name='" + name + '\'' +
            ", slug='" + slug + '\'' +
            ", type=" + type +
            ", count=" + count +
            ", termType=" + termType +
            '}';
  }
}
