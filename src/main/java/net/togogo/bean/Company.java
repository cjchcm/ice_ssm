package net.togogo.bean;

public class Company {
    private Integer comp_id;
    private String comp_email;
    private String comp_password;
    private String comp_name;
    private String comp_info;
    private String comp_logo;
    private String comp_address;
    private String comp_focus;
    private String comp_license;
    private String comp_phone;
    private Integer comp_state;

    public Company() {
    }

    public Company(String comp_email, String comp_password) {
        this.comp_email = comp_email;
        this.comp_password = comp_password;
    }

    public Company(String comp_email, String comp_password, String comp_name) {
        this.comp_email = comp_email;
        this.comp_password = comp_password;
        this.comp_name = comp_name;
    }

    public Integer getComp_id() {
        return comp_id;
    }

    public void setComp_id(Integer comp_id) {
        this.comp_id = comp_id;
    }

    public String getComp_email() {
        return comp_email;
    }

    public void setComp_email(String comp_email) {
        this.comp_email = comp_email;
    }

    public String getComp_password() {
        return comp_password;
    }

    public void setComp_password(String comp_password) {
        this.comp_password = comp_password;
    }

    public String getComp_name() {
        return comp_name;
    }

    public void setComp_name(String comp_name) {
        this.comp_name = comp_name;
    }

    public String getComp_info() {
        return comp_info;
    }

    public void setComp_info(String comp_info) {
        this.comp_info = comp_info;
    }

    public String getComp_logo() {
        return comp_logo;
    }

    public void setComp_logo(String comp_logo) {
        this.comp_logo = comp_logo;
    }

    public String getComp_address() {
        return comp_address;
    }

    public void setComp_address(String comp_address) {
        this.comp_address = comp_address;
    }

    public String getComp_focus() {
        return comp_focus;
    }

    public void setComp_focus(String comp_focus) {
        this.comp_focus = comp_focus;
    }

    public String getComp_license() {
        return comp_license;
    }

    public void setComp_license(String comp_license) {
        this.comp_license = comp_license;
    }

    public String getComp_phone() {
        return comp_phone;
    }

    public void setComp_phone(String comp_phone) {
        this.comp_phone = comp_phone;
    }

    public Integer getComp_state() {
        return comp_state;
    }

    public void setComp_state(Integer comp_state) {
        this.comp_state = comp_state;
    }

    @Override
    public String toString() {
        return "Company{" +
                "comp_id=" + comp_id +
                ", comp_email='" + comp_email + '\'' +
                ", comp_password='" + comp_password + '\'' +
                ", comp_name='" + comp_name + '\'' +
                ", comp_info='" + comp_info + '\'' +
                ", comp_logo='" + comp_logo + '\'' +
                ", comp_address='" + comp_address + '\'' +
                ", comp_focus='" + comp_focus + '\'' +
                ", comp_license='" + comp_license + '\'' +
                ", comp_phone='" + comp_phone + '\'' +
                ", comp_state=" + comp_state +
                '}';
    }
}
