package pojo;


public class Posts {

  private long id;
  private long postAuthor;
  private java.sql.Timestamp postDate;
  private String postContent;
  private String postTitle;
  private String postExcerpt;
  private String postStatus;
  private String commentStatus;
  private String postPic;
  private java.sql.Timestamp postModified;
  private String postType;
  private long commentCount;
  private Terms terms;


  public long getId() {
    return id;
  }

  public void setId(long id) {
    this.id = id;
  }


  public long getPostAuthor() {
    return postAuthor;
  }

  public void setPostAuthor(long postAuthor) {
    this.postAuthor = postAuthor;
  }


  public java.sql.Timestamp getPostDate() {
    return postDate;
  }

  public void setPostDate(java.sql.Timestamp postDate) {
    this.postDate = postDate;
  }


  public String getPostContent() {
    return postContent;
  }

  public void setPostContent(String postContent) {
    this.postContent = postContent;
  }


  public String getPostTitle() {
    return postTitle;
  }

  public void setPostTitle(String postTitle) {
    this.postTitle = postTitle;
  }


  public String getPostExcerpt() {
    return postExcerpt;
  }

  public void setPostExcerpt(String postExcerpt) {
    this.postExcerpt = postExcerpt;
  }


  public String getPostStatus() {
    return postStatus;
  }

  public void setPostStatus(String postStatus) {
    this.postStatus = postStatus;
  }


  public String getCommentStatus() {
    return commentStatus;
  }

  public void setCommentStatus(String commentStatus) {
    this.commentStatus = commentStatus;
  }


  public String getPostPic() {
    return postPic;
  }

  public void setPostPic(String postPic) {
    this.postPic = postPic;
  }


  public java.sql.Timestamp getPostModified() {
    return postModified;
  }

  public void setPostModified(java.sql.Timestamp postModified) {
    this.postModified = postModified;
  }


  public String getPostType() {
    return postType;
  }

  public void setPostType(String postType) {
    this.postType = postType;
  }


  public long getCommentCount() {
    return commentCount;
  }

  public void setCommentCount(long commentCount) {
    this.commentCount = commentCount;
  }

  public Terms getTerms() {
    return terms;
  }

  @Override
  public String toString() {
    return "Posts{" +
            "id=" + id +
            ", postAuthor=" + postAuthor +
            ", postDate=" + postDate +
            ", postContent='" + postContent + '\'' +
            ", postTitle='" + postTitle + '\'' +
            ", postExcerpt='" + postExcerpt + '\'' +
            ", postStatus='" + postStatus + '\'' +
            ", commentStatus='" + commentStatus + '\'' +
            ", postPic='" + postPic + '\'' +
            ", postModified=" + postModified +
            ", postType='" + postType + '\'' +
            ", commentCount=" + commentCount +
            ", terms=" + terms +
            '}';
  }

  public void setTerms(Terms terms) {
    this.terms = terms;
  }
}
