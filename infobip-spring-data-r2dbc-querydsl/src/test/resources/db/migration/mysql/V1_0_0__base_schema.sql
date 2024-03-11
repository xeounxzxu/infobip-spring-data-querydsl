CREATE TABLE Person (
    Id        BIGINT AUTO_INCREMENT,
    FirstName NVARCHAR(20) NOT NULL,
    LastName  NVARCHAR(50) NOT NULL,
    CONSTRAINT PK_Person PRIMARY KEY (Id)
);

CREATE TABLE PersonSettings (
    Id       BIGINT AUTO_INCREMENT,
    PersonId BIGINT NOT NULL,
    CONSTRAINT PK_PersonSettings PRIMARY KEY (Id),
    CONSTRAINT FK_PersonSettings_PersonId FOREIGN KEY (PersonId) REFERENCES Person(Id) ON DELETE CASCADE
);

CREATE TABLE NoArgsEntity (
    Id    BIGINT AUTO_INCREMENT,
    Value NVARCHAR(20),
    CONSTRAINT PK_NoArgsEntity PRIMARY KEY (Id)
);

CREATE TABLE TransientEntity (
    Id    BIGINT AUTO_INCREMENT,
    Value NVARCHAR(20),
    CONSTRAINT PK_TransientEntity PRIMARY KEY (Id)
);

CREATE TABLE PagingEntity (
    Id    BIGINT AUTO_INCREMENT,
    Value NVARCHAR(20),
    CONSTRAINT PK_PagingEntity PRIMARY KEY (Id)
);

CREATE TABLE sorting_entity (
   id    BIGINT AUTO_INCREMENT,
   foo_bar NVARCHAR(20),
   CONSTRAINT PK_sorting_entity PRIMARY KEY (id)
);