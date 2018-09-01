package pojo;


import com.alibaba.fastjson.annotation.JSONField;

import java.io.Serializable;
import java.util.List;

public class Posts implements Serializable{

    private static final long serialVersionUID = 7633537055990872818L;

    private long ID;
    private Users Author;
    @JSONField(format="yyyy-MM-dd HH:mm:ss")
    private java.sql.Timestamp postDate;
    private String postContent;
    private String postTitle;
    private String postExcerpt;
    private String postStatus;
    private String commentStatus;
    private String postPic;
    @JSONField(format="yyyy-MM-dd HH:mm:ss")
    private java.sql.Timestamp postModified;
    private int postType;
    private long commentCount;
    private Terms term;
    private List<Terms> tags;
    private List<Comments> comments;

    public Posts(){
        postPic="/image/default.png";
    }

    public long getID() {
        return ID;
    }

    public void setID(long ID) {
        this.ID = ID;
    }


    public Users getAuthor() {
        return Author;
    }

    public void setAuthor(Users author) {
        Author = author;
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


    public int getPostType() {
        return postType;
    }

    public void setPostType(int postType) {
        this.postType = postType;
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

    public List<Terms> getTags() {
        return tags;
    }

    public void setTags(List<Terms> tags) {
        this.tags = tags;
    }

    public List<Comments> getComments() {
        return comments;
    }

    public void setComments(List<Comments> comments) {
        this.comments = comments;
    }

    @Override
    public String toString() {
        return "Posts{" +
                "id=" + ID +
                ", postAuthor=" + Author +
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
                '}';
    }
}
