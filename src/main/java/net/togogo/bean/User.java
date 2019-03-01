package net.togogo.bean;

public class User {
    private Integer user_id;
    private String user_email;
    private String user_password;
    private String user_name;
    private String user_sex;
    private String user_phone;
    private String user_photo;
    private String user_birthday;
    private String user_work_date;
    private String user_born_city;
    private String user_living_city;
    private Integer user_state;

    public User() {
    }

    public User(String user_email, String user_password) {
        this.user_email = user_email;
        this.user_password = user_password;
    }
    public User(String user_email, String user_password, String user_name) {
        this.user_email = user_email;
        this.user_password = user_password;
        this.user_name = user_name;
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public String getUser_email() {
        return user_email;
    }

    public void setUser_email(String user_email) {
        this.user_email = user_email;
    }

    public String getUser_password() {
        return user_password;
    }

    public void setUser_password(String user_password) {
        this.user_password = user_password;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getUser_sex() {
        return user_sex;
    }

    public void setUser_sex(String user_sex) {
        this.user_sex = user_sex;
    }

    public String getUser_phone() {
        return user_phone;
    }

    public void setUser_phone(String user_phone) {
        this.user_phone = user_phone;
    }

    public String getUser_photo() {
        return user_photo;
    }

    public void setUser_photo(String user_photo) {
        this.user_photo = user_photo;
    }

    public String getUser_birthday() {
        return user_birthday;
    }

    public void setUser_birthday(String user_birthday) {
        this.user_birthday = user_birthday;
    }

    public String getUser_work_date() {
        return user_work_date;
    }

    public void setUser_work_date(String user_work_date) {
        this.user_work_date = user_work_date;
    }

    public String getUser_born_city() {
        return user_born_city;
    }

    public void setUser_born_city(String user_born_city) {
        this.user_born_city = user_born_city;
    }

    public String getUser_living_city() {
        return user_living_city;
    }

    public void setUser_living_city(String user_living_city) {
        this.user_living_city = user_living_city;
    }

    public Integer getUser_state() {
        return user_state;
    }

    public void setUser_state(Integer user_state) {
        this.user_state = user_state;
    }

    @Override
    public String toString() {
        return "User{" +
                "user_id=" + user_id +
                ", user_email='" + user_email + '\'' +
                ", user_password='" + user_password + '\'' +
                ", user_name='" + user_name + '\'' +
                ", user_sex='" + user_sex + '\'' +
                ", user_phone='" + user_phone + '\'' +
                ", user_photo='" + user_photo + '\'' +
                ", user_birthday='" + user_birthday + '\'' +
                ", user_work_date='" + user_work_date + '\'' +
                ", user_born_city='" + user_born_city + '\'' +
                ", user_living_city='" + user_living_city + '\'' +
                ", user_state=" + user_state +
                '}';
    }
}
