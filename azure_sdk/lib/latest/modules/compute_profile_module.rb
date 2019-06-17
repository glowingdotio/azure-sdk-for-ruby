# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_compute'

module Azure::Profiles::Latest
  module Compute
    module Mgmt
      ResourceSkus = Azure::Compute::Mgmt::V2017_09_01::ResourceSkus
      UsageOperations = Azure::Compute::Mgmt::V2018_06_01::UsageOperations
      VirtualMachineSizes = Azure::Compute::Mgmt::V2018_06_01::VirtualMachineSizes
      Images = Azure::Compute::Mgmt::V2018_06_01::Images
      VirtualMachineScaleSets = Azure::Compute::Mgmt::V2018_06_01::VirtualMachineScaleSets
      VirtualMachineScaleSetExtensions = Azure::Compute::Mgmt::V2018_06_01::VirtualMachineScaleSetExtensions
      VirtualMachineScaleSetRollingUpgrades = Azure::Compute::Mgmt::V2018_06_01::VirtualMachineScaleSetRollingUpgrades
      VirtualMachineScaleSetVMs = Azure::Compute::Mgmt::V2018_06_01::VirtualMachineScaleSetVMs
      LogAnalytics = Azure::Compute::Mgmt::V2018_06_01::LogAnalytics
      Operations = Azure::Compute::Mgmt::V2018_06_01::Operations
      VirtualMachineRunCommands = Azure::Compute::Mgmt::V2018_06_01::VirtualMachineRunCommands
      Disks = Azure::Compute::Mgmt::V2018_06_01::Disks
      Snapshots = Azure::Compute::Mgmt::V2018_06_01::Snapshots
      Galleries = Azure::Compute::Mgmt::V2018_06_01::Galleries
      GalleryImages = Azure::Compute::Mgmt::V2018_06_01::GalleryImages
      GalleryImageVersions = Azure::Compute::Mgmt::V2018_06_01::GalleryImageVersions
      AvailabilitySets = Azure::Compute::Mgmt::V2018_06_01::AvailabilitySets
      VirtualMachineExtensionImages = Azure::Compute::Mgmt::V2018_06_01::VirtualMachineExtensionImages
      VirtualMachineExtensions = Azure::Compute::Mgmt::V2018_06_01::VirtualMachineExtensions
      VirtualMachines = Azure::Compute::Mgmt::V2018_06_01::VirtualMachines
      VirtualMachineImages = Azure::Compute::Mgmt::V2018_06_01::VirtualMachineImages

      module Models
        ResourceSkusResult = Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkusResult
        ResourceSkuCapacityScaleType = Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuCapacityScaleType
        ResourceSkuRestrictionsReasonCode = Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuRestrictionsReasonCode
        ResourceSkuCapacity = Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuCapacity
        ResourceSkuCosts = Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuCosts
        ResourceSkuCapabilities = Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuCapabilities
        ResourceSkuRestrictionInfo = Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuRestrictionInfo
        ResourceSkuRestrictions = Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuRestrictions
        ResourceSkuLocationInfo = Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuLocationInfo
        ResourceSku = Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSku
        ResourceSkuRestrictionsType = Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuRestrictionsType
        OperationStatusResponse = Azure::Compute::Mgmt::V2017_12_01::Models::OperationStatusResponse
        ComputeLongRunningOperationProperties = Azure::Compute::Mgmt::V2017_12_01::Models::ComputeLongRunningOperationProperties
        ComputeOperationValue = Azure::Compute::Mgmt::V2018_06_01::Models::ComputeOperationValue
        AutoOSUpgradePolicy = Azure::Compute::Mgmt::V2018_06_01::Models::AutoOSUpgradePolicy
        ComputeOperationListResult = Azure::Compute::Mgmt::V2018_06_01::Models::ComputeOperationListResult
        RecoveryWalkResponse = Azure::Compute::Mgmt::V2018_06_01::Models::RecoveryWalkResponse
        VirtualMachineScaleSetListOSUpgradeHistory = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetListOSUpgradeHistory
        LogAnalyticsOutput = Azure::Compute::Mgmt::V2018_06_01::Models::LogAnalyticsOutput
        LogAnalyticsInputBase = Azure::Compute::Mgmt::V2018_06_01::Models::LogAnalyticsInputBase
        UpgradeOperationHistoricalStatusInfo = Azure::Compute::Mgmt::V2018_06_01::Models::UpgradeOperationHistoricalStatusInfo
        UpgradeOperationHistoricalStatusInfoProperties = Azure::Compute::Mgmt::V2018_06_01::Models::UpgradeOperationHistoricalStatusInfoProperties
        RollbackStatusInfo = Azure::Compute::Mgmt::V2018_06_01::Models::RollbackStatusInfo
        UpgradeOperationHistoryStatus = Azure::Compute::Mgmt::V2018_06_01::Models::UpgradeOperationHistoryStatus
        AvailabilitySetUpdate = Azure::Compute::Mgmt::V2018_06_01::Models::AvailabilitySetUpdate
        VirtualMachineUpdate = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineUpdate
        ImageUpdate = Azure::Compute::Mgmt::V2018_06_01::Models::ImageUpdate
        VirtualMachineScaleSetManagedDiskParameters = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetManagedDiskParameters
        VirtualMachineScaleSetOSDisk = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetOSDisk
        SubResource = Azure::Compute::Mgmt::V2018_06_01::Models::SubResource
        VirtualMachineScaleSetUpdateOSDisk = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetUpdateOSDisk
        EncryptionSettings = Azure::Compute::Mgmt::V2018_06_01::Models::EncryptionSettings
        AvailabilitySetListResult = Azure::Compute::Mgmt::V2018_06_01::Models::AvailabilitySetListResult
        ImageListResult = Azure::Compute::Mgmt::V2018_06_01::Models::ImageListResult
        VirtualMachineSizeListResult = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineSizeListResult
        VirtualMachineScaleSetIdentity = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetIdentity
        RunCommandListResult = Azure::Compute::Mgmt::V2018_06_01::Models::RunCommandListResult
        RunCommandDocumentBase = Azure::Compute::Mgmt::V2018_06_01::Models::RunCommandDocumentBase
        ThrottledRequestsInput = Azure::Compute::Mgmt::V2018_06_01::Models::ThrottledRequestsInput
        LogAnalyticsOperationResult = Azure::Compute::Mgmt::V2018_06_01::Models::LogAnalyticsOperationResult
        VirtualMachineExtensionsListResult = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineExtensionsListResult
        OSDiskImage = Azure::Compute::Mgmt::V2018_06_01::Models::OSDiskImage
        RequestRateByIntervalInput = Azure::Compute::Mgmt::V2018_06_01::Models::RequestRateByIntervalInput
        RunCommandInput = Azure::Compute::Mgmt::V2018_06_01::Models::RunCommandInput
        IntervalInMins = Azure::Compute::Mgmt::V2018_06_01::Models::IntervalInMins
        Usage = Azure::Compute::Mgmt::V2018_06_01::Models::Usage
        VirtualMachineEvictionPolicyTypes = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineEvictionPolicyTypes
        VirtualMachineCaptureParameters = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineCaptureParameters
        VirtualMachineScaleSetOSProfile = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetOSProfile
        Plan = Azure::Compute::Mgmt::V2018_06_01::Models::Plan
        VirtualMachineScaleSetUpdateOSProfile = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetUpdateOSProfile
        SnapshotList = Azure::Compute::Mgmt::V2018_06_01::Models::SnapshotList
        InstanceViewStatus = Azure::Compute::Mgmt::V2018_06_01::Models::InstanceViewStatus
        KeyVaultKeyReference = Azure::Compute::Mgmt::V2018_06_01::Models::KeyVaultKeyReference
        Sku = Azure::Compute::Mgmt::V2018_06_01::Models::Sku
        VirtualHardDisk = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualHardDisk
        KeyVaultAndKeyReference = Azure::Compute::Mgmt::V2018_06_01::Models::KeyVaultAndKeyReference
        OSDisk = Azure::Compute::Mgmt::V2018_06_01::Models::OSDisk
        VirtualMachineScaleSetDataDisk = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetDataDisk
        VirtualMachineScaleSetIpTag = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetIpTag
        VirtualMachineScaleSetStorageProfile = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetStorageProfile
        WinRMListener = Azure::Compute::Mgmt::V2018_06_01::Models::WinRMListener
        VirtualMachineScaleSetUpdateStorageProfile = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetUpdateStorageProfile
        WindowsConfiguration = Azure::Compute::Mgmt::V2018_06_01::Models::WindowsConfiguration
        ApiEntityReference = Azure::Compute::Mgmt::V2018_06_01::Models::ApiEntityReference
        SshConfiguration = Azure::Compute::Mgmt::V2018_06_01::Models::SshConfiguration
        VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings
        GalleryList = Azure::Compute::Mgmt::V2018_06_01::Models::GalleryList
        VirtualMachineScaleSetPublicIPAddressConfiguration = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetPublicIPAddressConfiguration
        GalleryArtifactSource = Azure::Compute::Mgmt::V2018_06_01::Models::GalleryArtifactSource
        GalleryDiskImage = Azure::Compute::Mgmt::V2018_06_01::Models::GalleryDiskImage
        VirtualMachineScaleSetUpdatePublicIPAddressConfiguration = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetUpdatePublicIPAddressConfiguration
        TargetRegion = Azure::Compute::Mgmt::V2018_06_01::Models::TargetRegion
        ImagePurchasePlan = Azure::Compute::Mgmt::V2018_06_01::Models::ImagePurchasePlan
        SourceVault = Azure::Compute::Mgmt::V2018_06_01::Models::SourceVault
        AdditionalCapabilities = Azure::Compute::Mgmt::V2018_06_01::Models::AdditionalCapabilities
        VirtualMachineScaleSetNetworkConfigurationDnsSettings = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetNetworkConfigurationDnsSettings
        Disallowed = Azure::Compute::Mgmt::V2018_06_01::Models::Disallowed
        CreationData = Azure::Compute::Mgmt::V2018_06_01::Models::CreationData
        OSProfile = Azure::Compute::Mgmt::V2018_06_01::Models::OSProfile
        BootDiagnosticsInstanceView = Azure::Compute::Mgmt::V2018_06_01::Models::BootDiagnosticsInstanceView
        NetworkProfile = Azure::Compute::Mgmt::V2018_06_01::Models::NetworkProfile
        VirtualMachineScaleSetNetworkProfile = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetNetworkProfile
        DiagnosticsProfile = Azure::Compute::Mgmt::V2018_06_01::Models::DiagnosticsProfile
        VirtualMachineScaleSetUpdateNetworkProfile = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetUpdateNetworkProfile
        VirtualMachineAgentInstanceView = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineAgentInstanceView
        ReplicationStatus = Azure::Compute::Mgmt::V2018_06_01::Models::ReplicationStatus
        StorageProfile = Azure::Compute::Mgmt::V2018_06_01::Models::StorageProfile
        VirtualMachineScaleSetExtensionListResult = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetExtensionListResult
        VirtualMachineScaleSetExtensionProfile = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetExtensionProfile
        DiffDiskSettings = Azure::Compute::Mgmt::V2018_06_01::Models::DiffDiskSettings
        VirtualMachineScaleSetVMProfile = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetVMProfile
        VirtualMachineIdentityUserAssignedIdentitiesValue = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineIdentityUserAssignedIdentitiesValue
        VirtualMachineScaleSetUpdateVMProfile = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetUpdateVMProfile
        GalleryImageVersionStorageProfile = Azure::Compute::Mgmt::V2018_06_01::Models::GalleryImageVersionStorageProfile
        VaultCertificate = Azure::Compute::Mgmt::V2018_06_01::Models::VaultCertificate
        DiskSku = Azure::Compute::Mgmt::V2018_06_01::Models::DiskSku
        ImageStorageProfile = Azure::Compute::Mgmt::V2018_06_01::Models::ImageStorageProfile
        RollingUpgradePolicy = Azure::Compute::Mgmt::V2018_06_01::Models::RollingUpgradePolicy
        VirtualMachineScaleSetVMInstanceIDs = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetVMInstanceIDs
        DataDisk = Azure::Compute::Mgmt::V2018_06_01::Models::DataDisk
        VirtualMachineScaleSetVMInstanceRequiredIDs = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetVMInstanceRequiredIDs
        ManagedArtifact = Azure::Compute::Mgmt::V2018_06_01::Models::ManagedArtifact
        VirtualMachineStatusCodeCount = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineStatusCodeCount
        LinuxConfiguration = Azure::Compute::Mgmt::V2018_06_01::Models::LinuxConfiguration
        VirtualMachineScaleSetInstanceViewStatusesSummary = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetInstanceViewStatusesSummary
        GrantAccessData = Azure::Compute::Mgmt::V2018_06_01::Models::GrantAccessData
        VirtualMachineScaleSetVMExtensionsSummary = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetVMExtensionsSummary
        WinRMConfiguration = Azure::Compute::Mgmt::V2018_06_01::Models::WinRMConfiguration
        VirtualMachineScaleSetInstanceView = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetInstanceView
        VirtualMachineIdentity = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineIdentity
        VirtualMachineScaleSetListResult = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetListResult
        VirtualMachineListResult = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineListResult
        VirtualMachineScaleSetListWithLinkResult = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetListWithLinkResult
        ImageDataDisk = Azure::Compute::Mgmt::V2018_06_01::Models::ImageDataDisk
        VirtualMachineScaleSetSkuCapacity = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetSkuCapacity
        VirtualMachineExtensionInstanceView = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineExtensionInstanceView
        VirtualMachineScaleSetSku = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetSku
        UsageName = Azure::Compute::Mgmt::V2018_06_01::Models::UsageName
        VirtualMachineScaleSetListSkusResult = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetListSkusResult
        KeyVaultSecretReference = Azure::Compute::Mgmt::V2018_06_01::Models::KeyVaultSecretReference
        VirtualMachineHealthStatus = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineHealthStatus
        ListUsagesResult = Azure::Compute::Mgmt::V2018_06_01::Models::ListUsagesResult
        VirtualMachineScaleSetVMInstanceView = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetVMInstanceView
        VirtualMachineScaleSetIdentityUserAssignedIdentitiesValue = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetIdentityUserAssignedIdentitiesValue
        SubResourceReadOnly = Azure::Compute::Mgmt::V2018_06_01::Models::SubResourceReadOnly
        SnapshotSku = Azure::Compute::Mgmt::V2018_06_01::Models::SnapshotSku
        VirtualMachineScaleSetVMListResult = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetVMListResult
        UpgradePolicy = Azure::Compute::Mgmt::V2018_06_01::Models::UpgradePolicy
        VirtualMachineExtensionHandlerInstanceView = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineExtensionHandlerInstanceView
        PurchasePlan = Azure::Compute::Mgmt::V2018_06_01::Models::PurchasePlan
        RollingUpgradeProgressInfo = Azure::Compute::Mgmt::V2018_06_01::Models::RollingUpgradeProgressInfo
        AccessUri = Azure::Compute::Mgmt::V2018_06_01::Models::AccessUri
        ApiErrorBase = Azure::Compute::Mgmt::V2018_06_01::Models::ApiErrorBase
        DiskEncryptionSettings = Azure::Compute::Mgmt::V2018_06_01::Models::DiskEncryptionSettings
        InnerError = Azure::Compute::Mgmt::V2018_06_01::Models::InnerError
        VirtualMachineSize = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineSize
        ApiError = Azure::Compute::Mgmt::V2018_06_01::Models::ApiError
        SshPublicKey = Azure::Compute::Mgmt::V2018_06_01::Models::SshPublicKey
        RollingUpgradeRunningStatus = Azure::Compute::Mgmt::V2018_06_01::Models::RollingUpgradeRunningStatus
        UpdateResource = Azure::Compute::Mgmt::V2018_06_01::Models::UpdateResource
        DiskInstanceView = Azure::Compute::Mgmt::V2018_06_01::Models::DiskInstanceView
        VirtualMachineInstanceView = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineInstanceView
        Resource = Azure::Compute::Mgmt::V2018_06_01::Models::Resource
        RegionalReplicationStatus = Azure::Compute::Mgmt::V2018_06_01::Models::RegionalReplicationStatus
        VaultSecretGroup = Azure::Compute::Mgmt::V2018_06_01::Models::VaultSecretGroup
        GalleryImageVersionList = Azure::Compute::Mgmt::V2018_06_01::Models::GalleryImageVersionList
        DiskList = Azure::Compute::Mgmt::V2018_06_01::Models::DiskList
        GalleryImageList = Azure::Compute::Mgmt::V2018_06_01::Models::GalleryImageList
        GalleryIdentifier = Azure::Compute::Mgmt::V2018_06_01::Models::GalleryIdentifier
        AdditionalUnattendContent = Azure::Compute::Mgmt::V2018_06_01::Models::AdditionalUnattendContent
        HardwareProfile = Azure::Compute::Mgmt::V2018_06_01::Models::HardwareProfile
        RecommendedMachineConfiguration = Azure::Compute::Mgmt::V2018_06_01::Models::RecommendedMachineConfiguration
        VirtualMachineExtension = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineExtension
        AvailabilitySet = Azure::Compute::Mgmt::V2018_06_01::Models::AvailabilitySet
        RunCommandInputParameter = Azure::Compute::Mgmt::V2018_06_01::Models::RunCommandInputParameter
        RunCommandParameterDefinition = Azure::Compute::Mgmt::V2018_06_01::Models::RunCommandParameterDefinition
        MaintenanceRedeployStatus = Azure::Compute::Mgmt::V2018_06_01::Models::MaintenanceRedeployStatus
        ImageDiskReference = Azure::Compute::Mgmt::V2018_06_01::Models::ImageDiskReference
        GalleryArtifactPublishingProfileBase = Azure::Compute::Mgmt::V2018_06_01::Models::GalleryArtifactPublishingProfileBase
        VirtualMachineExtensionImage = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineExtensionImage
        VirtualMachineImageResource = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineImageResource
        GalleryImageIdentifier = Azure::Compute::Mgmt::V2018_06_01::Models::GalleryImageIdentifier
        KeyVaultAndSecretReference = Azure::Compute::Mgmt::V2018_06_01::Models::KeyVaultAndSecretReference
        VirtualMachineImage = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineImage
        VirtualMachineCaptureResult = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineCaptureResult
        DiskUpdate = Azure::Compute::Mgmt::V2018_06_01::Models::DiskUpdate
        ManagedDiskParameters = Azure::Compute::Mgmt::V2018_06_01::Models::ManagedDiskParameters
        SnapshotUpdate = Azure::Compute::Mgmt::V2018_06_01::Models::SnapshotUpdate
        VirtualMachineExtensionUpdate = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineExtensionUpdate
        RunCommandResult = Azure::Compute::Mgmt::V2018_06_01::Models::RunCommandResult
        VirtualMachineScaleSetIPConfiguration = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetIPConfiguration
        ImageReference = Azure::Compute::Mgmt::V2018_06_01::Models::ImageReference
        VirtualMachineScaleSetNetworkConfiguration = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetNetworkConfiguration
        NetworkInterfaceReference = Azure::Compute::Mgmt::V2018_06_01::Models::NetworkInterfaceReference
        VirtualMachine = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachine
        ImageOSDisk = Azure::Compute::Mgmt::V2018_06_01::Models::ImageOSDisk
        VirtualMachineScaleSetUpdate = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetUpdate
        VirtualMachineScaleSetUpdateIPConfiguration = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetUpdateIPConfiguration
        BootDiagnostics = Azure::Compute::Mgmt::V2018_06_01::Models::BootDiagnostics
        VirtualMachineScaleSetUpdateNetworkConfiguration = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetUpdateNetworkConfiguration
        VirtualMachineScaleSetExtension = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetExtension
        VirtualMachineScaleSet = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSet
        DataDiskImage = Azure::Compute::Mgmt::V2018_06_01::Models::DataDiskImage
        VirtualMachineScaleSetVM = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetVM
        RollingUpgradeStatusInfo = Azure::Compute::Mgmt::V2018_06_01::Models::RollingUpgradeStatusInfo
        Disk = Azure::Compute::Mgmt::V2018_06_01::Models::Disk
        OperatingSystemTypes = Azure::Compute::Mgmt::V2018_06_01::Models::OperatingSystemTypes
        Snapshot = Azure::Compute::Mgmt::V2018_06_01::Models::Snapshot
        CachingTypes = Azure::Compute::Mgmt::V2018_06_01::Models::CachingTypes
        ResourceRange = Azure::Compute::Mgmt::V2018_06_01::Models::ResourceRange
        Image = Azure::Compute::Mgmt::V2018_06_01::Models::Image
        Gallery = Azure::Compute::Mgmt::V2018_06_01::Models::Gallery
        GalleryImage = Azure::Compute::Mgmt::V2018_06_01::Models::GalleryImage
        GalleryImageVersionPublishingProfile = Azure::Compute::Mgmt::V2018_06_01::Models::GalleryImageVersionPublishingProfile
        GalleryOSDiskImage = Azure::Compute::Mgmt::V2018_06_01::Models::GalleryOSDiskImage
        GalleryDataDiskImage = Azure::Compute::Mgmt::V2018_06_01::Models::GalleryDataDiskImage
        RunCommandDocument = Azure::Compute::Mgmt::V2018_06_01::Models::RunCommandDocument
        AvailabilitySetSkuTypes = Azure::Compute::Mgmt::V2018_06_01::Models::AvailabilitySetSkuTypes
        StatusLevelTypes = Azure::Compute::Mgmt::V2018_06_01::Models::StatusLevelTypes
        SettingNames = Azure::Compute::Mgmt::V2018_06_01::Models::SettingNames
        VirtualMachineSizeTypes = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineSizeTypes
        ResourceIdentityType = Azure::Compute::Mgmt::V2018_06_01::Models::ResourceIdentityType
        DiskCreateOptionTypes = Azure::Compute::Mgmt::V2018_06_01::Models::DiskCreateOptionTypes
        StorageAccountTypes = Azure::Compute::Mgmt::V2018_06_01::Models::StorageAccountTypes
        PassNames = Azure::Compute::Mgmt::V2018_06_01::Models::PassNames
        ComponentNames = Azure::Compute::Mgmt::V2018_06_01::Models::ComponentNames
        DiskCreateOption = Azure::Compute::Mgmt::V2018_06_01::Models::DiskCreateOption
        ProtocolTypes = Azure::Compute::Mgmt::V2018_06_01::Models::ProtocolTypes
        IPVersion = Azure::Compute::Mgmt::V2018_06_01::Models::IPVersion
        MaintenanceOperationResultCodeTypes = Azure::Compute::Mgmt::V2018_06_01::Models::MaintenanceOperationResultCodeTypes
        UpgradeMode = Azure::Compute::Mgmt::V2018_06_01::Models::UpgradeMode
        GalleryImageVersion = Azure::Compute::Mgmt::V2018_06_01::Models::GalleryImageVersion
        DiffDiskOptions = Azure::Compute::Mgmt::V2018_06_01::Models::DiffDiskOptions
        AggregatedReplicationState = Azure::Compute::Mgmt::V2018_06_01::Models::AggregatedReplicationState
        ReplicationState = Azure::Compute::Mgmt::V2018_06_01::Models::ReplicationState
        VirtualMachineScaleSetSkuScaleType = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetSkuScaleType
        RollingUpgradeStatusCode = Azure::Compute::Mgmt::V2018_06_01::Models::RollingUpgradeStatusCode
        RollingUpgradeActionType = Azure::Compute::Mgmt::V2018_06_01::Models::RollingUpgradeActionType
        OperatingSystemStateTypes = Azure::Compute::Mgmt::V2018_06_01::Models::OperatingSystemStateTypes
        AccessLevel = Azure::Compute::Mgmt::V2018_06_01::Models::AccessLevel
        UpgradeState = Azure::Compute::Mgmt::V2018_06_01::Models::UpgradeState
        UpgradeOperationInvoker = Azure::Compute::Mgmt::V2018_06_01::Models::UpgradeOperationInvoker
        InstanceViewTypes = Azure::Compute::Mgmt::V2018_06_01::Models::InstanceViewTypes
        SnapshotStorageAccountTypes = Azure::Compute::Mgmt::V2018_06_01::Models::SnapshotStorageAccountTypes
        HostCaching = Azure::Compute::Mgmt::V2018_06_01::Models::HostCaching
        DiskStorageAccountTypes = Azure::Compute::Mgmt::V2018_06_01::Models::DiskStorageAccountTypes
        ReplicationStatusTypes = Azure::Compute::Mgmt::V2018_06_01::Models::ReplicationStatusTypes
        VirtualMachinePriorityTypes = Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachinePriorityTypes
      end

      class ComputeManagementClass
        attr_reader :resource_skus, :usage_operations, :virtual_machine_sizes, :images, :virtual_machine_scale_sets, :virtual_machine_scale_set_extensions, :virtual_machine_scale_set_rolling_upgrades, :virtual_machine_scale_set_vms, :log_analytics, :operations, :virtual_machine_run_commands, :disks, :snapshots, :galleries, :gallery_images, :gallery_image_versions, :availability_sets, :virtual_machine_extension_images, :virtual_machine_extensions, :virtual_machines, :virtual_machine_images, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Compute::Mgmt::V2017_09_01::ComputeManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @resource_skus = @client_0.resource_skus

          @client_1 = Azure::Compute::Mgmt::V2017_12_01::ComputeManagementClient.new(configurable.credentials, base_url, options)
          if(@client_1.respond_to?(:subscription_id))
            @client_1.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_1)

          @client_2 = Azure::Compute::Mgmt::V2018_04_01::ComputeManagementClient.new(configurable.credentials, base_url, options)
          if(@client_2.respond_to?(:subscription_id))
            @client_2.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_2)

          @client_3 = Azure::Compute::Mgmt::V2018_06_01::ComputeManagementClient.new(configurable.credentials, base_url, options)
          if(@client_3.respond_to?(:subscription_id))
            @client_3.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_3)
          @usage_operations = @client_3.usage_operations
          @virtual_machine_sizes = @client_3.virtual_machine_sizes
          @images = @client_3.images
          @virtual_machine_scale_sets = @client_3.virtual_machine_scale_sets
          @virtual_machine_scale_set_extensions = @client_3.virtual_machine_scale_set_extensions
          @virtual_machine_scale_set_rolling_upgrades = @client_3.virtual_machine_scale_set_rolling_upgrades
          @virtual_machine_scale_set_vms = @client_3.virtual_machine_scale_set_vms
          @log_analytics = @client_3.log_analytics
          @operations = @client_3.operations
          @virtual_machine_run_commands = @client_3.virtual_machine_run_commands
          @disks = @client_3.disks
          @snapshots = @client_3.snapshots
          @galleries = @client_3.galleries
          @gallery_images = @client_3.gallery_images
          @gallery_image_versions = @client_3.gallery_image_versions
          @availability_sets = @client_3.availability_sets
          @virtual_machine_extension_images = @client_3.virtual_machine_extension_images
          @virtual_machine_extensions = @client_3.virtual_machine_extensions
          @virtual_machines = @client_3.virtual_machines
          @virtual_machine_images = @client_3.virtual_machine_images

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Compute/Mgmt"
          client.add_user_agent_information(profile_information)
        end

        def method_missing(method, *args)
          if @client_3.respond_to?method
            @client_3.send(method, *args)
          elsif @client_2.respond_to?method
            @client_2.send(method, *args)
          elsif @client_1.respond_to?method
            @client_1.send(method, *args)
          elsif @client_0.respond_to?method
            @client_0.send(method, *args)
          else
            super
          end
        end

        class ModelClasses
          def resource_skus_result
            Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkusResult
          end
          def resource_sku_capacity_scale_type
            Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuCapacityScaleType
          end
          def resource_sku_restrictions_reason_code
            Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuRestrictionsReasonCode
          end
          def resource_sku_capacity
            Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuCapacity
          end
          def resource_sku_costs
            Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuCosts
          end
          def resource_sku_capabilities
            Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuCapabilities
          end
          def resource_sku_restriction_info
            Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuRestrictionInfo
          end
          def resource_sku_restrictions
            Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuRestrictions
          end
          def resource_sku_location_info
            Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuLocationInfo
          end
          def resource_sku
            Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSku
          end
          def resource_sku_restrictions_type
            Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuRestrictionsType
          end
          def operation_status_response
            Azure::Compute::Mgmt::V2017_12_01::Models::OperationStatusResponse
          end
          def compute_long_running_operation_properties
            Azure::Compute::Mgmt::V2017_12_01::Models::ComputeLongRunningOperationProperties
          end
          def compute_operation_value
            Azure::Compute::Mgmt::V2018_06_01::Models::ComputeOperationValue
          end
          def auto_osupgrade_policy
            Azure::Compute::Mgmt::V2018_06_01::Models::AutoOSUpgradePolicy
          end
          def compute_operation_list_result
            Azure::Compute::Mgmt::V2018_06_01::Models::ComputeOperationListResult
          end
          def recovery_walk_response
            Azure::Compute::Mgmt::V2018_06_01::Models::RecoveryWalkResponse
          end
          def virtual_machine_scale_set_list_osupgrade_history
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetListOSUpgradeHistory
          end
          def log_analytics_output
            Azure::Compute::Mgmt::V2018_06_01::Models::LogAnalyticsOutput
          end
          def log_analytics_input_base
            Azure::Compute::Mgmt::V2018_06_01::Models::LogAnalyticsInputBase
          end
          def upgrade_operation_historical_status_info
            Azure::Compute::Mgmt::V2018_06_01::Models::UpgradeOperationHistoricalStatusInfo
          end
          def upgrade_operation_historical_status_info_properties
            Azure::Compute::Mgmt::V2018_06_01::Models::UpgradeOperationHistoricalStatusInfoProperties
          end
          def rollback_status_info
            Azure::Compute::Mgmt::V2018_06_01::Models::RollbackStatusInfo
          end
          def upgrade_operation_history_status
            Azure::Compute::Mgmt::V2018_06_01::Models::UpgradeOperationHistoryStatus
          end
          def availability_set_update
            Azure::Compute::Mgmt::V2018_06_01::Models::AvailabilitySetUpdate
          end
          def virtual_machine_update
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineUpdate
          end
          def image_update
            Azure::Compute::Mgmt::V2018_06_01::Models::ImageUpdate
          end
          def virtual_machine_scale_set_managed_disk_parameters
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetManagedDiskParameters
          end
          def virtual_machine_scale_set_osdisk
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetOSDisk
          end
          def sub_resource
            Azure::Compute::Mgmt::V2018_06_01::Models::SubResource
          end
          def virtual_machine_scale_set_update_osdisk
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetUpdateOSDisk
          end
          def encryption_settings
            Azure::Compute::Mgmt::V2018_06_01::Models::EncryptionSettings
          end
          def availability_set_list_result
            Azure::Compute::Mgmt::V2018_06_01::Models::AvailabilitySetListResult
          end
          def image_list_result
            Azure::Compute::Mgmt::V2018_06_01::Models::ImageListResult
          end
          def virtual_machine_size_list_result
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineSizeListResult
          end
          def virtual_machine_scale_set_identity
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetIdentity
          end
          def run_command_list_result
            Azure::Compute::Mgmt::V2018_06_01::Models::RunCommandListResult
          end
          def run_command_document_base
            Azure::Compute::Mgmt::V2018_06_01::Models::RunCommandDocumentBase
          end
          def throttled_requests_input
            Azure::Compute::Mgmt::V2018_06_01::Models::ThrottledRequestsInput
          end
          def log_analytics_operation_result
            Azure::Compute::Mgmt::V2018_06_01::Models::LogAnalyticsOperationResult
          end
          def virtual_machine_extensions_list_result
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineExtensionsListResult
          end
          def osdisk_image
            Azure::Compute::Mgmt::V2018_06_01::Models::OSDiskImage
          end
          def request_rate_by_interval_input
            Azure::Compute::Mgmt::V2018_06_01::Models::RequestRateByIntervalInput
          end
          def run_command_input
            Azure::Compute::Mgmt::V2018_06_01::Models::RunCommandInput
          end
          def interval_in_mins
            Azure::Compute::Mgmt::V2018_06_01::Models::IntervalInMins
          end
          def usage
            Azure::Compute::Mgmt::V2018_06_01::Models::Usage
          end
          def virtual_machine_eviction_policy_types
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineEvictionPolicyTypes
          end
          def virtual_machine_capture_parameters
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineCaptureParameters
          end
          def virtual_machine_scale_set_osprofile
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetOSProfile
          end
          def plan
            Azure::Compute::Mgmt::V2018_06_01::Models::Plan
          end
          def virtual_machine_scale_set_update_osprofile
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetUpdateOSProfile
          end
          def snapshot_list
            Azure::Compute::Mgmt::V2018_06_01::Models::SnapshotList
          end
          def instance_view_status
            Azure::Compute::Mgmt::V2018_06_01::Models::InstanceViewStatus
          end
          def key_vault_key_reference
            Azure::Compute::Mgmt::V2018_06_01::Models::KeyVaultKeyReference
          end
          def sku
            Azure::Compute::Mgmt::V2018_06_01::Models::Sku
          end
          def virtual_hard_disk
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualHardDisk
          end
          def key_vault_and_key_reference
            Azure::Compute::Mgmt::V2018_06_01::Models::KeyVaultAndKeyReference
          end
          def osdisk
            Azure::Compute::Mgmt::V2018_06_01::Models::OSDisk
          end
          def virtual_machine_scale_set_data_disk
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetDataDisk
          end
          def virtual_machine_scale_set_ip_tag
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetIpTag
          end
          def virtual_machine_scale_set_storage_profile
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetStorageProfile
          end
          def win_rmlistener
            Azure::Compute::Mgmt::V2018_06_01::Models::WinRMListener
          end
          def virtual_machine_scale_set_update_storage_profile
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetUpdateStorageProfile
          end
          def windows_configuration
            Azure::Compute::Mgmt::V2018_06_01::Models::WindowsConfiguration
          end
          def api_entity_reference
            Azure::Compute::Mgmt::V2018_06_01::Models::ApiEntityReference
          end
          def ssh_configuration
            Azure::Compute::Mgmt::V2018_06_01::Models::SshConfiguration
          end
          def virtual_machine_scale_set_public_ipaddress_configuration_dns_settings
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings
          end
          def gallery_list
            Azure::Compute::Mgmt::V2018_06_01::Models::GalleryList
          end
          def virtual_machine_scale_set_public_ipaddress_configuration
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetPublicIPAddressConfiguration
          end
          def gallery_artifact_source
            Azure::Compute::Mgmt::V2018_06_01::Models::GalleryArtifactSource
          end
          def gallery_disk_image
            Azure::Compute::Mgmt::V2018_06_01::Models::GalleryDiskImage
          end
          def virtual_machine_scale_set_update_public_ipaddress_configuration
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetUpdatePublicIPAddressConfiguration
          end
          def target_region
            Azure::Compute::Mgmt::V2018_06_01::Models::TargetRegion
          end
          def image_purchase_plan
            Azure::Compute::Mgmt::V2018_06_01::Models::ImagePurchasePlan
          end
          def source_vault
            Azure::Compute::Mgmt::V2018_06_01::Models::SourceVault
          end
          def additional_capabilities
            Azure::Compute::Mgmt::V2018_06_01::Models::AdditionalCapabilities
          end
          def virtual_machine_scale_set_network_configuration_dns_settings
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetNetworkConfigurationDnsSettings
          end
          def disallowed
            Azure::Compute::Mgmt::V2018_06_01::Models::Disallowed
          end
          def creation_data
            Azure::Compute::Mgmt::V2018_06_01::Models::CreationData
          end
          def osprofile
            Azure::Compute::Mgmt::V2018_06_01::Models::OSProfile
          end
          def boot_diagnostics_instance_view
            Azure::Compute::Mgmt::V2018_06_01::Models::BootDiagnosticsInstanceView
          end
          def network_profile
            Azure::Compute::Mgmt::V2018_06_01::Models::NetworkProfile
          end
          def virtual_machine_scale_set_network_profile
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetNetworkProfile
          end
          def diagnostics_profile
            Azure::Compute::Mgmt::V2018_06_01::Models::DiagnosticsProfile
          end
          def virtual_machine_scale_set_update_network_profile
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetUpdateNetworkProfile
          end
          def virtual_machine_agent_instance_view
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineAgentInstanceView
          end
          def replication_status
            Azure::Compute::Mgmt::V2018_06_01::Models::ReplicationStatus
          end
          def storage_profile
            Azure::Compute::Mgmt::V2018_06_01::Models::StorageProfile
          end
          def virtual_machine_scale_set_extension_list_result
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetExtensionListResult
          end
          def virtual_machine_scale_set_extension_profile
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetExtensionProfile
          end
          def diff_disk_settings
            Azure::Compute::Mgmt::V2018_06_01::Models::DiffDiskSettings
          end
          def virtual_machine_scale_set_vmprofile
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetVMProfile
          end
          def virtual_machine_identity_user_assigned_identities_value
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineIdentityUserAssignedIdentitiesValue
          end
          def virtual_machine_scale_set_update_vmprofile
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetUpdateVMProfile
          end
          def gallery_image_version_storage_profile
            Azure::Compute::Mgmt::V2018_06_01::Models::GalleryImageVersionStorageProfile
          end
          def vault_certificate
            Azure::Compute::Mgmt::V2018_06_01::Models::VaultCertificate
          end
          def disk_sku
            Azure::Compute::Mgmt::V2018_06_01::Models::DiskSku
          end
          def image_storage_profile
            Azure::Compute::Mgmt::V2018_06_01::Models::ImageStorageProfile
          end
          def rolling_upgrade_policy
            Azure::Compute::Mgmt::V2018_06_01::Models::RollingUpgradePolicy
          end
          def virtual_machine_scale_set_vminstance_ids
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetVMInstanceIDs
          end
          def data_disk
            Azure::Compute::Mgmt::V2018_06_01::Models::DataDisk
          end
          def virtual_machine_scale_set_vminstance_required_ids
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetVMInstanceRequiredIDs
          end
          def managed_artifact
            Azure::Compute::Mgmt::V2018_06_01::Models::ManagedArtifact
          end
          def virtual_machine_status_code_count
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineStatusCodeCount
          end
          def linux_configuration
            Azure::Compute::Mgmt::V2018_06_01::Models::LinuxConfiguration
          end
          def virtual_machine_scale_set_instance_view_statuses_summary
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetInstanceViewStatusesSummary
          end
          def grant_access_data
            Azure::Compute::Mgmt::V2018_06_01::Models::GrantAccessData
          end
          def virtual_machine_scale_set_vmextensions_summary
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetVMExtensionsSummary
          end
          def win_rmconfiguration
            Azure::Compute::Mgmt::V2018_06_01::Models::WinRMConfiguration
          end
          def virtual_machine_scale_set_instance_view
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetInstanceView
          end
          def virtual_machine_identity
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineIdentity
          end
          def virtual_machine_scale_set_list_result
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetListResult
          end
          def virtual_machine_list_result
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineListResult
          end
          def virtual_machine_scale_set_list_with_link_result
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetListWithLinkResult
          end
          def image_data_disk
            Azure::Compute::Mgmt::V2018_06_01::Models::ImageDataDisk
          end
          def virtual_machine_scale_set_sku_capacity
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetSkuCapacity
          end
          def virtual_machine_extension_instance_view
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineExtensionInstanceView
          end
          def virtual_machine_scale_set_sku
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetSku
          end
          def usage_name
            Azure::Compute::Mgmt::V2018_06_01::Models::UsageName
          end
          def virtual_machine_scale_set_list_skus_result
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetListSkusResult
          end
          def key_vault_secret_reference
            Azure::Compute::Mgmt::V2018_06_01::Models::KeyVaultSecretReference
          end
          def virtual_machine_health_status
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineHealthStatus
          end
          def list_usages_result
            Azure::Compute::Mgmt::V2018_06_01::Models::ListUsagesResult
          end
          def virtual_machine_scale_set_vminstance_view
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetVMInstanceView
          end
          def virtual_machine_scale_set_identity_user_assigned_identities_value
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetIdentityUserAssignedIdentitiesValue
          end
          def sub_resource_read_only
            Azure::Compute::Mgmt::V2018_06_01::Models::SubResourceReadOnly
          end
          def snapshot_sku
            Azure::Compute::Mgmt::V2018_06_01::Models::SnapshotSku
          end
          def virtual_machine_scale_set_vmlist_result
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetVMListResult
          end
          def upgrade_policy
            Azure::Compute::Mgmt::V2018_06_01::Models::UpgradePolicy
          end
          def virtual_machine_extension_handler_instance_view
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineExtensionHandlerInstanceView
          end
          def purchase_plan
            Azure::Compute::Mgmt::V2018_06_01::Models::PurchasePlan
          end
          def rolling_upgrade_progress_info
            Azure::Compute::Mgmt::V2018_06_01::Models::RollingUpgradeProgressInfo
          end
          def access_uri
            Azure::Compute::Mgmt::V2018_06_01::Models::AccessUri
          end
          def api_error_base
            Azure::Compute::Mgmt::V2018_06_01::Models::ApiErrorBase
          end
          def disk_encryption_settings
            Azure::Compute::Mgmt::V2018_06_01::Models::DiskEncryptionSettings
          end
          def inner_error
            Azure::Compute::Mgmt::V2018_06_01::Models::InnerError
          end
          def virtual_machine_size
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineSize
          end
          def api_error
            Azure::Compute::Mgmt::V2018_06_01::Models::ApiError
          end
          def ssh_public_key
            Azure::Compute::Mgmt::V2018_06_01::Models::SshPublicKey
          end
          def rolling_upgrade_running_status
            Azure::Compute::Mgmt::V2018_06_01::Models::RollingUpgradeRunningStatus
          end
          def update_resource
            Azure::Compute::Mgmt::V2018_06_01::Models::UpdateResource
          end
          def disk_instance_view
            Azure::Compute::Mgmt::V2018_06_01::Models::DiskInstanceView
          end
          def virtual_machine_instance_view
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineInstanceView
          end
          def resource
            Azure::Compute::Mgmt::V2018_06_01::Models::Resource
          end
          def regional_replication_status
            Azure::Compute::Mgmt::V2018_06_01::Models::RegionalReplicationStatus
          end
          def vault_secret_group
            Azure::Compute::Mgmt::V2018_06_01::Models::VaultSecretGroup
          end
          def gallery_image_version_list
            Azure::Compute::Mgmt::V2018_06_01::Models::GalleryImageVersionList
          end
          def disk_list
            Azure::Compute::Mgmt::V2018_06_01::Models::DiskList
          end
          def gallery_image_list
            Azure::Compute::Mgmt::V2018_06_01::Models::GalleryImageList
          end
          def gallery_identifier
            Azure::Compute::Mgmt::V2018_06_01::Models::GalleryIdentifier
          end
          def additional_unattend_content
            Azure::Compute::Mgmt::V2018_06_01::Models::AdditionalUnattendContent
          end
          def hardware_profile
            Azure::Compute::Mgmt::V2018_06_01::Models::HardwareProfile
          end
          def recommended_machine_configuration
            Azure::Compute::Mgmt::V2018_06_01::Models::RecommendedMachineConfiguration
          end
          def virtual_machine_extension
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineExtension
          end
          def availability_set
            Azure::Compute::Mgmt::V2018_06_01::Models::AvailabilitySet
          end
          def run_command_input_parameter
            Azure::Compute::Mgmt::V2018_06_01::Models::RunCommandInputParameter
          end
          def run_command_parameter_definition
            Azure::Compute::Mgmt::V2018_06_01::Models::RunCommandParameterDefinition
          end
          def maintenance_redeploy_status
            Azure::Compute::Mgmt::V2018_06_01::Models::MaintenanceRedeployStatus
          end
          def image_disk_reference
            Azure::Compute::Mgmt::V2018_06_01::Models::ImageDiskReference
          end
          def gallery_artifact_publishing_profile_base
            Azure::Compute::Mgmt::V2018_06_01::Models::GalleryArtifactPublishingProfileBase
          end
          def virtual_machine_extension_image
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineExtensionImage
          end
          def virtual_machine_image_resource
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineImageResource
          end
          def gallery_image_identifier
            Azure::Compute::Mgmt::V2018_06_01::Models::GalleryImageIdentifier
          end
          def key_vault_and_secret_reference
            Azure::Compute::Mgmt::V2018_06_01::Models::KeyVaultAndSecretReference
          end
          def virtual_machine_image
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineImage
          end
          def virtual_machine_capture_result
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineCaptureResult
          end
          def disk_update
            Azure::Compute::Mgmt::V2018_06_01::Models::DiskUpdate
          end
          def managed_disk_parameters
            Azure::Compute::Mgmt::V2018_06_01::Models::ManagedDiskParameters
          end
          def snapshot_update
            Azure::Compute::Mgmt::V2018_06_01::Models::SnapshotUpdate
          end
          def virtual_machine_extension_update
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineExtensionUpdate
          end
          def run_command_result
            Azure::Compute::Mgmt::V2018_06_01::Models::RunCommandResult
          end
          def virtual_machine_scale_set_ipconfiguration
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetIPConfiguration
          end
          def image_reference
            Azure::Compute::Mgmt::V2018_06_01::Models::ImageReference
          end
          def virtual_machine_scale_set_network_configuration
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetNetworkConfiguration
          end
          def network_interface_reference
            Azure::Compute::Mgmt::V2018_06_01::Models::NetworkInterfaceReference
          end
          def virtual_machine
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachine
          end
          def image_osdisk
            Azure::Compute::Mgmt::V2018_06_01::Models::ImageOSDisk
          end
          def virtual_machine_scale_set_update
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetUpdate
          end
          def virtual_machine_scale_set_update_ipconfiguration
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetUpdateIPConfiguration
          end
          def boot_diagnostics
            Azure::Compute::Mgmt::V2018_06_01::Models::BootDiagnostics
          end
          def virtual_machine_scale_set_update_network_configuration
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetUpdateNetworkConfiguration
          end
          def virtual_machine_scale_set_extension
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetExtension
          end
          def virtual_machine_scale_set
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSet
          end
          def data_disk_image
            Azure::Compute::Mgmt::V2018_06_01::Models::DataDiskImage
          end
          def virtual_machine_scale_set_vm
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetVM
          end
          def rolling_upgrade_status_info
            Azure::Compute::Mgmt::V2018_06_01::Models::RollingUpgradeStatusInfo
          end
          def disk
            Azure::Compute::Mgmt::V2018_06_01::Models::Disk
          end
          def operating_system_types
            Azure::Compute::Mgmt::V2018_06_01::Models::OperatingSystemTypes
          end
          def snapshot
            Azure::Compute::Mgmt::V2018_06_01::Models::Snapshot
          end
          def caching_types
            Azure::Compute::Mgmt::V2018_06_01::Models::CachingTypes
          end
          def resource_range
            Azure::Compute::Mgmt::V2018_06_01::Models::ResourceRange
          end
          def image
            Azure::Compute::Mgmt::V2018_06_01::Models::Image
          end
          def gallery
            Azure::Compute::Mgmt::V2018_06_01::Models::Gallery
          end
          def gallery_image
            Azure::Compute::Mgmt::V2018_06_01::Models::GalleryImage
          end
          def gallery_image_version_publishing_profile
            Azure::Compute::Mgmt::V2018_06_01::Models::GalleryImageVersionPublishingProfile
          end
          def gallery_osdisk_image
            Azure::Compute::Mgmt::V2018_06_01::Models::GalleryOSDiskImage
          end
          def gallery_data_disk_image
            Azure::Compute::Mgmt::V2018_06_01::Models::GalleryDataDiskImage
          end
          def run_command_document
            Azure::Compute::Mgmt::V2018_06_01::Models::RunCommandDocument
          end
          def availability_set_sku_types
            Azure::Compute::Mgmt::V2018_06_01::Models::AvailabilitySetSkuTypes
          end
          def status_level_types
            Azure::Compute::Mgmt::V2018_06_01::Models::StatusLevelTypes
          end
          def setting_names
            Azure::Compute::Mgmt::V2018_06_01::Models::SettingNames
          end
          def virtual_machine_size_types
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineSizeTypes
          end
          def resource_identity_type
            Azure::Compute::Mgmt::V2018_06_01::Models::ResourceIdentityType
          end
          def disk_create_option_types
            Azure::Compute::Mgmt::V2018_06_01::Models::DiskCreateOptionTypes
          end
          def storage_account_types
            Azure::Compute::Mgmt::V2018_06_01::Models::StorageAccountTypes
          end
          def pass_names
            Azure::Compute::Mgmt::V2018_06_01::Models::PassNames
          end
          def component_names
            Azure::Compute::Mgmt::V2018_06_01::Models::ComponentNames
          end
          def disk_create_option
            Azure::Compute::Mgmt::V2018_06_01::Models::DiskCreateOption
          end
          def protocol_types
            Azure::Compute::Mgmt::V2018_06_01::Models::ProtocolTypes
          end
          def ipversion
            Azure::Compute::Mgmt::V2018_06_01::Models::IPVersion
          end
          def maintenance_operation_result_code_types
            Azure::Compute::Mgmt::V2018_06_01::Models::MaintenanceOperationResultCodeTypes
          end
          def upgrade_mode
            Azure::Compute::Mgmt::V2018_06_01::Models::UpgradeMode
          end
          def gallery_image_version
            Azure::Compute::Mgmt::V2018_06_01::Models::GalleryImageVersion
          end
          def diff_disk_options
            Azure::Compute::Mgmt::V2018_06_01::Models::DiffDiskOptions
          end
          def aggregated_replication_state
            Azure::Compute::Mgmt::V2018_06_01::Models::AggregatedReplicationState
          end
          def replication_state
            Azure::Compute::Mgmt::V2018_06_01::Models::ReplicationState
          end
          def virtual_machine_scale_set_sku_scale_type
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachineScaleSetSkuScaleType
          end
          def rolling_upgrade_status_code
            Azure::Compute::Mgmt::V2018_06_01::Models::RollingUpgradeStatusCode
          end
          def rolling_upgrade_action_type
            Azure::Compute::Mgmt::V2018_06_01::Models::RollingUpgradeActionType
          end
          def operating_system_state_types
            Azure::Compute::Mgmt::V2018_06_01::Models::OperatingSystemStateTypes
          end
          def access_level
            Azure::Compute::Mgmt::V2018_06_01::Models::AccessLevel
          end
          def upgrade_state
            Azure::Compute::Mgmt::V2018_06_01::Models::UpgradeState
          end
          def upgrade_operation_invoker
            Azure::Compute::Mgmt::V2018_06_01::Models::UpgradeOperationInvoker
          end
          def instance_view_types
            Azure::Compute::Mgmt::V2018_06_01::Models::InstanceViewTypes
          end
          def snapshot_storage_account_types
            Azure::Compute::Mgmt::V2018_06_01::Models::SnapshotStorageAccountTypes
          end
          def host_caching
            Azure::Compute::Mgmt::V2018_06_01::Models::HostCaching
          end
          def disk_storage_account_types
            Azure::Compute::Mgmt::V2018_06_01::Models::DiskStorageAccountTypes
          end
          def replication_status_types
            Azure::Compute::Mgmt::V2018_06_01::Models::ReplicationStatusTypes
          end
          def virtual_machine_priority_types
            Azure::Compute::Mgmt::V2018_06_01::Models::VirtualMachinePriorityTypes
          end
        end
      end
    end
  end
end
