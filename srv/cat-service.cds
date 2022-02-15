using { sap.capire.bookshop as my } from '../db/schema';
service CatalogService @(path:'/browse') {

  // @readonly entity Books as SELECT from my.Books {*,
  //   author.name as author
  // } excluding { createdBy, modifiedBy };
  entity Books @readonly as projection on my.Books;
  entity Authors @readonly as projection on my.Authors;
  entity Books_Authors @readonly as projection on my.Books_Authors;

  @requires_: 'authenticated-user'
  action submitOrder (book: Books:ID, quantity: Integer);
}
