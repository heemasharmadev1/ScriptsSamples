#Connect to your tenant
Connect-SPOService https://*****-admin.sharepoint.com

#Check the current status of the CDN capability - by default disabled
Get-SPOTenantCdnEnabled -CdnType Public
Get-SPOTenantCdnEnabled -CdnType Private

#Enable CDN using default settings - -NoDefaultOrigins a optional parameter
Set-SPOTenantCdnEnabled -CdnType Public
Set-SPOTenantCdnEnabled -CdnType Private

#Get CDN policies
Get-SPOTenantCdnPolicies -CdnType Public #specifically desgined for Sharepoint online and sharpeoint online pages
Get-SPOTenantCdnPolicies -CdnType Private

#Get CDN origins
Get-SPOTenantCdnOrigins -CdnType Public
Get-SPOTenantCdnOrigins -CdnType Private

#Add CDN origins
Add-SPOTenantCdnOrigin -CdnType Public -OriginUrl sites/Teamsitedemo/cdn
Add-SPOTenantCdnOrigin -CdnType Private -OriginUrl sites/Teamsitedemo/assets

#Remove CDN origins
Remove-SPOTenantCdnOrigin -CdnType Public -OriginUrl sites/Teamsitedemo/cdn #caching will be for 30 days
Remove-SPOTenantCdnOrigin -CdnType Private -OriginUrl sites/Teamsitedemo/assets #caching will be for 1 hr

#Disable CDN using default settings
Set-SPOTenantCdnEnabled -CdnType Public -Enable $false
Set-SPOTenantCdnEnabled -CdnType Private -Enable $false
