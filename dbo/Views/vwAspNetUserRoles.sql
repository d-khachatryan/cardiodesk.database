CREATE VIEW [dbo].[vwAspNetUserRoles]
AS
SELECT     dbo.AspNetUserRoles.UserId, dbo.AspNetUserRoles.RoleId, dbo.AspNetRoles.Name
FROM         dbo.AspNetUserRoles INNER JOIN
                      dbo.AspNetRoles ON dbo.AspNetUserRoles.RoleId = dbo.AspNetRoles.Id

