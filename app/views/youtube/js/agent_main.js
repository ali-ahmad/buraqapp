$(document).ready(function(){
  $('#showLeft').click(function(){
    $(this).toggleClass('open');
  });
});
var menuLeft = document.getElementById( 'cbp-spmenu-s1' ),
  menuTop = document.getElementById( 'cbp-spmenu-s3' )
  showLeft = document.getElementById( 'showLeft' ),
  showTop = document.getElementById( 'showTop' )
  body = document.body;
showLeft.onclick = function() {
  classie.toggle( this, 'active' );
  classie.toggle( menuLeft, 'cbp-spmenu-open' );
  disableOther( 'showLeft' );
};
showTop.onclick = function() {
  classie.toggle( this, 'active' );
  classie.toggle( menuTop, 'cbp-spmenu-open' );
  disableOther( 'showTop' );
};
function disableOther( button ) {
  if( button !== 'showLeft' ) {
    classie.toggle( showLeft, 'disabled' );
  }
  if( button !== 'showTop' ) {
    classie.toggle( showTop, 'disabled' );
  }
}
(function(window){
    // get vars
    var searchEl = document.querySelector("#input");
    var labelEl = document.querySelector("#label");

    // register clicks and toggle classes
    labelEl.addEventListener("click",function(){
        if (classie.has(searchEl,"focus")) {
            classie.remove(searchEl,"focus");
            classie.remove(labelEl,"active");
        } else {
            classie.add(searchEl,"focus");
            classie.add(labelEl,"active");
        }
    });
    // register clicks outisde search box, and toggle correct classes
    document.addEventListener("click",function(e){
        var clickedID = e.target.id;
        if (clickedID != "search-terms" && clickedID != "search-label") {
            if (classie.has(searchEl,"focus")) {
                classie.remove(searchEl,"focus");
                classie.remove(labelEl,"active");
            }
        }
    });
}(window));
