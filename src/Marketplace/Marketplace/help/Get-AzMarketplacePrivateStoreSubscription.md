---
external help file: Az.Marketplace-help.xml
Module Name: Az.Marketplace
online version: https://learn.microsoft.com/powershell/module/az.marketplace/get-azmarketplaceprivatestoresubscription
schema: 2.0.0
---

# Get-AzMarketplacePrivateStoreSubscription

## SYNOPSIS
List all the subscriptions in the private store context

## SYNTAX

```
Get-AzMarketplacePrivateStoreSubscription -PrivateStoreId <String> [-DefaultProfile <PSObject>]
 [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
List all the subscriptions in the private store context

## EXAMPLES

### EXAMPLE 1
```
Get-AzMarketplacePrivateStoreSubscription -PrivateStoreId a260d38c-96cf-492d-a340-404d0c4b3ad6
```

## PARAMETERS

### -DefaultProfile
The DefaultProfile parameter is not functional.
Use the SubscriptionId parameter when available if executing the cmdlet against a different subscription.

```yaml
Type: PSObject
Parameter Sets: (All)
Aliases: AzureRMContext, AzureCredential

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PrivateStoreId
The store ID - must use the tenant ID

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Models.ISubscriptionsContextList
## NOTES

## RELATED LINKS

[https://learn.microsoft.com/powershell/module/az.marketplace/get-azmarketplaceprivatestoresubscription](https://learn.microsoft.com/powershell/module/az.marketplace/get-azmarketplaceprivatestoresubscription)

