CREATE TABLE auth.RefreshToken (
    TokenID UNIQUEIDENTIFIER NOT NULL,
    UserID UNIQUEIDENTIFIER NOT NULL,
    Token NVARCHAR(255) NOT NULL,
    Expires DATETIME2(0) NOT NULL,
    CreatedAt DATETIME2(0) NOT NULL DEFAULT GETDATE(),
    RevokedAt DATETIME2(0) NULL,
    ReplacedByToken NVARCHAR(255) NULL,
    CONSTRAINT PK_RefreshToken PRIMARY KEY (TokenID),
    CONSTRAINT FK_RefreshToken_User FOREIGN KEY (UserID)
        REFERENCES auth.UserAccount(UserID)
        ON DELETE CASCADE
);