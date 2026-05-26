// //Binary search
// import java.util.*;
// public class Day2 {
//     public static void main(String[]args){
//     int arr[]=new int[20];
//     Scanner sc= new Scanner(System.in);
//     System.out.println("Enter the size of array:");
//     int n= sc.nextInt();
//     System.out.println("Enter the array elements:");
//         for(int i=0;i<n;i++){
//         arr[i]=sc.nextInt();
//     }
//     int target=55;
//     int low=0;
//     int high=n-1;
//     boolean flag=false;
//     while (low<=high){
//         int mid=(low+high)/2;
//         if(target==arr[mid]){
//             System.out.println("Element found at index:"+ mid);
//             flag=true;
//         }
//         if(target<arr[mid]){
//             high=mid-1;
//         }else{
//             low=mid+1;
//         }
//     }
//     if(flag==true){
//         System.out.println("Element found");
//     }else{
//         System.out.println("Not found");
//     }
// }
// }


//leetcode question on binary search
//bubble sort

// import java.util.*;
// public class Day2{
//     public static void main(String[]args){
//         int arr[]=new int[20];
//         Scanner sc= new Scanner(System.in);
//         System.out.println("Enter the size of array:");
//         int n= sc.nextInt();
//         System.out.println("Enter the array elements:");
//             for(int i=0;i<n;i++){
//             arr[i]=sc.nextInt();
//         }

//         for(int i=0;i<n;i++){
//             for(int j=i+1;j<n-i-1;j++){
//                 if(arr[i]>arr[j]){
//                     int temp=arr[i];
//                     arr[i]=arr[j];
//                     arr[j]=temp;
//                 }
//             }
//         }

//         System.out.println("Sorted array is:");
//         for(int i=0;i<n;i++){
//             System.out.println(arr[i]);
//         }
//     }
// }

//array should be sort in descending order
// import java.util.*;
// public class Day2{
//     public static void main(String[]args){
//         int arr[]=new int[20];
//         Scanner sc= new Scanner(System.in);
//         System.out.println("Enter the size of array:");
//         int n= sc.nextInt();
//         System.out.println("Enter the array elements:");
//             for(int i=0;i<n;i++){
//             arr[i]=sc.nextInt();
//         }

//         for(int i=0;i<n;i++){
//             for(int j=i+1;j<n-1-i;j++){
//                 if(arr[i]<arr[j]){
//                     int temp=arr[i];
//                     arr[i]=arr[j];
//                     arr[j]=temp;
//                 }
//             }
//         }

//         System.out.println("Sorted array is:");
//         for(int i=0;i<n;i++){
//             System.out.println(arr[i]);
//         }
//     }
// }

//selection

// import java.util.*;
// public class Day2{
//     public static void main(String[]args){
//         int arr[]=new int[20];
//         int loc=0;
//         Scanner sc= new Scanner(System.in);
//         System.out.println("Enter the size of array:");
//         int n= sc.nextInt();
//         System.out.println("Enter the array elements:");
//             for(int i=0;i<n;i++){
//             arr[i]=sc.nextInt();
//         }
        
//         for(int i=0;i<n;i++){
//             int min=arr[i];
//             for(int j=1;j<n;j++){
//                 if(arr[j]>min){
//                     min=arr[j];
//                     loc=min;
//                 }
//                 int temp=arr[i];
//                 arr[i]=arr[loc];
//                 arr[loc]=temp;
//             }
            
//         }

//         System.out.println("Sorted array is:");
//         for(int i=0;i<n;i++){
//             System.out.println(arr[i]);
//         }
//     }
// }


//selection sort in descending order

import java.util.*;
public class Day2{
    public static void main(String[]args){
        int arr[]=new int[20];
        int loc=0;
        Scanner sc= new Scanner(System.in);
        System.out.println("Enter the size of array:");
        int n= sc.nextInt();
        System.out.println("Enter the array elements:");
            for(int i=0;i<n;i++){
            arr[i]=sc.nextInt();
        }
        
        for(int i=0;i<n;i++){
            int max=arr[i];
            for(int j=1;j<n;j++){
                if(arr[j]<max){
                    max=arr[j];
                    loc=max;
                }
                int temp=arr[i];
                arr[i]=arr[loc];
                arr[loc]=temp;
            }
            
        }

        System.out.println("Sorted array is:");
        for(int i=0;i<n;i++){
            System.out.println(arr[i]);
        }
    }
}




