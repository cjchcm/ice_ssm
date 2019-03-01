package net.togogo.bean;

public class Admin {
    private Integer admin_id;
    private String admin_account;
    private String admin_password;

    public Admin() {
    }

    public Admin(String admin_account, String admin_password) {
        this.admin_account = admin_account;
        this.admin_password = admin_password;
    }

    public Integer getAdmin_id() {
        return admin_id;
    }

    public void setAdmin_id(Integer admin_id) {
        this.admin_id = admin_id;
    }

    public String getAdmin_account() {
        return admin_account;
    }

    public void setAdmin_account(String admin_account) {
        this.admin_account = admin_account;
    }

    public String getAdmin_password() {
        return admin_password;
    }

    public void setAdmin_password(String admin_password) {
        this.admin_password = admin_password;
    }

    @Override
    public String toString() {
        return "Admin{" +
                "admin_id=" + admin_id +
                ", admin_account='" + admin_account + '\'' +
                ", admin_password='" + admin_password + '\'' +
                '}';
    }
}
