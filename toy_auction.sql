--
-- Toy Auction Database Version 4
--  (includes the Auction table);
--

CREATE Table Users (
	UserID int IDENTITY PRIMARY KEY,
	Name varchar(25) NOT NULL,
	Address varchar(50),
	City varchar(25),
	State char(2),
	Zip char(5),
	Phone char(14),
	Email varchar(50)
);

CREATE TABLE Colors(
	ColorID int IDENTITY PRIMARY KEY,
	ColorName varchar(50) NOT NULL
);
GO
CREATE TABLE Toys (
	ToyID int IDENTITY PRIMARY KEY,
	Name varchar(50) NOT NULL,
	NumberLegs int,
	ColorID int FOREIGN KEY REFERENCES Colors(ColorID),
	OwnerID int NOT NULL FOREIGN KEY REFERENCES Users(UserID)
);
GO
CREATE Table Auctions (
	AuctionID int IDENTITY PRIMARY KEY,
	ToyID int NOT NULL FOREIGN KEY REFERENCES Toys(ToyID),
	WinningBidderID int FOREIGN KEY REFERENCES Users(UserID),
	WinningBid decimal(5),
	AuctionStart datetime,
	Duration datetime
);
GO
CREATE Table CurrentBids (
	BidderID int NOT NULL FOREIGN KEY REFERENCES Users(UserID),
	AuctionID int NOT NULL FOREIGN KEY REFERENCES Auctions(AuctionID),
	BidTime datetime NOT NULL,
	Bid decimal(5) NOT NULL,
	PRIMARY KEY(BidderID, AuctionID, BidTime)
);

