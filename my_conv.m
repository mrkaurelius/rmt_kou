%{
onv (a, b)
conv (a, b, shape)
Convolve two vectors a and b. 
When a and b are the coefficient vectors of two polynomials, the convolution represents the coefficient vector of the product polynomial. 
The size of the result is determined by the optional shape argument which takes the following values 
shape = "full"
Return the full convolution. (default) The result is a vector with length equal to length (a) + length (b) - 1. 
shape = "same"
Return the central part of the convolution with the same size as a. 
shape = "valid"
Return only the parts which do not include zero-padded edges. The size of the result is max (size (a) - size (b) + 1, 0). 
%}
function y = my_conv (a, b, shape = "full")

  if (nargin < 2 || nargin > 3)
    %print_usage ();
  endif

  if (! (isvector (a) && isvector (b)))
    error ("conv: both arguments A and B must be vectors");
  elseif (nargin == 3 && ! any (strcmpi (shape, {"full", "same", "valid"})))
    error ('conv: SHAPE argument must be "full", "same", or "valid"');
  endif

  la = la_orig = length (a);
  lb = lb_orig = length (b);

  ly = la + lb - 1;

  if (ly == 0)
    y = zeros (1, 0);
    return;
  endif

  ## Use shortest vector as the coefficent vector to filter.
  if (la > lb)
    [a, b] = deal (b, a);  # Swap vectors
    lb = la;
  endif
  x = b;

  ## Pad longer vector to convolution length.
  if (ly > lb)
    x(end+1:end+ly-lb) = 0;
  endif

  y = filter (a, 1, x);
 
  
  if (strcmpi (shape, "same"))
    idx = ceil ((ly - la) / 2);
    y = y(idx+1:idx+la) % burdaki olayi anla
  elseif (strcmpi (shape, "valid"))
    len = la_orig - lb_orig;
    y = y(lb_orig:lb_orig+len);
  endif

endfunction


