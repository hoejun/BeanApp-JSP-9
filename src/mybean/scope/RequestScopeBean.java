package mybean.scope;

public class RequestScopeBean {
    
    //머릿말에 입력한 값 저장 변수
    private String header = "";
    //꼬릿말에 입력한 값 저장 변수
    private String footer = "";
    
    //머릿말 입력값 리턴
    public String getHeader() {
        return header;
    }
    
    //머릿말 입력값 저장 메소드
    public void setHeader(String header) {
        this.header = header;
    }
    
    //꼬릿말 리턴 메소드
    public String getFooter() {
        return footer;
    }
    
    //꼬릿말 저장 메소드
    public void setFooter(String footer) {
        this.footer = footer;
    }
    
    //alt + shift + s -> r
}
