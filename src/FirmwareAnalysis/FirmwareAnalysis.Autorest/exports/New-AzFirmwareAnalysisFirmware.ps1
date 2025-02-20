
# ----------------------------------------------------------------------------------
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# Code generated by Microsoft (R) AutoRest Code Generator.Changes may cause incorrect behavior and will be lost if the code
# is regenerated.
# ----------------------------------------------------------------------------------

<#
.Synopsis
The operation to create a firmware.
.Description
The operation to create a firmware.
.Example
New-AzFirmwareAnalysisFirmware -ResourceGroupName resourceGroupName -WorkspaceName workspaceName -Description description -FileSize 1  -FileName fileName -Vendor vendor -Model model -Version version
.Example
New-AzFirmwareAnalysisFirmware -Id firmwareId -ResourceGroupName resourceGroupName -WorkspaceName workspaceName -Description description -FileSize 1  -FileName fileName -Vendor vendor -Model model -Version version

.Outputs
Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.IFirmware
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

STATUSMESSAGE <IStatusMessage[]>: A list of errors or other messages generated during firmware analysis
  [ErrorCode <Int64?>]: The error code
  [Message <String>]: The error or status message
.Link
https://learn.microsoft.com/powershell/module/az.firmwareanalysis/new-azfirmwareanalysisfirmware
#>
function New-AzFirmwareAnalysisFirmware {
[OutputType([Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.IFirmware])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
param(
    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Category('Path')]
    [System.String]
    # The name of the resource group.
    # The name is case insensitive.
    ${ResourceGroupName},

    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Category('Path')]
    [System.String]
    # The name of the firmware analysis workspace.
    ${WorkspaceName},

    [Parameter()]
    [Alias('FirmwareId')]
    [Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Runtime.DefaultInfo(Name='Id', Description='Gets the Id from the current context.', Script='New-Guid')]
    [System.String]
    # The id of the firmware.
    ${Id},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Runtime.DefaultInfo(Script='(Get-AzContext).Subscription.Id')]
    [System.String]
    # The ID of the target subscription.
    # The value must be an UUID.
    ${SubscriptionId},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Category('Body')]
    [System.String]
    # User-specified description of the firmware.
    ${Description},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Category('Body')]
    [System.String]
    # File name for a firmware that user uploaded.
    ${FileName},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Category('Body')]
    [System.Int64]
    # File size of the uploaded firmware image.
    ${FileSize},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Category('Body')]
    [System.String]
    # Firmware model.
    ${Model},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.PSArgumentCompleterAttribute("Pending", "Extracting", "Analyzing", "Ready", "Error")]
    [Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Category('Body')]
    [System.String]
    # The status of firmware scan.
    ${Status},

    [Parameter()]
    [AllowEmptyCollection()]
    [Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Models.IStatusMessage[]]
    # A list of errors or other messages generated during firmware analysis
    # .
    ${StatusMessage},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Category('Body')]
    [System.String]
    # Firmware vendor.
    ${Vendor},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Category('Body')]
    [System.String]
    # Firmware version.
    ${Version},

    [Parameter()]
    [Alias('AzureRMContext', 'AzureCredential')]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Category('Azure')]
    [System.Management.Automation.PSObject]
    # The DefaultProfile parameter is not functional.
    # Use the SubscriptionId parameter when available if executing the cmdlet against a different subscription.
    ${DefaultProfile},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait forNET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName

        if ($null -eq [Microsoft.WindowsAzure.Commands.Utilities.Common.AzurePSCmdlet]::PowerShellVersion) {
            [Microsoft.WindowsAzure.Commands.Utilities.Common.AzurePSCmdlet]::PowerShellVersion = $PSVersionTable.PSVersion.ToString()
        }         
        $preTelemetryId = [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId
        if ($preTelemetryId -eq '') {
            [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId =(New-Guid).ToString()
            [Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.module]::Instance.Telemetry.Invoke('Create', $MyInvocation, $parameterSet, $PSCmdlet)
        } else {
            $internalCalledCmdlets = [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::InternalCalledCmdlets
            if ($internalCalledCmdlets -eq '') {
                [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::InternalCalledCmdlets = $MyInvocation.MyCommand.Name
            } else {
                [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::InternalCalledCmdlets += ',' + $MyInvocation.MyCommand.Name
            }
            [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId = 'internal'
        }

        $mapping = @{
            CreateExpanded = 'Az.FirmwareAnalysis.private\New-AzFirmwareAnalysisFirmware_CreateExpanded';
        }
        if (('CreateExpanded') -contains $parameterSet -and -not $PSBoundParameters.ContainsKey('Id') ) {
            $PSBoundParameters['Id'] = New-Guid
        }
        if (('CreateExpanded') -contains $parameterSet -and -not $PSBoundParameters.ContainsKey('SubscriptionId') ) {
            $PSBoundParameters['SubscriptionId'] = (Get-AzContext).Subscription.Id
        }
        $cmdInfo = Get-Command -Name $mapping[$parameterSet]
        [Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Runtime.MessageAttributeHelper]::ProcessCustomAttributesAtRuntime($cmdInfo, $MyInvocation, $parameterSet, $PSCmdlet)
        if ($null -ne $MyInvocation.MyCommand -and [Microsoft.WindowsAzure.Commands.Utilities.Common.AzurePSCmdlet]::PromptedPreviewMessageCmdlets -notcontains $MyInvocation.MyCommand.Name -and [Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Runtime.MessageAttributeHelper]::ContainsPreviewAttribute($cmdInfo, $MyInvocation)){
            [Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.Runtime.MessageAttributeHelper]::ProcessPreviewMessageAttributesAtRuntime($cmdInfo, $MyInvocation, $parameterSet, $PSCmdlet)
            [Microsoft.WindowsAzure.Commands.Utilities.Common.AzurePSCmdlet]::PromptedPreviewMessageCmdlets.Enqueue($MyInvocation.MyCommand.Name)
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::ClearTelemetryContext()
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::ClearTelemetryContext()
        throw
    }

    finally {
        $backupTelemetryId = [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId
        $backupInternalCalledCmdlets = [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::InternalCalledCmdlets
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::ClearTelemetryContext()
    }

}
end {
    try {
        $steppablePipeline.End()

        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId = $backupTelemetryId
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::InternalCalledCmdlets = $backupInternalCalledCmdlets
        if ($preTelemetryId -eq '') {
            [Microsoft.Azure.PowerShell.Cmdlets.FirmwareAnalysis.module]::Instance.Telemetry.Invoke('Send', $MyInvocation, $parameterSet, $PSCmdlet)
            [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::ClearTelemetryContext()
        }
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId = $preTelemetryId

    } catch {
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::ClearTelemetryContext()
        throw
    }
} 
}
