package pojo;


import java.io.Serializable;

public class Comments implements Serializable{
  private static final long serialVersionUID = 6973516510622581681L;

  private long commentId;
  private long commentPostId;
  private java.sql.Timestamp commentDate;
  private String commentContent;
  private boolean commentApproved;
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


  public boolean getCommentApproved() {
    return commentApproved;
  }

  public void setCommentApproved(boolean commentApproved) {
    this.commentApproved = commentApproved;
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
            ", commentDate=" + commentDate +
            ", commentContent='" + commentContent + '\'' +
            ", commentApproved='" + commentApproved + '\'' +
            ", commentParent=" + commentParent +
            ", user=" + user +
            '}';
  }
}
