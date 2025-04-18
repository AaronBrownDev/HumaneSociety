CREATE TABLE auth.UserAccount (
    UserID UNIQUEIDENTIFIER NOT NULL,
    PasswordHash NVARCHAR(255) NOT NULL,
    LastLogin DATETIME2(0) NULL,
    IsActive BIT NOT NULL DEFAULT 1,
    FailedLoginAttempts INT NOT NULL DEFAULT 0,
    IsLocked BIT NOT NULL DEFAULT 0,
    LockoutEnd DATETIME2(0) NULL,
    CreatedAt DATETIME2(0) NOT NULL DEFAULT GETDATE(),
    CONSTRAINT PK_UserAccount PRIMARY KEY (UserID),
    CONSTRAINT FK_UserAccount_Person FOREIGN KEY (UserID)
        REFERENCES people.Person(PersonID)
        ON DELETE CASCADE
);