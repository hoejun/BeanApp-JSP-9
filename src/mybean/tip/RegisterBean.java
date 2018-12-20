package mybean.tip;

//순서2. 자바빈 클래스 만들기

/*
 *DTO 디자인 패턴
 *-데이터들을 전송하기 좋게 객체화 시켜서 많은 데이터들을 한꺼번에 전송시키는 패턴
 *-각각의 데이터들을 하나의 클래스로 묶어서 객체로 만들어서 한번에 전송시키는 패턴 
 */

public class RegisterBean {
    
    private String mem_id;
    private String mem_pw;
    private String mem_name;
    private String mem_email;
    private String mem_tel;
    
    public String getMem_id() {
        return mem_id;
    }
    public void setMem_id(String mem_id) {
        this.mem_id = mem_id;
    }
    public String getMem_pw() {
        return mem_pw;
    }
    public void setMem_pw(String mem_pw) {
        this.mem_pw = mem_pw;
    }
    public String getMem_name() {
        return mem_name;
    }
    public void setMem_name(String mem_name) {
        this.mem_name = mem_name;
    }
    public String getMem_email() {
        return mem_email;
    }
    public void setMem_email(String mem_email) {
        this.mem_email = mem_email;
    }
    public String getMem_tel() {
        return mem_tel;
    }
    public void setMem_tel(String mem_tel) {
        this.mem_tel = mem_tel;
    }
    
    
}
