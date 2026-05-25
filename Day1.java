//1. reverse the number without using loops

// class Day1 {
//     static int rev = 0;
//     static void reverse(int n){
//         if(n == 0){
//             return;
//         }
//         int digit = n % 10;
//         rev= rev*10 + digit;
//         reverse(n / 10);
//     }
//     public static void main(String[] args) {
//         int num = 12345;
//         reverse(num);
//         System.out.println("The reverse of the number is: "+ rev);
//     }
// }




//2. insert the number into the array at the specified position 

// import java.util.*;

// class Day1 {
// public static void main(String[] args) {
// int arr[]=new int[20];
// Scanner sc=new Scanner(System.in);
// System.out.println("Enter the size of the array:");
// int n=sc.nextInt();
// System.out.println("Enter the elements of the array:");
// for(int i=0;i<n;i++){
// arr[i]=sc.nextInt();
// }
// System.out.println("Enter the key:");
// int key=sc.nextInt();
// System.out.println("Enter the location:");
// int loc=sc.nextInt();

// for(int j=n-1;j>=loc;j--){
// arr[j+1]=arr[j];
// }
// arr[loc]=key;
// for(int i=0;i<=n;i++){
// System.out.println(arr[i]);
// }

// }
// }



//3. find the maximum and minimum element in the array 

// class Day1 {
//     public static void main(String[] args) {
//         int arr[]={5,2,9,1,5,6};
//         int max=arr[0];
//         int min=arr[0];
//         for(int i=1;i<arr.length;i++){
//             if(arr[i]>max){
//                 max=arr[i];
//             }
//             if(arr[i]<min){
//                 min=arr[i];
//             }
//         }
//         System.out.println("The maximum ele: "+ max);
//         System.out.println("The minimum ele: "+ min);
//     }
// }


//4. find factorial of a number using recursion

// class Day1 {
//     int fact(int n){
//     if(n==0|| n==1){
//         return 1;
// }
//     return n*fact(n-1);
// }
//         public static void main(String[] args) {
//         Day1 m=new Day1();
//         int res=m.fact(5);
//         System.out.println(res);
//     }
// }



//5. multiply 2 numbers using recursion

// class Day1{
//     int multiply(int x, int y){
//         if(x==0 || y==0){
//         return 0;
//         }else if(x==1){
//         return y;
//         }else if(y==1){
//         return x;
//         }
//         return x*y;
//     }
    // public static void main(String[] args) {
    //     Day1 m=new Day1();
    //     int res=m.multiply(2,3);
    //     System.out.println(res);
    // }
// }



//6. find pow using recursion

//  class Day1{

//     int multiply(int x, int y){
//         if(x==0 || y==0){
//         return 0;
//         }else if(x==1){
//         return y;
//         }else if(y==1){
//         return x;
//         }
//         return x+multiply(x,y-1);
//     }
//         int pow(int x, int y){
//         if(y==0){
//         return 1;
//         }
//         if(x==0){
//         return 0;
//         }
//         return multiply(x,pow(x,y-1));
//     }
//     public static void main(String[] args) {
//         Day1 m=new Day1();
//         int res=m.pow(2,3);
//         System.out.println(res);
//     }

//  }



//7. sum of n numbers using recursion

class Day1{
    int sum(int n){
        if(n==0){
            return 0;
        }
        return n+sum(n-1);
    }
    public static void main(String[] args) {
        Day1 m=new Day1();
        int res=m.sum(5);
        System.out.println(res);
    }

 }