
$('#showLeftPush').click(function(){
      $(this).toggleClass('open');
  });

  var menuLeft = document.getElementById( 'cbp-spmenu-s1' ),

     showLeftPush = document.getElementById( 'showLeftPush' ),
     body = document.body;
   
     showLeftPush.onclick = function() {
        classie.toggle( this, 'active' );
        classie.toggle( body, 'cbp-spmenu-push-toright' );
        classie.toggle( menuLeft, 'cbp-spmenu-open' );
        // classie.toggle( header, 'header2' );
        disableOther( 'showLeftPush' );
       
     };
    function disableOther( button ) {
      if( button !== 'showLeft' ) {
         classie.toggle( showLeft, 'disabled' );
      }
   
      if( button !== 'showLeftPush' ) {
         classie.toggle( showLeftPush, 'disabled' );
      }   
    }



    
    $(window).scroll(function(){
      if ($(window).scrollTop() >= 1) {
        $('#header').addClass('fixed-header');
      }
      else {
        $('#header').removeClass('fixed-header');
      }
    });


    $(document).ready(function() {
      $('.owl-carousel').owlCarousel({
        loop: true,
        margin: 10,
        responsiveClass: true,
        responsive: {
          0: {
            items: 1,
            nav: true
          },
          600: {
            items: 3,
            nav: false
          },
          1000: {
            items: 4,
            nav: true,
            loop: false,
            margin: 20
          }
        }
      })
    })
    