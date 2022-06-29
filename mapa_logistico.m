
clear all
close all
clc

xvals=[];
for beta = 0:0.01:4
beta;

xold = 0.5;                        %initializing x

%transient
    for i=1:2000
    xnew=((xold-xold^2)*beta);
    xold=xnew;
    end

xss=xnew;
    for i=1:1000
    xnew=((xold-xold^2)*beta);
    xold=xnew;
    
    xvals(1,length(xvals)+1)=beta;
    xvals(2,length(xvals))=xnew;
    
        if(abs(xnew-xss)<.001)
        break
        end
    end
end

plot(xvals(1,:), xvals(2,:), ".", 'LineWidth',0.1, 'MarkerSize',0.2 )                   %the 1 1 1 vector represents white color
