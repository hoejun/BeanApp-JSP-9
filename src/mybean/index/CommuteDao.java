package mybean.index;

import java.util.*;

//실제 DB저장소와 연결하여 DB처리하는 Dao클래스
public class CommuteDao {
    
    //출근 한 사원 객체들을 담을 컬렉션 백터(회사) 객체
    private Vector vector = new Vector();

    /*
     *출근 한 사람의 사원번호를 넘겨받아 출근한 사원 객체 EmployeeDto객체를 만들어서,
     *Vector 컬렉션 객체(회사) 공간에 추가하는 setter메소드
     */
    public void setEnter(String no) {
        
        //(출근한 사원번호, 현재 출근시간)을 생성자로 전달하여 EmployeeDto객체를 생성하여 백터(회사)에 저장
        vector.add(new EmployeeDto(no, System.currentTimeMillis()));
    }
    
    //퇴근한 사람의 사원번호를 넘겨 받아 (퇴근하려는 사원의 사원번호를 적고 "퇴근" 버튼을 눌러 퇴근사원번호를 넘겨받아)
    public void setExit(String no) {
        
        /*
         *백터(회사)에 담긴(내부에 있는) 출근 사원수만큼 반복하여,
         *출근한 사원을 각각 꺼내와서 매개변수로 넘겨받은 퇴근하려는 사원번호가 출근한 사원 중 한명이라면,
         *백터내부(회사내부)에 퇴근하려는 사원 제거. 
         */
        for(int cnt=0; cnt<vector.size(); cnt++){
            
            EmployeeDto dto = (EmployeeDto)vector.get(cnt);
            
            if (no.equals(dto.getEmpNo())) {
                vector.remove(cnt);
                return;
            }
        }
    }
    
    //현재 백터(회사)에 담긴(내부에 있는) 모든 사원수 반환
    public int getTotal() {
        return vector.size();
    }
    
    //한명의 사원에 대한 정보를 리턴
    public EmployeeDto getEmployeeDto(int no) {
        return (EmployeeDto)vector.get(no);
    }
    
    //출근한 모든 사원들을 리턴한다.
    public Vector getemployeeDto() {
        return vector;
    }
}
