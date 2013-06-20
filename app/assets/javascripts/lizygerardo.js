// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

/* Namespace */
var LizYGerardo = window.LizYGerardo || {};
/**
 * @class LizYGerardo.AppController Our main app controller.
 *
 * @author Gerardo Rodriguez - mr.gerardo.rodriguez@gmail.com
 * @created 05/28/2013
 */
LizYGerardo.AppController = function() {
  'use strict';

  //-------------------------------------------------
  // Private Properties
  //-------------------------------------------------
  var BACK_TO_TOP_THRESHOLD = 700; // dictates when the 'back to top' shows up
  var SCROLL_TO_OFFSET = 50; // to take into account the top nav

  var $backToTopButton = $('#back-to-top');
  var _rsvpTimer;
  //-------------------------------------------------
  // Private Methods
  //-------------------------------------------------
  /**
   * @private constructor() - Takes care of any initial setup.
   */
  function constructor() {
    if( $('#nav').length) setupNav();

    // setupBackToTop();
    
    if($.cookie("response")){
      $('.status','#rsvp').addClass('anim-start').removeClass('anim-finish');
      _rsvpTimer = window.setInterval(checkRSVP, 500);
    }
  }

  function checkRSVP() {

    var scrollToPos = parseInt($('#rsvp-container').offset().top - SCROLL_TO_OFFSET);

    if(scrollToPos != $(document).scrollTop()){
      $.scrollTo(scrollToPos, 1000, { axis: 'y', easing:'easeInOutExpo' });
    } else {
      window.clearInterval(_rsvpTimer);
      $.removeCookie("response");
      $('.status','#rsvp').addClass('anim-finish').removeClass('anim-start');
    }
  }

  function setupNav() {
    var navigation = responsiveNav("#nav");
    
    // setup main nav scrollTo
    $('.section-link').on('click', function(e){
      var scrollToPos = parseInt($(e.currentTarget.hash).offset().top - SCROLL_TO_OFFSET);

      // console.log('scrollToPos: ', scrollToPos);
      // console.log('window scrolltop: ', $(document).scrollTop());

      if(scrollToPos != $(document).scrollTop()){
        $.scrollTo( scrollToPos, 1000, { axis: 'y', easing:'easeInOutExpo' });
      }

      return false;
    });
  }

  function setupBackToTop() {
    $(window).on('scroll', function(e){
      var fromTop = $(e.currentTarget).scrollTop();

      if (fromTop > BACK_TO_TOP_THRESHOLD) {
        $backToTopButton.addClass('active');
      } else {
        $backToTopButton.removeClass('active');
      }
    });

    // setup main nav scrollTo
    $('body').on('click', '.back.button.active', function(e){
      $.scrollTo( e.currentTarget.hash, 1000, { axis: 'y', easing:'easeInOutExpo' });
      return false;
    });
  }

  //-------------------------------------------------
  // Event Handlers
  //-------------------------------------------------

  //-------------------------------------------------
  // Public API
  //-------------------------------------------------
  var api = {
    // Public members
    // publicAttribute: true,

    //-------------------------------------------------
    // Public Methods
    //-------------------------------------------------
    // run: function() {
      // Public members are addressable through the 'api' object.
      // api.publicAttribute = false;
    // },

    //-------------------------------------------------
    // Getters/Setters
    //-------------------------------------------------

  };

  constructor();

  return api;
}();