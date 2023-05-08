namespace my.bookshop;


entity Author {
  key ID      : Integer;
      name    : String;
      surname : Integer;
      books   : Association to many Books
                  on books.author = $self;
}

entity Books {
  key ID       : Integer;
      title    : String;
      stock    : Integer;
      author  : Association to Author;
                   
}

using {managed} from '@sap/cds/common';

entity Risks : managed {
  key ID          : UUID @(Core.Computed: true);
      title       : String(100);
      owner       : String;
      prio        : String(5);
      descr       : String;
      miti        : Association to Mitigations;
      impact      : Integer;
      criticality : Integer;
}

entity Mitigations : managed {
  key ID       : UUID @(Core.Computed: true);
      descr    : String;
      owner    : String;
      timeline : String;
      risks    : Association to many Risks
                   on risks.miti = $self;
}
