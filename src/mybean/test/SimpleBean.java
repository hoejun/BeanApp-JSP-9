package mybean.test;
/*JSP페이지에서 자바코드를 분리하기 위해 SimpleBean(자바빈) 클래스 만들기 */

import java.util.*;

//1. 날짜를 생성하는 부분 만들기
//2. 날짜를 표현하는 부분 만들기

/*
 * getter 메소드
 * -반드시 소문자 get을 접두사로 사용
 * -get다음에 이어지는 단어의 첫번째 글자는 반드시 대문자로 작성
 * -반드시 리턴값이 있어야 한다.(void 불가)
 * -매개변수가 없어야 한다.
 */

/*
 * setter 메소드
 * -반드시 소문자 set을 접두사로 사용
 * -set다음에 이어지는 단어의 첫번째 글자는 반드시 대문자로 작성
 * -반드시 리턴값이 있어서는 안된다.(반드시 void형이어야 한다.)
 * -반드시 매개변수가 있어야 한다.
 */

public class SimpleBean {
    
    //날짜 객체를 생성하여 저장할 변수
    private Calendar cal;
    //메시지를 저장 할 변수
    private String message;
    
    //날짜 객체를 생성하는 생성자
    public SimpleBean(){
        //날짜 객체를 생성하는 부분 만들기
        cal = Calendar.getInstance();
    }

    public int getYear() {
        return cal.get(Calendar.YEAR);
    }
    
    public int getHour() {
        return cal.get(Calendar.HOUR);
    }

    public int getMinute() {
        return cal.get(Calendar.MINUTE);
    }
    
    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
