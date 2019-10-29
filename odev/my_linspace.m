%{
linspace (start, end)
linspace (start, end, n)
Return a row vector with n linearly spaced elements between start and end. 
If the number of elements is greater than one, then the endpoints start and end are always included in the range.
If start is greater than end, the elements are stored in decreasing order. If the number of points is not specified, a value of 100 is used. 
The linspace function returns a row vector when both start and end are scalars. If one, or both, inputs are vectors, then linspace transforms them to column vectors and returns a matrix where each row is an independent sequence between start(row_n), end(row_n). 
For compatibility with MATLAB, return the second argument (end) when only a single value (n = 1) is requested. 
%}

function [out] = my_linspace (start,endd,n)
  %printf("parametre sayisi %d\n",nargin)
  switch nargin
    case 0
      error("eleman sayisi %d olamaz\n",nargin);
    case 1
      error("eleman sayisi %d olamaz\n",nargin);
    case 2
      aralik = 100 - 1;
      fark = ((endd) - start) / aralik;
      %out = start:fark:endd
      out = start:fark:endd;
    case 3
      
      if n == 1
        out = endd;
      else
        aralik = n - 1;
        fark = ((endd) - start) / aralik;
        %out = start:fark:endd
        out = start:fark:endd;
      endif
      
  otherwise
    error("olmaz oyle sacma sey")
  end
  
endfunction
