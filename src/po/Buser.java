package po;

import java.util.Date;

public class Buser {
	@Override
	public String toString() {
		return "Buser [userId=" + userId + ", userName=" + userName + ", userPassword=" + userPassword
				+ ", userNickname=" + userNickname + ", userHead=" + userHead + ", userRealname=" + userRealname
				+ ", userGender=" + userGender + ", userIdcard=" + userIdcard + ", userTime=" + userTime
				+ ", userLtime=" + userLtime + ", userEmail=" + userEmail + ", userAddress=" + userAddress
				+ ", userTel=" + userTel + "]";
	}

	private Integer userId;

    private String userName;

    private String userPassword;

    private String userNickname;

    private String userHead;

    private String userRealname;

    private String userGender;

    private String userIdcard;

    private Date userTime;

    private Date userLtime;

    private String userEmail;

    private String userAddress;

    private String userTel;


    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName ;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword ;
    }

    public String getUserNickname() {
        return userNickname;
    }

    public void setUserNickname(String userNickname) {
        this.userNickname = userNickname ;
    }

    public String getUserHead() {
        return userHead;
    }

    public void setUserHead(String userHead) {
        this.userHead = userHead ;
    }

    public String getUserRealname() {
        return userRealname;
    }

    public void setUserRealname(String userRealname) {
        this.userRealname = userRealname ;
    }

    public String getUserGender() {
        return userGender;
    }

    public void setUserGender(String userGender) {
        this.userGender = userGender ;
    }

    public String getUserIdcard() {
        return userIdcard;
    }

    public void setUserIdcard(String userIdcard) {
        this.userIdcard = userIdcard ;
    }

    public Date getUserTime() {
        return userTime;
    }

    public void setUserTime(Date userTime) {
        this.userTime = userTime;
    }

    public Date getUserLtime() {
        return userLtime;
    }

    public void setUserLtime(Date userLtime) {
        this.userLtime = userLtime;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail ;
    }

    public String getUserAddress() {
        return userAddress;
    }

    public void setUserAddress(String userAddress) {
        this.userAddress = userAddress ;
    }

    public String getUserTel() {
        return userTel;
    }

    public void setUserTel(String userTel) {
        this.userTel = userTel ;
    }




	
}
