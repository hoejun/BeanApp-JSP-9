package mybean.index;

import java.util.*;

/*순서1.*/

/*
 *(출근한 사원번호 + 출근시간)을 묶어서 출근사원 EmployeeDto객체를 생성하기 위한 사원 클래스 
 *또는?
 *(퇴근한 사원번호 + 퇴근시간)을 묶어서 퇴근사원 EmployeeDto객체를 생성하기 위한 사원 클래스
 */

public class EmployeeDto {

    //출근 또는 퇴근하는 사원번호 저장할 변수
    private String empNO;
    //출근 또는 퇴근하는 시간 저장할 변수
    private long enterTime;
    
    //기본 생성자
    public EmployeeDto() {
        /*
         * 출근한 사원번호, 출근시간을 저장하기 위한 생성자
         * 또는
         * 퇴근하는 사원번호, 퇴근시간을 저장하기 위한 생성자
         */
    }
    
    public EmployeeDto(String empNo, long enterTime){
        
        //출근 or 퇴근한 사원번호 저장
        this.empNO = empNo;
        //출근 or 퇴근한 시간 저장
        this.enterTime = enterTime;
    }
    
    //출근 또는 퇴근한 사원번호 리턴 메소드
    public String getEmpNo() {
        return empNO;
    }
    
    //출근 또는 퇴근한 시간 리턴
    public Date getEnterTime() {
        return new Date(enterTime);
    }

}
