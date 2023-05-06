using my.bookshop as my from '../db/model';

service CatalogService {
    @readonly entity Books as projection on my.Books;
    @readonly entity Author as projection on my.Author;
    @readonly entity Risks as projection on my.Risks;
    @readonly entity Mitigations as projection on my.Mitigations;
}