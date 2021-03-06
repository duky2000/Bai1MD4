package Model.BTVN;

public class Hocvien {
    private  String name;
    private  String birthday;
    private  String address;
    private  String phone;
    private  String email;
    private  String classroom;

    public Hocvien() {
    }

    public Hocvien(String name, String birthday, String address, String phone, String email, String classroom) {
        this.name = name;
        this.birthday = birthday;
        this.address = address;
        this.phone = phone;
        this.email = email;
        this.classroom = classroom;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getClassroom() {
        return classroom;
    }

    public void setClassroom(String classroom) {
        this.classroom = classroom;
    }
}
