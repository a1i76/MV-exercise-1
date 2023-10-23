x1 = input("enter x1");
y1 = input("enter y1"); 
x2 = input("enter x2");
y2 = input("enter y2"); 
A = [x1,x2]; 
B = [y1,y2]; 
plot(A,B,'*')
axis([-100 100 -100 100])
hold on
line(A,B)
hold off