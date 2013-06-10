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
  var INSTAGRAM_SEARCH_TAG = "puppy";

  var _instagramTemplate;
  var _$instagramPhotosContainer = $('#instagram-photos-container');
  //-------------------------------------------------
  // Private Methods
  //-------------------------------------------------
  /**
   * @private constructor() - Takes care of any initial setup.
   */
  function constructor() {

    if( $('#instagram-template').length) {
      initLoader();
      initializeInstagramTemplate();
      getInstagramPhotos();
    }

    if ($('#guest-form').length) setupGuestListUI();
  }

  function setupGuestListUI() {
    var action = Modernizr.touch ? 'touchstart' : 'click';

    $('input', '#guest-form .guest-list .inactive').attr('disabled','disabled');

    $('.action', '#guest-form .guest-list').on(action, function(e){

      var currGuestHolder = $(e.currentTarget).parent();

      if ($(e.currentTarget).hasClass('remove')) {
        $(currGuestHolder).addClass('inactive');
        $('input', currGuestHolder).val('').attr('disabled','disabled');
        $(e.currentTarget).removeClass('remove').addClass('add');
      } else {
        $(currGuestHolder).removeClass('inactive');
        $('input', currGuestHolder).removeAttr('disabled').focus();
        $(e.currentTarget).removeClass('add').addClass('remove');
      }

      e.preventDefault();
      e.stopPropagation();
      return false;
    });
  }

  function initLoader() {
    _$instagramPhotosContainer.addClass('loading');
  }

  function killLoader() {
    _$instagramPhotosContainer.removeClass('loading');
  }

  function setupPhotoGallery() {
/*    $('.popup-link').magnificPopup({
      // Delay in milliseconds before popup is removed
      removalDelay: 1000,
      // Class that is added to popup wrapper and background
      // make it unique to apply your CSS animations just to this exact popup
      mainClass: 'mfp-fade'
    });
*/

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
          killLoader();
          renderInstagramPhotos(response);
          setupPhotoGallery();
        }
    });
  }

  function renderInstagramPhotos(response) {
    _$instagramPhotosContainer.html(_instagramTemplate(response));
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
    run: function() {
      // Public members are addressable through the 'api' object.
      // api.publicAttribute = false;

      // initializeInstagramTemplate();
      // getInstagramPhotos();
  
      // initUI();
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