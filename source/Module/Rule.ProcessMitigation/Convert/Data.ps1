# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License.

data regularExpression
{
    ConvertFrom-StringData -StringData @'
        MitigationType = Aslr|BinarySignature|Cfg|ChildProcess|Dep|DynamicCode|ExtensionPoint|FontDisable|Heap|ImageLoad|Payload|SEHOP|StrictHandle|SystemCall
        MitigationName = HighEntropy|OverrideHighEntropy|BottomUp|OverrideForceRelocateImages|RequireInfo|ForceRelocateImages|OverrideBottomUp|AllowStoreSignedBinaries|AuditMicrosoftSignedOnly|OverrideMicrosoftSignedOnly|AuditEnforceModuleDependencySigning|AuditStoreSigned|OverrideDependencySigning|MicrosoftSignedOnly|EnforceModuleDependencySigning|StrictControlFlowGuard|OverrideCFG|OverrideStrictCFG|Enable|SuppressExports|OverrideChildProcess|DisallowChildProcessCreation|Audit|EmulateAtlThunks|OverrideDEP|OverrideDynamicCode|BlockDynamicCode|AllowThreadsToOptOut|DisableExtensionPoints|OverrideExtensionPoint|OverrideFontDisable|DisableNonSystemFonts|TerminateOnError|OverrideHeap|OverrideBlockLowLabel|OverridePreferSystem32|OverrideBlockRemoteImageLoads|AuditPreferSystem32|PreferSystem32|AuditLowLabelImageLoads|BlockLowLabelImageLoads|AuditRemoteImageLoads|BlockRemoteImageLoads|EAFModules|AuditEnableExportAddressFilterPlus|EnableRopStackPivot|EnableExportAddressFilter|OverrideEnableRopStackPivot|AuditEnableRopCallerCheck|OverrideEnableRopCallerCheck|AuditEnableRopStackPivot|OverrideEnableImportAddressFilter|OverrideEnableExportAddressFilter|EnableExportAddressFilterPlus|AuditEnableRopSimExec|AuditEnableImportAddressFilter|OverrideEnableRopSimExec|EnableRopCallerCheck|AuditEnableExportAddressFilter|EnableRopSimExec|EnableImportAddressFilter|OverrideEnableExportAddressFilterPlus|TelemetryOnly|OverrideSEHOP|OverrideStrictHandle|DisableWin32kSystemCalls|OverrideSystemCall

'@
}



