#include<stdio.h>
#include<dos.h>
#include<conio.h>
#include<string.h>
#include<windows.h>
#include<stdlib.h>
#include<process.h>
#include<time.h>

char line;

struct bank // Bank Structure
{
    int accno;
    char name[20];
    float bal;
    int age;
    char gmail[20];
    int phone_number;
    char present_adress[100];
    char permanent_adress[100];
} b;

int main()
{

    time_t mytime;
    mytime = time(NULL);


    int ch;
    system("cls");
b:
    printf("\t\t\t\t*************************************\n\t\t\t\t**Welcome To Bank Management System**\n\t\t\t\t*************************************\n\t\t\t\t%s\n",ctime(&mytime));
    printf("\n 1. New customer \n 2. Existing customer \n 3. Delete an account\n 4.Exit \n ");
    scanf("%d",&ch);
    switch (ch)
    {
    case 1:
    {
        FILE*ff;
        ff=fopen("customer.dat","a");
        system("cls");
        printf("\nPlease enter your name :");
        scanf("%c",&line);
        gets(b.name);
        system("cls");
        printf("\n Welcome %s, please enter a suitable account number : ",b.name);
        scanf("%d",&b.accno);
        printf("\n Enter your age : ");
        scanf("%d",&b.age);
        printf("\n Enter your present address : ");
        scanf("%c",&line);
        gets(b.present_adress);
        printf("\n Enter your permanent address : ");
        scanf("%c",&line);
        gets(b.permanent_adress);
        printf("\n Enter your phone number : ");
        scanf("%d",&b.phone_number);
        printf("\n Enter your gmail address : ");
        scanf("%c",&line);
        gets(b.gmail);
        printf("\n Please mention the initial deposit... Rs: ");
        scanf("%f",&b.bal);
        printf("\n\n Congratulations... Your account has been created.\nTo deposit please login as existing customer\n\n");
        fwrite(&b,sizeof(b),1,ff);
        fclose(ff);
        getch();
        system("cls");
        goto b;
    }
    break;

    case 2:
    {

        int num,count=0,n,ch,flag;
        int a,c,t;
        float amount,value,temp;
        char temp_str[20];
        int choice_flag;
        FILE *fp;
        fp=fopen("customer.dat","r+");
        system("cls");
        printf("\nSearch an account by account no(1) or by name(2) : ");
        scanf("%d",&ch);

        if(ch == 1)
        {
            printf("\n\n Please Enter your Account Number : ");

            scanf("%d",&num);

            while(!feof(fp)&&count==0)
            {
                fread(&b,sizeof(b),1,fp);

                if (b.accno==num)
                {
                    count=1;
                }

            }

            choice_flag = 0;
            goto x;

        }

        else if(ch == 2)
        {
            scanf("%c",&line);

            printf("\n\n Please Enter your Name : ");

            gets(temp_str);

            while(!feof(fp)&&count==0)
            {
                fread(&b,sizeof(b),1,fp);

                if (strcmp(b.name,temp_str) == 0)
                {
                    count=1;
                }

            }

            choice_flag = 1;
            goto x;

        }

        rewind(fp);

x:
        if(count==0)
        {

            if(choice_flag == 0)
                printf("\n Wrong account number... No such user");
            else
                printf("\n Wrong Name... No such user\n\n");
            getch();
            goto b;

        }

        else
        {

            int m;
            system("cls");
            printf("\n Welcome %s, What service would you like to avail",b.name);
            printf("\n 1. Deposit Amount ");
            printf("\n 2. Withdraw Amount ");
            printf("\n 3. View Details ");
            printf("\n 4.Update Phone Number ");
            printf("\n 5.Update Gmail ");
            printf("\n 6. Log Out");
            printf("\n Please Enter your choice : ");
            scanf ("%d",&m);

            switch(m)
            {
            case 1:
            {
                system("cls");
                printf("\n\n\n Dear %s, please enter the amount you wish to deposit : ",b.name);
                scanf("%f",& amount);
                b.bal=b.bal+amount;
                printf("\n Your current available bank balance is %f", b.bal);
                n=sizeof(b);
                fseek(fp,-n,SEEK_CUR);
                fwrite(&b,n,1,fp);
                fclose(fp);
                getch();
                goto b;
            }
            break;
            case 2:
            {
                system("cls");
                printf("\n\n\n Dear %s, please enter the amount you wish to withdraw : ",b.name);
                scanf("%f",& amount);
                if(b.bal-amount<=0)
                {
                    printf("\n Sorry, You dont have enough money in your account");
                    fclose(fp);
                    getch();
                    goto b;
                }
                else
                {
                    b.bal=b.bal-amount;
                    printf("\n Your current available bank balance is %f", b.bal);
                    getch();
                    n=sizeof(b);
                    fseek(fp,-n,SEEK_CUR);
                    fwrite(&b,n,1,fp);
                    fclose(fp);
                    goto b;
                }

            }
            break;

            case 3:
            {
                system("cls");
                printf("\n Your Account Details are as folows...");
                printf("\n\n Name : %s",b.name);
                printf("\n\n Account Number : %d ",b.accno);
                printf("\n\n Available Balance :%f ",b.bal);
                printf("\n\n Age : %d",b.age);
                printf("\n\n Phone Number : %d",b.phone_number);
                printf("\n\n Gmail : %s",b.gmail);
                printf("\n\n Present Address : %s",b.present_adress);
                printf("\n\n Permanent Address : %s",b.permanent_adress);
                fclose(fp);
                printf("\n\n Press any key to continue...");
                getch();
                system("cls");
                goto b;
            }
            break;
            case 6:
            {
                goto b;
            }
            break;

            case 4:
            {

                system("cls");
                printf("\n\n\n Please enter the current phone number : ");
                scanf("%d",& b.phone_number);
                printf("\n Your current phone number is %d", b.phone_number);
                n=sizeof(b);
                fseek(fp,-n,SEEK_CUR);
                fwrite(&b,n,1,fp);
                fclose(fp);
                getch();
                goto b;

            }
            break;

            case 5:
            {

                system("cls");
                scanf("%c",&line);
                printf("\n\n\n Please enter the current Gmail : ");
                gets(b.gmail);
                printf("\n Your current gmail is %s", b.gmail);
                n=sizeof(b);
                fseek(fp,-n,SEEK_CUR);
                fwrite(&b,n,1,fp);
                fclose(fp);
                getch();
                goto b;
            }
            break;





            }
        }
    }
    break;


    case 3:
    {

        char *temp[20];
        int accnum;
        FILE *p,*q;
        p = fopen("customer.dat","r+");
        q = fopen("temp.dat","a");
        scanf("%c",&line);
        printf("Enter Name & Account No. : ");
        gets(temp);
        scanf("%d",&accnum);

        while(!feof(p))
        {
            fread(&b,sizeof(b),1,p);

            if (strcmp(b.name,temp) != 0 && b.accno != accnum)
            {
                fwrite(&b,sizeof(b),1,q);
            }

        }

        fclose(p);
        fclose(q);
        remove("customer.dat");
        rename("temp.dat","customer.dat");

        getch();
        goto b;

    }
    break;

    case 4:
        return 0;
        break;

    }
}
