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

  var instagramTemplate;
  //-------------------------------------------------
  // Private Methods
  //-------------------------------------------------
  /**
   * @private init() - Takes care of any initial setup.
   */
  function init() {
      initializeInstagramTemplate();
      getInstagramPhotos();
  }

  function initializeInstagramTemplate() {
    var instagramSource   = $("#instagram-template").html();
    instagramTemplate = Handlebars.compile(instagramSource);
  }

  function getInstagramPhotos() {
    $.ajax({
        type: "GET",
        dataType: "jsonp",
        cache: false,
        url: "https://api.instagram.com/v1/tags/marinedrive/media/recent?client_id=" + CLIENT_ID,
        success: function(response) {
          renderInstagramPhotos(response);
        }
    });
  }

  function renderInstagramPhotos(response) {
    $('#instagram-photos-container').html(instagramTemplate(response));
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
    }
    //-------------------------------------------------
    // Getters/Setters
    //-------------------------------------------------

  };

  init();

  return api;
}();


$(function() {
  'use strict';

  // LizYGerardo.HomeController.run();
});