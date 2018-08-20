package pojo;


public class Comments {

  private long commentId;
  private long commentPostId;
  private String commentAuthor;
  private String commentAuthorEmail;
  private java.sql.Timestamp commentDate;
  private String commentContent;
  private String commentApproved;
  private long commentType;
  private String commentAuthorIp;
  private long commentParent;
  private Users user;


  public long getCommentId() {
    return commentId;
  }

  public void setCommentId(long commentId) {
    this.commentId = commentId;
  }


  public long getCommentPostId() {
    return commentPostId;
  }

  public void setCommentPostId(long commentPostId) {
    this.commentPostId = commentPostId;
  }


  public String getCommentAuthor() {
    return commentAuthor;
  }

  public void setCommentAuthor(String commentAuthor) {
    this.commentAuthor = commentAuthor;
  }


  public String getCommentAuthorEmail() {
    return commentAuthorEmail;
  }

  public void setCommentAuthorEmail(String commentAuthorEmail) {
    this.commentAuthorEmail = commentAuthorEmail;
  }


  public java.sql.Timestamp getCommentDate() {
    return commentDate;
  }

  public void setCommentDate(java.sql.Timestamp commentDate) {
    this.commentDate = commentDate;
  }


  public String getCommentContent() {
    return commentContent;
  }

  public void setCommentContent(String commentContent) {
    this.commentContent = commentContent;
  }


  public String getCommentApproved() {
    return commentApproved;
  }

  public void setCommentApproved(String commentApproved) {
    this.commentApproved = commentApproved;
  }


  public long getCommentType() {
    return commentType;
  }

  public void setCommentType(long commentType) {
    this.commentType = commentType;
  }


  public String getCommentAuthorIp() {
    return commentAuthorIp;
  }

  public void setCommentAuthorIp(String commentAuthorIp) {
    this.commentAuthorIp = commentAuthorIp;
  }


  public long getCommentParent() {
    return commentParent;
  }

  public void setCommentParent(long commentParent) {
    this.commentParent = commentParent;
  }


  public Users getUser() {
    return user;
  }

  public void setUser(Users user) {
    this.user = user;
  }

  @Override
  public String toString() {
    return "Comments{" +
            "commentId=" + commentId +
            ", commentPostId=" + commentPostId +
            ", commentAuthor='" + commentAuthor + '\'' +
            ", commentAuthorEmail='" + commentAuthorEmail + '\'' +
            ", commentDate=" + commentDate +
            ", commentContent='" + commentContent + '\'' +
            ", commentApproved='" + commentApproved + '\'' +
            ", commentType=" + commentType +
            ", commentAuthorIp='" + commentAuthorIp + '\'' +
            ", commentParent=" + commentParent +
            ", user=" + user +
            '}';
  }
}
