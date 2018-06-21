function success = raise(obj)
% Change focus to object's parent figure.
%
% success = guiTools.util.parentfigure.changeto(obj)
%
% Inputs
% ------
%  obj : uicontrol or guiTools.uipanel object
%
% Output
%  success : True if object succesfully found and figure focus changed
%
% Written By: Damon Hyde
% Part of the crlBase Project
% 2009-2017
%

if ~isempty(obj)&&(ishghandle(obj)||isa(obj,'guiTools.uipanel'))
  if ishghandle(obj)
    figure(ancestor(obj,'figure'));
  elseif isa(obj,'guiTools.uipanel')
    figure(ancestor(obj.panel,'figure'));
  end
  success = true;
else
  success = false;
end;

end