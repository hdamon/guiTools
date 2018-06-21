function parentFig = get(obj)
% Returns the parent figure of a gui object

parentFig = [];
if ~isempty(obj)&&(ishghandle(obj)||isa(obj,'guiTools.uipanel'))
  if ishghandle(obj)
    parentFig = ancestor(obj,'figure');
  elseif isa(obj,'guiTools.uipanel')
    parentFig = ancestor(obj.panel,'figure');
  end
end

  