package mybean.scope;

import java.util.*;

//자바빈 클래스
public class PageScopeBean {
    
    //랜덤 객체 준비
    private Random random = new Random();
    //최대, 최소값 저장할 변수
    private int max, min;
    
    //현재 주사위 돌렸을때 임의의(랜덤) 숫자 리턴하는 메소드
    public int getDiceNumber() {
        //int 범위내에서 1부터 6사이의 랜덤값 리턴
        return random.nextInt(max-min+1) + min;
        //공식 : (최대값 - 최소값 + 1) + 최소값
    }
    
    //최대값 리턴할 메소드
    public int getMaxNumber() {
        return max;
    }
    
    //최대값 저장할 메소드
    public void setMaxNumber(int max) {
        this.max = max;
    }

    //최소값 리턴할 메소드
    public int getMinNumber() {
        return min;
    }

    //최소값 저장할 메소드
    public void setMinNumber(int min) {
        this.min = min;
    }
}