-- --------------------------------------------
-- Users Data
-- --------------------------------------------
INSERT INTO Users (Name,Address,City,Phone) VALUES ('Lewis Herrera','Ap #852-1700 Turpis Ave','Lowell','(507) 521-6909');
INSERT INTO Users (Name,Address,City,Phone) VALUES ('Beatrice Guerra','2386 Orci St.','Bothell','(670) 718-3690');
INSERT INTO Users (Name,Address,City,Phone) VALUES ('Clarke Rush','308-4529 Faucibus Ave','San Dimas','(564) 564-6068');
INSERT INTO Users (Name,Address,City,Phone) VALUES ('Tiger Valenzuela','Ap #841-2784 Mi Rd.','Sonoma','(664) 666-4936');
INSERT INTO Users (Name,Address,City,Phone) VALUES ('Caldwell Sawyer','901-1943 Ut, Ave','Beckley','(370) 969-8445');
INSERT INTO Users (Name,Address,City,Phone) VALUES ('Craig Riddle','856-4633 Neque. Av.','Benton Harbor','(589) 851-6981');
INSERT INTO Users (Name,Address,City,Phone) VALUES ('Silas Acosta','2792 Mauris St.','Cambridge','(420) 875-0598');
INSERT INTO Users (Name,Address,City,Phone) VALUES ('Todd Roth','276-9837 Pharetra. Avenue','Chino Hills','(718) 799-5916');
INSERT INTO Users (Name,Address,City,Phone) VALUES ('Orson Humphrey','Ap #865-9263 Mauris St.','La Mirada','(499) 488-1184');
INSERT INTO Users (Name,Address,City,Phone) VALUES ('Ginger Steele','4974 Mauris St.','Rockford','(943) 860-6187');
INSERT INTO Users (Name,Address,City,Phone) VALUES ('Sean Oconnor','P.O. Box 651','Bothell','(206) 601-9970');
INSERT INTO Users (Name,Address,City,Phone) VALUES ('Vernon Delgado','Ap #178-7481 Dolor Av.','Hialeah','(135) 903-5766');
INSERT INTO Users (Name,Address,City,Phone) VALUES ('Hanae Walter','P.O. Box 834, 4177 A, Av.','Concord','(931) 730-9196');
INSERT INTO Users (Name,Address,City,Phone) VALUES ('Demetria Olsen','P.O. Box 565, 2721 Aliquam Road','Cary','(889) 552-4715');
INSERT INTO Users (Name,Address,City,Phone) VALUES ('Kim Lambert','9100 Odio. Rd.','Cedarburg','(390) 496-6660');
INSERT INTO Users (Name,Address,City,Phone) VALUES ('Marsden Cooke','P.O. Box 249, 6957 Massa. Av.','Moreno Valley','(790) 506-0534');
INSERT INTO Users (Name,Address,City,Phone) VALUES ('Jennifer Frank','716-1845 Mauris Ave','Council Bluffs','(488) 194-2223');
INSERT INTO Users (Name,Address,City,Phone) VALUES ('Hakeem Vincent','9382 Commodo St.','Middlebury','(955) 690-0268');
INSERT INTO Users (Name,Address,City,Phone) VALUES ('Kirk Haley','Ap #865-5697 Dolor. Ave','Salem','(700) 923-3124');
INSERT INTO Users (Name,Address,City,Phone) VALUES ('Basia Chandler','Ap #614-6756 Libero St.','Pascagoula','(679) 355-6524');
INSERT INTO Users (Name,Address,City,Phone) VALUES ('Hanae Sears','2446 Sed St.','Boulder','(154) 378-3984');
INSERT INTO Users (Name,Address,City,Phone) VALUES ('Moana Hood','P.O. Box 878, 3187 Ante. Road','Hollywood','(480) 905-3974');
INSERT INTO Users (Name,Address,City,Phone) VALUES ('Philip Winters','Ap #984-1399 Proin Av.','Glens Falls','(852) 799-1032');
INSERT INTO Users (Name,Address,City,Phone) VALUES ('Wang Morgan','3030 At Road','Bothell','(206) 901-9605');
INSERT INTO Users (Name,Address,City,Phone) VALUES ('Lila Cline','Ap #219-1766 Augue, Rd.','North Little Rock','(137) 456-0105');
INSERT INTO Users (Name,Address,City,Phone) VALUES ('Steven Gardner','5266 A St.','Bethlehem','(170) 675-2936');
INSERT INTO Users (Name,Address,City,Phone) VALUES ('Margaret Lancaster','Ap #247-147 Lacus Street','Baldwin Park','(761) 876-7078');
INSERT INTO Users (Name,Address,City,Phone) VALUES ('Yasir Dyer','9855 Nonummy Avenue','Narragansett','(758) 794-3436');
INSERT INTO Users (Name,Address,City,Phone) VALUES ('Amaya Key','P.O. Box 379','Bothell','(425) 167-0860');
INSERT INTO Users (Name,Address,City,Phone) VALUES ('Stephanie Moran','P.O. Box 497, 3444 Pretium Rd.','Belpre','(965) 335-7969');
INSERT INTO Users (Name,Email,Phone) VALUES (N'Hanae Sears', N'sing@song.org', N'(154) 378-3984');
INSERT INTO Users (Name,Email,Phone) VALUES (N'Moana Hood', N'went@go.com', N'(480) 905-3974');
INSERT INTO Users (Name,Email,Phone) VALUES (N'Philip Winters', N'happy@sad.com', N'(852) 799-1032');
INSERT INTO Users (Name,Email,Phone) VALUES (N'Wang Morgan', N'rignt@nome.com', N'(364) 901-9605');
INSERT INTO Users (Name,Email,Phone) VALUES (N'Lila Cline', N'left@none.com', N'(137) 456-0105');
INSERT INTO Users (Name,Email,Phone) VALUES (N'Steven Gardner', N'test@home.com', N'(170) 675-2936');
INSERT INTO Users (Name,Email,Phone) VALUES (N'Lyle Duke', N'in@tellusnon.ca', N'1-472-605-0970');
INSERT INTO Users (Name,Email,Phone) VALUES (N'Sopoline Stuart', N'eu@iaculis.ca', N'1-894-882-8565');
INSERT INTO Users (Name,Email,Phone) VALUES (N'Rashad Anderson', N'ante@ipsumnon.edu', N'1-108-454-0310');
INSERT INTO Users (Name,Email,Phone) VALUES (N'Rhona Blake', N'dictum@consequat.org', N'1-479-664-1041');
INSERT INTO Users (Name,Email,Phone) VALUES (N'Virginia Nash', N'enim@id.com', N'1-233-495-1435');
INSERT INTO Users (Name,Email,Phone) VALUES (N'Yeo Madden', N'magna@Nulla.ca', N'1-442-396-0966');
INSERT INTO Users (Name,Email,Phone) VALUES (N'Deanna Mccarthy', N'quam@dis.edu', N'1-593-685-5893');
INSERT INTO Users (Name,Email,Phone) VALUES (N'Wynter Patton', N'Nunc@metus.ca', N'1-591-717-5719');
INSERT INTO Users (Name,Email,Phone) VALUES (N'Desirae Bird', N'cursus@vulputate.com', N'1-302-307-6690');
INSERT INTO Users (Name,Email,Phone) VALUES (N'Tweedle Dee', N'tweedles@email.com', N'800-455=3333');

