/****** Object:  StoredProcedure [dbo].[getEntity]    Script Date: 12/22/2017 6:13:00 PM ******/
DROP PROCEDURE [dbo].[getEntity]
GO
/****** Object:  StoredProcedure [dbo].[getEntity]    Script Date: 12/22/2017 6:13:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE [dbo].[getEntity]
    @param1 /*parameter name*/ int /*datatype_for_param1*/ = 0, /*default_value_for_param1*/
    @param2 /*parameter name*/ int /*datatype_for_param1*/ = 0 /*default_value_for_param2*/
-- add more stored procedure parameters here
AS
    -- body of the stored procedure
    SELECT @param1, @param2
GO
