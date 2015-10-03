function [ J] = Gradient_Descent( x,y )
    J_vals=zeros(100,100);
    m=length(y);
    x1=[ones(m,1),x];
h1=zeros(1,2);
h=zeros(1,2);
    theta0_vals=linspace(-3,3,100);
    theta1_vals=linspace(-1,1,100);
    for i=1:length(theta0_vals)
        for j=1:length(theta1_vals)
            t=[theta0_vals(i);theta1_vals(j)];
            h1=0;
            h=0;
            for l=1:m
                h=h1+((x1(l,:)*t)-y(l))^2;
                h1=h;
            end
            J_vals(i,j)=(1/2*m)*h;
        end
    end
    J_vals=J_vals';
    figure;
    surf(theta0_vals,theta1_vals, J_vals)
    xlabel('\theta_0');ylabel('\theta_1')

end