-- --------------------------------------------
-- Colors Data
-- --------------------------------------------
INSERT INTO Colors (ColorName) VALUES (N'green');
INSERT INTO Colors (ColorName) VALUES (N'red');
INSERT INTO Colors (ColorName) VALUES (N'yellow');
INSERT INTO Colors (ColorName) VALUES (N'blue');
INSERT INTO Colors (ColorName) VALUES (N'orange');
INSERT INTO Colors (ColorName) VALUES (N'fuschia');
INSERT INTO Colors (ColorName) VALUES (N'indigo');
INSERT INTO Colors (ColorName) VALUES (N'violet');
INSERT INTO Colors (ColorName) VALUES (N'cyan');
INSERT INTO Colors (ColorName) VALUES (N'aqua');
INSERT INTO Colors (ColorName) VALUES (N'purple');
INSERT INTO Colors (ColorName) VALUES (N'turquoise');
INSERT INTO Colors (ColorName) VALUES (N'grey');
INSERT INTO Colors (ColorName) VALUES (N'black');
INSERT INTO Colors (ColorName) VALUES (N'brown');
-- --------------------------------------------
-- Toys Data
-- --------------------------------------------

INSERT INTO Toys (Name,NumberLegs,ColorID,OwnerID) VALUES (N'frumy dog', 0, 2, 20);
INSERT INTO Toys (Name,NumberLegs,ColorID,OwnerID) VALUES (N'wheeled bear', 6, 4, 9);
INSERT INTO Toys (Name,NumberLegs,ColorID,OwnerID) VALUES (N'round horse', 1, 4, 5);
INSERT INTO Toys (Name,NumberLegs,ColorID,OwnerID) VALUES (N'fighter', 3, 4, 9);
INSERT INTO Toys (Name,NumberLegs,ColorID,OwnerID) VALUES (N'fighter ', 5, 4, 10);
INSERT INTO Toys (Name,NumberLegs,ColorID,OwnerID) VALUES (N'crab', 3, 2, 1);
INSERT INTO Toys (Name,NumberLegs,ColorID,OwnerID) VALUES (N'rocking horse', 0, 3, 8);
INSERT INTO Toys (Name,NumberLegs,ColorID,OwnerID) VALUES (N'crawing baby', 1, 3, 17);
INSERT INTO Toys (Name,NumberLegs,ColorID,OwnerID) VALUES (N'jet', 2, 1, 13);
INSERT INTO Toys (Name,NumberLegs,ColorID,OwnerID) VALUES (N'cow bell', 2, 1, 6);
INSERT INTO Toys (Name,NumberLegs,ColorID,OwnerID) VALUES (N'hopping egg', 3, 4, 29);
INSERT INTO Toys (Name,NumberLegs,ColorID,OwnerID) VALUES (N'nija turtle', 2, 2, 24);
INSERT INTO Toys (Name,NumberLegs,ColorID,OwnerID) VALUES (N'binoculars', 4, 4, 2);
INSERT INTO Toys (Name,NumberLegs,ColorID,OwnerID) VALUES (N'finger puppet', 2, 1, 27);
INSERT INTO Toys (Name,NumberLegs,ColorID,OwnerID) VALUES (N'soft mouse', 6, 1, 26);
INSERT INTO Toys (Name,NumberLegs,ColorID,OwnerID) VALUES (N'walking egg', 5, 2, 26);
INSERT INTO Toys (Name,NumberLegs,ColorID,OwnerID) VALUES (N'Saxiphone Bear', 0, 2, 8);
INSERT INTO Toys (Name,NumberLegs,ColorID,OwnerID) VALUES (N'fuzz ball', 0, 2, 20);
INSERT INTO Toys (Name,NumberLegs,ColorID,OwnerID) VALUES (N'dino', 4, 3, 20);
INSERT INTO Toys (Name,NumberLegs,ColorID,OwnerID) VALUES (N'shark', 1, 2, 5);
INSERT INTO Toys (Name,NumberLegs,ColorID,OwnerID) VALUES (N'fighter with gun', 5, 3, 5);
INSERT INTO Toys (Name,NumberLegs,ColorID,OwnerID) VALUES (N'painting bunny', 4, 1, 11);
INSERT INTO Toys (Name,NumberLegs,ColorID,OwnerID) VALUES (N'wind up boat', 3, 4, 10);
INSERT INTO Toys (Name,NumberLegs,ColorID,OwnerID) VALUES (N'crab', 4, 1, 12);
INSERT INTO Toys (Name,NumberLegs,ColorID,OwnerID) VALUES (N'tellus faucibus', 4, 1, 24);
INSERT INTO Toys (Name,NumberLegs,ColorID,OwnerID) VALUES (N'telephone', 0, 4, 19);
INSERT INTO Toys (Name,NumberLegs,ColorID,OwnerID) VALUES (N'tricycle', 2, 1, 12);
INSERT INTO Toys (Name,NumberLegs,ColorID,OwnerID) VALUES (N'cow', 4, 4, 11);
INSERT INTO Toys (Name,NumberLegs,ColorID,OwnerID) VALUES (N'Chatskidoodle', 100, 1, 8);
INSERT INTO Toys (Name,NumberLegs,ColorID,OwnerID) VALUES (N'batman', 2, 5, 38);
INSERT INTO Toys (Name,NumberLegs,ColorID,OwnerID) VALUES (N'Donald Duck', 1, 5, 25);
INSERT INTO Toys (Name,NumberLegs,ColorID,OwnerID) VALUES (N'King Kong', 2, 10, 20);
INSERT INTO Toys (Name,NumberLegs,ColorID,OwnerID) VALUES (N'JackToy', 8, 3, 41);
INSERT INTO Toys (Name,NumberLegs,ColorID,OwnerID) VALUES (N'Peanut Drag Doll', 3, 8, 28);
INSERT INTO Toys (Name,NumberLegs,ColorID,OwnerID) VALUES (N'Speed Racer Smart Car', 2, 7, 42);
INSERT INTO Toys (Name,NumberLegs,ColorID,OwnerID) VALUES (N'Adorable Koala', 4, 13, 36);
INSERT INTO Toys (Name,NumberLegs,ColorID,OwnerID) VALUES (N'Angel Ninja', 2, 10, 3);
INSERT INTO Toys (Name,NumberLegs,ColorID,OwnerID) VALUES (N'Smiling Chicken', 2, 9, 39);
INSERT INTO Toys (Name,NumberLegs,ColorID,OwnerID) VALUES (N'fluffy duck', 2, 3, 5);
INSERT INTO Toys (Name,NumberLegs,ColorID,OwnerID) VALUES (N'fluffy pig', 4, 9, 25);
