$(function(){
  var $doc = $(document);
  $doc.on('change', '.btn', function(){
    $doc.find('.sub').toggle();
  });
});
