function multivariate(x,y)

    theta2 = zeros(size(x(1,:)))';
    theta = zeros(size(x(1,:)))';
    h = zeros(size(x(1,:)))';
    h1 = zeros(size(x(1,:)))';
    alpha1 = .07;
    alpha2 = .04;
    alpha3 = .01;
    j1  = zeros(50,1);
    j2  = zeros(50,1);
    j3  = zeros(50,1);
    
    for num_iterations = 1:50
        j1(num_iterations) = (1/2*47)*(x*theta - y)'*(x*theta - y);
            h=0;
            h1=0;
            for i=1:47
                h=h1+((x(i,:)*theta)-y(i))*x(i,:);
                h1=h;
            end
            theta=theta2-((alpha1/47)*h)';
            theta2=theta;
    end
    theta2 = zeros(size(x(1,:)))';
    theta = zeros(size(x(1,:)))';
    for num_iterations = 1:50
        j2(num_iterations) = (1/2*47)*(x*theta - y)'*(x*theta - y);
            h=0;
            h1=0;
            for i=1:47
                h=h1+((x(i,:)*theta)-y(i))*x(i,:);
                h1=h;
            end
            theta=theta2-((alpha2/47)*h)';
            theta2=theta;
    end
    theta2 = zeros(size(x(1,:)))';
    theta = zeros(size(x(1,:)))';
    for num_iterations = 1:50
        j3(num_iterations) = (1/2*47)*(x*theta - y)'*(x*theta - y);
            h=0;
            h1=0;
            for i=1:47
                h=h1+((x(i,:)*theta)-y(i))*x(i,:);
                h1=h;
            end
            theta=theta2-((alpha3/47)*h)';
            theta2=theta;
    end
    figure;
    plot(0:49, j1(1:50), 'g')
    hold on;
   plot(0:49, j2(1:50), 'b')
    plot(0:49, j3(1:50), 'r')
    xlabel('Number of Iterations')
    ylabel('Cost J')
    legend('Alpha=0.07', 'Alpha=0.04','Alpha=0.01');
end