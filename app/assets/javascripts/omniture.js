$(document).ready(function() {
    try{
      updateOmnitureFrame();
    } catch(e){}
  });
function updateOmnitureFrame() {
    var omnitureFrame = $("iframe#omnitureFrame")
    var url = omnitureFrame.attr('data-omniture-url');
    $("iframe#omnitureFrame").attr('src', url);
}