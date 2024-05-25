void main(){
    final String name = "고정변수"; 
    print(name); 
    //  name = "변동변수";  The final variable 'name' can only be set once.

    const String name2 = '고정변수'; 
    print(name2); 

    //name2 = '변동변수'; Constant variables can't be assigned a value.

    //final 과 const 의 공통점은 : 타입생략가능 --> final, const 

    final emp_1 = '직원1'; 
    const emp_2 = '직원2'; 

    print(emp_1); 
    print(emp_2); 
   
}