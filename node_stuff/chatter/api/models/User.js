/**
 * User
 *
 * @module      :: Model
 * @description :: A short summary of how this model works and what it represents.
 * @docs		:: http://sailsjs.org/#!documentation/models
 */

  	/*e.g.
  	nickname: 'string'
  	*/
    var Waterline = require('waterline');

    var User = Waterline.Model.extend({

      /**
       * Set Table Name to whatever you want
       */

      tableName: 'waterline_user',

      /**
       * Attributes are equal to Database Columns
       * in a relational database or documents in a
       * document-oriented database.
       */

      attributes: {
        first_name: {
          type: 'string',
          minLength: 5,
          required: true
        },

        last_name: {
          type: 'string',
          minLength: 5,
          required: true
        },

        fullName: function() {
          return this.first_name + ' ' + this.last_name;
        }
      }


      });

    module.exports = User;
