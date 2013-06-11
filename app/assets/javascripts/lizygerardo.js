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

  //-------------------------------------------------
  // Private Methods
  //-------------------------------------------------
  /**
   * @private constructor() - Takes care of any initial setup.
   */
  function constructor() {
    if( $('#nav').length) setupNav();
  }

  function setupNav() {
    var navigation = responsiveNav("#nav");
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


$(function() {
  'use strict';

  // LizYGerardo.AppController.run();
});