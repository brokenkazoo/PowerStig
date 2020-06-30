configuration SharePoint_config
{
    [CmdletBinding()]
    param
    (
        [Parameter()]
        [AllowNull()]
        [string]
        $TechnologyVersion,

        [Parameter()]
        [AllowNull()]
        [string]
        $TechnologyRole,

        [Parameter(Mandatory = $true)]
        [string]
        $StigVersion,

        [Parameter()]
        [string[]]
        $SkipRule,

        [Parameter()]
        [string[]]
        $SkipRuleType,

        [Parameter()]
        [hashtable]
        $BackwardCompatibilityException,

        [Parameter()]
        [object]
        $OrgSettings,

        [Parameter()]
        [string]
        $WebAppUrl,

        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [System.Management.Automation.PSCredential]
        $SetupAccount
    )

    Import-DscResource -ModuleName PowerStig

    Node localhost
    {
        & ([scriptblock])::Create("
        SharePoint Configuration
        {
            SharePointVersion = '$TechnologyVersion'
            StigVersion = '$StigVersion'
            WebAppurl = 'test.com'
            SetupAccount = '$SetupAccount'
            $(if ($OrgSettings -is [hashtable])
            {
                "Orgsettings = @{`n$($OrgSettings.Keys |
                    ForEach-Object {"'{0}' = {1}{2} = '{3}'{4}`n" -f
                        $PSItem, '@{', $($OrgSettings[$PSItem].Keys), $($OrgSettings[$PSItem][$OrgSettings[$PSItem].Keys]), '}'})}"
            }
            elseif ($null -ne $OrgSettings)
            {
                "Orgsettings = '$OrgSettings'"
            })
            $(if ($null -ne $Exception)
            {
                "Exception = @{`n$($Exception.Keys |
                    ForEach-Object {"'{0}' = {1}{2} = '{3}'{4}`n" -f
                        $PSItem, '@{', $($Exception[$PSItem].Keys), $($Exception[$PSItem][$Exception[$PSItem].Keys]), '}'})}"
            })
            $(if ($null -ne $BackwardCompatibilityException)
            {
                "Exception = @{`n$($BackwardCompatibilityException.Keys |
                    ForEach-Object {"'{0}' = {1}`n" -f $PSItem, $BackwardCompatibilityException[$PSItem]})}"
            })
            $(if ($null -ne $SkipRule)
            {
                "SkipRule = @($( ($SkipRule | ForEach-Object {"'$PSItem'"}) -join ',' ))`n"
            })
        }")
    }
}