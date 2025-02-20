// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.

namespace Microsoft.Azure.PowerShell.Cmdlets.VMware.Models
{
    using static Microsoft.Azure.PowerShell.Cmdlets.VMware.Runtime.Extensions;

    /// <summary>Pageable list of scripts/cmdlets</summary>
    public partial class ScriptCmdletsList :
        Microsoft.Azure.PowerShell.Cmdlets.VMware.Models.IScriptCmdletsList,
        Microsoft.Azure.PowerShell.Cmdlets.VMware.Models.IScriptCmdletsListInternal
    {

        /// <summary>Internal Acessors for NextLink</summary>
        string Microsoft.Azure.PowerShell.Cmdlets.VMware.Models.IScriptCmdletsListInternal.NextLink { get => this._nextLink; set { {_nextLink = value;} } }

        /// <summary>Internal Acessors for Value</summary>
        System.Collections.Generic.List<Microsoft.Azure.PowerShell.Cmdlets.VMware.Models.IScriptCmdlet> Microsoft.Azure.PowerShell.Cmdlets.VMware.Models.IScriptCmdletsListInternal.Value { get => this._value; set { {_value = value;} } }

        /// <summary>Backing field for <see cref="NextLink" /> property.</summary>
        private string _nextLink;

        /// <summary>URL to get the next page if any</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.VMware.Origin(Microsoft.Azure.PowerShell.Cmdlets.VMware.PropertyOrigin.Owned)]
        public string NextLink { get => this._nextLink; }

        /// <summary>Backing field for <see cref="Value" /> property.</summary>
        private System.Collections.Generic.List<Microsoft.Azure.PowerShell.Cmdlets.VMware.Models.IScriptCmdlet> _value;

        /// <summary>List of scripts</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.VMware.Origin(Microsoft.Azure.PowerShell.Cmdlets.VMware.PropertyOrigin.Owned)]
        public System.Collections.Generic.List<Microsoft.Azure.PowerShell.Cmdlets.VMware.Models.IScriptCmdlet> Value { get => this._value; }

        /// <summary>Creates an new <see cref="ScriptCmdletsList" /> instance.</summary>
        public ScriptCmdletsList()
        {

        }
    }
    /// Pageable list of scripts/cmdlets
    public partial interface IScriptCmdletsList :
        Microsoft.Azure.PowerShell.Cmdlets.VMware.Runtime.IJsonSerializable
    {
        /// <summary>URL to get the next page if any</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.VMware.Runtime.Info(
        Required = false,
        ReadOnly = true,
        Read = true,
        Create = false,
        Update = false,
        Description = @"URL to get the next page if any",
        SerializedName = @"nextLink",
        PossibleTypes = new [] { typeof(string) })]
        string NextLink { get;  }
        /// <summary>List of scripts</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.VMware.Runtime.Info(
        Required = false,
        ReadOnly = true,
        Read = true,
        Create = false,
        Update = false,
        Description = @"List of scripts",
        SerializedName = @"value",
        PossibleTypes = new [] { typeof(Microsoft.Azure.PowerShell.Cmdlets.VMware.Models.IScriptCmdlet) })]
        System.Collections.Generic.List<Microsoft.Azure.PowerShell.Cmdlets.VMware.Models.IScriptCmdlet> Value { get;  }

    }
    /// Pageable list of scripts/cmdlets
    internal partial interface IScriptCmdletsListInternal

    {
        /// <summary>URL to get the next page if any</summary>
        string NextLink { get; set; }
        /// <summary>List of scripts</summary>
        System.Collections.Generic.List<Microsoft.Azure.PowerShell.Cmdlets.VMware.Models.IScriptCmdlet> Value { get; set; }

    }
}