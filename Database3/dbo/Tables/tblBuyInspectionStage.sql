﻿CREATE TABLE [dbo].[tblBuyInspectionStage] (
    [InspectionStageID]        BIGINT        IDENTITY (1, 1) NOT NULL,
    [RowLoadedDateTime]        DATETIME2 (7) DEFAULT (sysdatetime()) NOT NULL,
    [RowUpdatedDateTime]       DATETIME2 (7) NULL,
    [LastChangedByEmpID]       VARCHAR (128) NULL,
    [VIN]                      VARCHAR (17)  NULL,
    [Year]                     SMALLINT      NULL,
    [Make]                     VARCHAR (100) NULL,
    [Model]                    VARCHAR (100) NULL,
    [Color]                    VARCHAR (50)  NULL,
    [Images]                   VARCHAR (MAX) NULL,
    [Size]                     VARCHAR (100) NULL,
    [AuctionName]              VARCHAR (100) NULL,
    [SaleDate]                 DATE          NULL,
    [Lane]                     VARCHAR (50)  NULL,
    [Run]                      VARCHAR (50)  NULL,
    [Odometer]                 INT           NULL,
    [SellerName]               VARCHAR (220) NULL,
    [PreSaleAnnouncement]      VARCHAR (250) NULL,
    [IsDTInspectionRequested]  BIT           DEFAULT ((0)) NOT NULL,
    [IsDecommissioned]         BIT           DEFAULT ((0)) NOT NULL,
    [IsDecommissionedDateTime] DATETIME2 (7) NULL,
    [IsAccuCheckIssue]         TINYINT       DEFAULT ((0)) NULL,
    [IsAccuCheckIssueDateTime] DATETIME2 (7) NULL,
    [InspectionStrategyID]     TINYINT       NULL,
    [IsDeleted]                BIT           DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_tblInspectionStage_InspectionStageID] PRIMARY KEY CLUSTERED ([InspectionStageID] ASC) WITH (FILLFACTOR = 90)
);
