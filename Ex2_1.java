import java.util.*;

public class Ex2_1{
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int sum = 0;

        for (int i = 0; i < 5; i++){
            System.out.println("Insert a number: ");
            int n = sc.nextInt();

            if (n >= 0)
                sum += n;
        }

        System.out.println("Sum: " + sum);
        
        System.exit(0);
    }
}