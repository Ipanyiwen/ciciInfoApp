package pojo;


public class Source {

  private long id;
  private String url;
  private String name;
  private String description;
  private String sourceExcerpt;
  private java.sql.Timestamp sourceDate;
  private java.sql.Timestamp sourceModified;
  private long commentCount;
  private Terms term;


  public long getId() {
    return id;
  }

  public void setId(long id) {
    this.id = id;
  }


  public String getUrl() {
    return url;
  }

  public void setUrl(String url) {
    this.url = url;
  }


  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }


  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public String getSourceExcerpt() {
    return sourceExcerpt;
  }

  public void setSourceExcerpt(String sourceExcerpt) {
    this.sourceExcerpt = sourceExcerpt;
  }


  public java.sql.Timestamp getSourceDate() {
    return sourceDate;
  }

  public void setSourceDate(java.sql.Timestamp sourceDate) {
    this.sourceDate = sourceDate;
  }


  public java.sql.Timestamp getSourceModified() {
    return sourceModified;
  }

  public void setSourceModified(java.sql.Timestamp sourceModified) {
    this.sourceModified = sourceModified;
  }


  public long getCommentCount() {
    return commentCount;
  }

  public void setCommentCount(long commentCount) {
    this.commentCount = commentCount;
  }

  public Terms getTerm() {
    return term;
  }

  public void setTerm(Terms term) {
    this.term = term;
  }

  @Override
  public String toString() {
    return "Source{" +
            "id=" + id +
            ", url='" + url + '\'' +
            ", name='" + name + '\'' +
            ", description='" + description + '\'' +
            ", sourceExcerpt='" + sourceExcerpt + '\'' +
            ", sourceDate=" + sourceDate +
            ", sourceModified=" + sourceModified +
            ", commentCount=" + commentCount +
            ", term=" + term +
            '}';
  }
}
