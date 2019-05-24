package edu.challenge.entity;

import java.io.Serializable;

public class TbAdmin implements Serializable {
    private String adminName;

    private String adminPass;
    
    private String adminTel;

    private static final long serialVersionUID = 1L;

    public TbAdmin(String adminName, String adminPass,String adminTel) {
        this.adminName = adminName;
        this.adminPass = adminPass;
        this.adminTel=adminTel;
    }

    public TbAdmin() {
        super();
    }

    public String getAdminName() {
        return adminName;
    }

    public void setAdminName(String adminName) {
        this.adminName = adminName == null ? null : adminName.trim();
    }

    public String getAdminPass() {
        return adminPass;
    }

    public void setAdminPass(String adminPass) {
        this.adminPass = adminPass == null ? null : adminPass.trim();
    }
    
    public String getAdminTel() {
        return adminTel;
    }

    public void setAdminTel(String adminTel) {
        this.adminTel = adminTel == null ? null : adminTel.trim();
    }

	@Override
	public String toString() {
		return "TbAdmin [adminName=" + adminName + ", adminPass=" + adminPass + ", adminTel=" + adminTel + "]";
	}
    
    
}