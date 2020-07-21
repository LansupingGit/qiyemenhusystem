package qiye.model;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="t_zhaopin_user")
public class ZhaopinUser {

    @Id
    @GeneratedValue
    private int id;

    private int zhaopinid;

    private String zhaopinzhiwei;

    private String name;

    private String email;

    private String education;

    private String resumeurl;

    @Column(name="introduce", columnDefinition="TEXT")
    private String introduce;

    private Date createtime;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getZhaopinid() {
		return zhaopinid;
	}

	public void setZhaopinid(int zhaopinid) {
		this.zhaopinid = zhaopinid;
	}

	public String getZhaopinzhiwei() {
		return zhaopinzhiwei;
	}

	public void setZhaopinzhiwei(String zhaopinzhiwei) {
		this.zhaopinzhiwei = zhaopinzhiwei;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEducation() {
		return education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public String getResumeurl() {
		return resumeurl;
	}

	public void setResumeurl(String resumeurl) {
		this.resumeurl = resumeurl;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public Date getCreatetime() {
		return createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}

}