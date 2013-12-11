function [A B] = compute3 (a,b,c,d,e)

	a1 =[ (c*e*(a^2 + b^2)^2);  ( (c-e)*((a^2+b^2)^2) ); (2*c*e*(b^2-a^2)-(a^2+b^2)^2); (2*(c-e)*(b^2-a^2)); c*e-2*(b^2-a^2); (c-e)];
	A = [0 1 0 0 0 0; 0 0 1 0 0 0; 0 0 0 0 1 0; 0 0 0 0 0 1; a1' ]';
	
	b1 = [-c*(a^2+b^2); a^2+b^2+2*a*c-c*(a^2+b^2); a^2+b^2+2*a*c-2*a-c; 1-2*a-c; 1; 0];
	b2 = [c*(a^2+b^2); -a^2-b^2-2*a*c-c*(a^2+b^2); a^2+b^2+2*a*c+2*a+c; -1-2*a-c; 1; 0];
	B = [b1 b2];
	p2 = p2 = fliplr([-A(:,5)' 1]);
	p1 = polygcd(fliplr(B(:,1)')(2:6), fliplr(B(:,2)')(2:6));
	p1 = polygcd(p1, p2)
endfunction
