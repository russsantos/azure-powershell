// ----------------------------------------------------------------------------------
//
// Copyright Microsoft Corporation
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
// http://www.apache.org/licenses/LICENSE-2.0
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// ----------------------------------------------------------------------------------

using Microsoft.Azure.Commands.Network.Models;
using System;
using System.Management.Automation;

namespace Microsoft.Azure.Commands.Network
{
    public class AzureApplicationGatewayGlobalConfigurationBase : NetworkBaseCmdlet
        {
        [Parameter(
            HelpMessage = "EnableRequestBuffering")]
        [ValidateSet("true", "false", IgnoreCase = true)]
        public string EnableRequestBuffering { get; set; }

        [Parameter(
            HelpMessage = "EnableResponseBuffering")]
        [ValidateSet("true", "false", IgnoreCase = true)]
        public string EnableResponseBuffering { get; set; }

        public override void ExecuteCmdlet()
        {
            base.ExecuteCmdlet();
        }

        public PSApplicationGatewayGlobalConfiguration NewObject()
        {
            var globalConfiguration = new PSApplicationGatewayGlobalConfiguration();
            
            if (string.IsNullOrEmpty(this.EnableRequestBuffering) || string.Equals(this.EnableRequestBuffering, "true", StringComparison.OrdinalIgnoreCase))
            {
                globalConfiguration.EnableRequestBuffering = true;
            }
            else if (string.Equals(this.EnableRequestBuffering, "false", StringComparison.OrdinalIgnoreCase))
            {
                globalConfiguration.EnableRequestBuffering = false;
            }

            if (string.IsNullOrEmpty(this.EnableResponseBuffering) || string.Equals(this.EnableResponseBuffering, "true", StringComparison.OrdinalIgnoreCase))
            {
                globalConfiguration.EnableResponseBuffering = true;
            }
            else if (string.Equals(this.EnableResponseBuffering, "false", StringComparison.OrdinalIgnoreCase))
            {
                globalConfiguration.EnableResponseBuffering = false;
            }

            return globalConfiguration;
        }
    }
}
