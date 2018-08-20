package pojo;


public class Terms {

  private long termId;
  private String name;
  private String slug;
  private long parent;
  private long count;
  private long termType;


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


  public long getParent() {
    return parent;
  }

  public void setParent(long parent) {
    this.parent = parent;
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

}
