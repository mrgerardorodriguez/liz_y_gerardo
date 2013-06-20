// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

/* Namespace */
var LizYGerardo = window.LizYGerardo || {};
/**
 * @class LizYGerardo.HomeController Our main app controller.
 *
 * @author Gerardo Rodriguez - mr.gerardo.rodriguez@gmail.com
 * @created 05/28/2013
 */
LizYGerardo.HomeController = function() {
  'use strict';

  //-------------------------------------------------
  // Private Properties
  //-------------------------------------------------
  var CLIENT_ID = "f9d0cd43f78b450d8c9c388ee1ed6927";
  // var INSTAGRAM_SEARCH_TAG = "lizygerardo2013";
  var INSTAGRAM_SEARCH_TAG = "puppy";

  var _instagramTemplate;
  var _$instagramPhotosContainer = $('#instagram-photos-container');

  var _breakpoints = {
    small: 500,
    medium: 768,
    large: 1000
  }

  //-------------------------------------------------
  // Private Methods
  //-------------------------------------------------
  /**
   * @private constructor() - Takes care of any initial setup.
   */
  function constructor() {

    if( $('#instagram-template').length ) {
      initLoader();
      initializeInstagramTemplate();
      getInstagramPhotos();
    }

    if( $('.edit_party').length ) setupGuestListUI();

    if( $('#liz-y-gerardo-text').length ) {
      windowSizeCheck();
    }
  }

  function setupGuestListUI() {
    var action = Modernizr.touch ? 'touchstart' : 'click';

    $('select', '.edit_party .guest-list .inactive').attr('disabled','disabled');

    $('.edit_party .guest-list li').on(action, '.action', function(e){
      var $currGuestHolder = $(e.delegateTarget);

      if ($(e.currentTarget).hasClass('remove')) {
        $currGuestHolder.find('input').val('').blur();
        $currGuestHolder.addClass('inactive');
        $(e.currentTarget).addClass('add').removeClass('remove');
        $currGuestHolder.find('select').attr('disabled','disabled');
      } else {
        $currGuestHolder.find('input').focus();
        $currGuestHolder.removeClass('inactive');
        $(e.currentTarget).removeClass('add').addClass('remove');
        $currGuestHolder.find('select').removeAttr('disabled');
      }


      return false;
    });

    $('.edit_party .guest-list .inactive').on('focus', 'input[type="text"]', function(e){
      var $currGuestHolder = $(e.delegateTarget);

      $currGuestHolder.removeClass('inactive');
      $currGuestHolder.find('.action').removeClass('add').addClass('remove');
      $currGuestHolder.find('select').removeAttr('disabled');
    });
  }

  function initLoader() {
    _$instagramPhotosContainer.addClass('loading');
  }

  function killLoader() {
    _$instagramPhotosContainer.removeClass('loading');
  }

  function setupPhotoGallery() {
    // Initialize the gallery
    $('.photo-gallery a').touchTouch();

  }

  function initializeInstagramTemplate() {
    var instagramSource   = $("#instagram-template").html();
    _instagramTemplate = Handlebars.compile(instagramSource);
  }

  function getInstagramPhotos() {
    $.ajax({
        type: "GET",
        dataType: "jsonp",
        cache: false,
        url: "https://api.instagram.com/v1/tags/" + INSTAGRAM_SEARCH_TAG + "/media/recent?client_id=" + CLIENT_ID,
        success: function(response) {
          // console.log('response: ', response);
          killLoader();
          renderInstagramPhotos(response);
          setupPhotoGallery();
        }
    });
  }

  function renderInstagramPhotos(response) {
    _$instagramPhotosContainer.html(_instagramTemplate(response));
  }

  function windowSizeCheck() {
    var currWidth = $(window).width();

    // console.log(currWidth);

    if (currWidth > 0 && currWidth < _breakpoints.small) {
      // console.log('tiny');
      showSmallerHeader();
    } else if(currWidth >= _breakpoints.small && currWidth < _breakpoints.medium) {
      // console.log('small');
      showSmallerHeader();
    } else if (currWidth >= _breakpoints.medium) {
      // console.log('medium');
      showLargerHeader();
    } else {
      // console.log('unknown');
    }
  }

  function showSmallerHeader() {
    $('#liz-y-gerardo-text').attr('src','/assets/bg_header_text.png');
  }

  function showLargerHeader() {
    $('#liz-y-gerardo-text').attr('src','/assets/bg_header_text_medium_up.png');
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

      // initializeInstagramTemplate();
      // getInstagramPhotos();
  
      // initUI();
    // },

    windowResizeUpdated: function() {
      windowSizeCheck();
    }

    //-------------------------------------------------
    // Getters/Setters
    //-------------------------------------------------

  };

  constructor();

  return api;
}();


$(function() {
  'use strict';

  // LizYGerardo.HomeController.run();
});

// debulked onresize handler
function on_resize(c,t){onresize=function(){clearTimeout(t);t=setTimeout(c,100)};return c};

on_resize(function() {

  LizYGerardo.HomeController.windowResizeUpdated();

});
