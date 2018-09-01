package pojo;


import java.io.Serializable;
import java.util.List;

public class Users implements Serializable {

  private static final long serialVersionUID = -326381772476438878L;
  private Long ID;
  private String userLogin;
  private String userPass;
  private String userNicename;
  private String userEmail;
  private java.sql.Timestamp userRegistered;
  private long userStatus;
  private String signature;
  private String pic;
  private UserRank userRank;
  private List<Terms> terms;
  private List<Users> myAttentions;
  private List<Users> myFans;

  public List<Users> getMyAttentions() {
    return myAttentions;
  }

  public void setMyAttentions(List<Users> myAttentions) {
    this.myAttentions = myAttentions;
  }

  public List<Users> getMyFans() {
    return myFans;
  }

  public void setMyFans(List<Users> myFans) {
    this.myFans = myFans;
  }

  public List<Terms> getTerms() {
    return terms;
  }

  public void setTerms(List<Terms> terms) {
    this.terms = terms;
  }

  public Long getID() {
    return ID;
  }

  public void setID(Long id) {
    this.ID = id;
  }


  public String getUserLogin() {
    return userLogin;
  }

  public void setUserLogin(String userLogin) {
    this.userLogin = userLogin;
  }


  public String getUserPass() {
    return userPass;
  }

  public void setUserPass(String userPass) {
    this.userPass = userPass;
  }


  public String getUserNicename() {
    return userNicename;
  }

  public void setUserNicename(String userNicename) {
    this.userNicename = userNicename;
  }


  public String getUserEmail() {
    return userEmail;
  }

  public void setUserEmail(String userEmail) {
    this.userEmail = userEmail;
  }


  public java.sql.Timestamp getUserRegistered() {
    return userRegistered;
  }

  public void setUserRegistered(java.sql.Timestamp userRegistered) {
    this.userRegistered = userRegistered;
  }


  public long getUserStatus() {
    return userStatus;
  }

  public void setUserStatus(long userStatus) {
    this.userStatus = userStatus;
  }


  public String getSignature() {
    return signature;
  }

  public void setSignature(String signature) {
    this.signature = signature;
  }

  public String getPic() {
    return pic;
  }

  public void setPic(String pic) {
    this.pic = pic;
  }

  public UserRank getUserRank() {
    return userRank;
  }

  public void setUserRank(UserRank userRank) {
    this.userRank = userRank;
  }

  @Override
  public String toString() {
    return "Users{" +
            "ID=" + ID +
            ", userLogin='" + userLogin + '\'' +
            ", userPass='" + userPass + '\'' +
            ", userNicename='" + userNicename + '\'' +
            ", userEmail='" + userEmail + '\'' +
            ", userRegistered=" + userRegistered +
            ", userStatus=" + userStatus +
            ", signature='" + signature + '\'' +
            ", pic='" + pic + '\'' +
            ", userRank=" + userRank +
            ", terms=" + terms +
            '}';
  }
}
