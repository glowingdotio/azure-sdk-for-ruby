# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Migrate::Mgmt::V2018_02_02
  module Models
    #
    # A machine evaluated as part of an assessment.
    #
    class AssessedMachine

      include MsRestAzure

      # @return [String] Path reference to this assessed machine.
      # /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/projects/{projectName}/groups/{groupName}/assessments/{assessmentName}/assessedMachines/{assessedMachineName}
      attr_accessor :id

      # @return [String] Name of the machine.
      attr_accessor :name

      # @return [String] For optimistic concurrency control.
      attr_accessor :e_tag

      # @return [String] Type of the object =
      # [Microsoft.Migrate/projects/groups/assessments/assessedMachines].
      attr_accessor :type

      # @return [Array<String>] List of references to the groups that the
      # machine is member of.
      attr_accessor :groups

      # @return [DateTime] Time when this machine was discovered by Azure
      # Migrate agent. Date-Time represented in ISO-8601 format.
      attr_accessor :discovered_timestamp

      # @return [MachineBootType] Boot type of the machine. Possible values
      # include: 'Unknown', 'EFI', 'BIOS'
      attr_accessor :boot_type

      # @return [String] Container defined in the management solution that this
      # machine is part of in the datacenter.
      attr_accessor :datacenter_container

      # @return [String] Name of the server hosting the datacenter management
      # solution.
      attr_accessor :datacenter_management_server

      # @return [String] ID of the machine as tracked by the datacenter
      # management solution.
      attr_accessor :datacenter_machine_id

      # @return [String] ID of the server hosting the datacenter management
      # solution.
      attr_accessor :datacenter_management_server_id

      # @return [String] Description of the machine
      attr_accessor :description

      # @return [String] User readable name of the machine as defined by the
      # user in their private datacenter.
      attr_accessor :display_name

      # @return [Float] Memory in Megabytes.
      attr_accessor :megabytes_of_memory

      # @return [Integer] Processor count.
      attr_accessor :number_of_cores

      # @return [String] Operating System of the machine.
      attr_accessor :operating_system

      # @return [Float] Monthly network cost estimate for the network adapters
      # that are attached to this machine as a group, for a 31-day month.
      attr_accessor :monthly_bandwidth_cost

      # @return [Float] Monthly storage cost estimate for the disks that are
      # attached to this machine as a group, for a 31-day month.
      attr_accessor :monthly_storage_cost

      # @return [Hash{String => AssessedDisk}] Dictionary of disks attached to
      # the machine. Key is ID of disk. Value is a disk object.
      attr_accessor :disks

      # @return [Hash{String => AssessedNetworkAdapter}] Dictionary of network
      # adapters attached to the machine. Key is name of the adapter. Value is
      # a network adapter object.
      attr_accessor :network_adapters

      # @return [AzureVmSize] Recommended Azure size for this machine. Possible
      # values include: 'Unknown', 'Basic_A0', 'Basic_A1', 'Basic_A2',
      # 'Basic_A3', 'Basic_A4', 'Standard_A0', 'Standard_A1', 'Standard_A2',
      # 'Standard_A3', 'Standard_A4', 'Standard_A5', 'Standard_A6',
      # 'Standard_A7', 'Standard_A8', 'Standard_A9', 'Standard_A10',
      # 'Standard_A11', 'Standard_A1_v2', 'Standard_A2_v2', 'Standard_A4_v2',
      # 'Standard_A8_v2', 'Standard_A2m_v2', 'Standard_A4m_v2',
      # 'Standard_A8m_v2', 'Standard_D1', 'Standard_D2', 'Standard_D3',
      # 'Standard_D4', 'Standard_D11', 'Standard_D12', 'Standard_D13',
      # 'Standard_D14', 'Standard_D1_v2', 'Standard_D2_v2', 'Standard_D3_v2',
      # 'Standard_D4_v2', 'Standard_D5_v2', 'Standard_D11_v2',
      # 'Standard_D12_v2', 'Standard_D13_v2', 'Standard_D14_v2',
      # 'Standard_D15_v2', 'Standard_DS1', 'Standard_DS2', 'Standard_DS3',
      # 'Standard_DS4', 'Standard_DS11', 'Standard_DS12', 'Standard_DS13',
      # 'Standard_DS14', 'Standard_DS1_v2', 'Standard_DS2_v2',
      # 'Standard_DS3_v2', 'Standard_DS4_v2', 'Standard_DS5_v2',
      # 'Standard_DS11_v2', 'Standard_DS12_v2', 'Standard_DS13_v2',
      # 'Standard_DS14_v2', 'Standard_DS15_v2', 'Standard_F1', 'Standard_F2',
      # 'Standard_F4', 'Standard_F8', 'Standard_F16', 'Standard_F1s',
      # 'Standard_F2s', 'Standard_F4s', 'Standard_F8s', 'Standard_F16s',
      # 'Standard_G1', 'Standard_G2', 'Standard_G3', 'Standard_G4',
      # 'Standard_G5', 'Standard_GS1', 'Standard_GS2', 'Standard_GS3',
      # 'Standard_GS4', 'Standard_GS5', 'Standard_H8', 'Standard_H16',
      # 'Standard_H8m', 'Standard_H16m', 'Standard_H16r', 'Standard_H16mr',
      # 'Standard_L4s', 'Standard_L8s', 'Standard_L16s', 'Standard_L32s'
      attr_accessor :recommended_size

      # @return [Integer] Number of CPU cores in the Recommended Azure VM Size.
      attr_accessor :number_of_cores_for_recommended_size

      # @return [Float] Megabytes of memory in the Recommended Azure VM Size.
      attr_accessor :megabytes_of_memory_for_recommended_size

      # @return [Float] Compute Cost for a 31-day month, if the machine is
      # migrated to Azure with the Recommended Size.
      attr_accessor :monthly_compute_cost_for_recommended_size

      # @return [Float] Utilization percentage of the processor core as
      # observed in the private data center, in the Time Range selected on
      # Assessment, reported as the Percentile value based on the percentile
      # number selected in assessment.
      attr_accessor :percentage_cores_utilization

      # @return [Float] Utilization percentage of the memory as observed in the
      # private data center, in the Time Range selected on Assessment, reported
      # as the Percentile value based on the percentile number selected in
      # assessment.
      attr_accessor :percentage_memory_utilization

      # @return [Integer] Expected data points for percentage of cores
      # utilization.
      attr_accessor :percentage_cores_utilization_data_points_expected

      # @return [Integer] Received data points for percentage of cores
      # utilization.
      attr_accessor :percentage_cores_utilization_data_points_received

      # @return [Integer] Expected data points for percentage of memory
      # utilization.
      attr_accessor :percentage_memory_utilization_data_points_expected

      # @return [Integer] Received data points for percentage of memory
      # utilization.
      attr_accessor :percentage_memory_utilization_data_points_received

      # @return [CloudSuitability] Whether machine is suitable for migration to
      # Azure. Possible values include: 'Unknown', 'NotSuitable', 'Suitable',
      # 'ConditionallySuitable', 'ReadinessUnknown'
      attr_accessor :suitability

      # @return [AzureVmSuitabilityExplanation] If machine is not ready to be
      # migrated, this explains the reasons and mitigation steps. Possible
      # values include: 'Unknown', 'NotApplicable',
      # 'GuestOperatingSystemArchitectureNotSupported',
      # 'GuestOperatingSystemNotSupported', 'BootTypeNotSupported',
      # 'MoreDisksThanSupported', 'NoSuitableVmSizeFound',
      # 'OneOrMoreDisksNotSuitable', 'OneOrMoreAdaptersNotSuitable',
      # 'InternalErrorOccuredDuringComputeEvaluation',
      # 'InternalErrorOccuredDuringStorageEvaluation',
      # 'InternalErrorOccuredDuringNetworkEvaluation',
      # 'NoVmSizeSupportsStoragePerformance',
      # 'NoVmSizeSupportsNetworkPerformance', 'NoVmSizeForSelectedPricingTier',
      # 'NoVmSizeForSelectedAzureLocation', 'CheckRedHatLinuxVersion',
      # 'CheckOpenSuseLinuxVersion', 'CheckWindowsServer2008R2Version',
      # 'CheckCentOsVersion', 'CheckDebianLinuxVersion',
      # 'CheckSuseLinuxVersion', 'CheckOracleLinuxVersion',
      # 'CheckUbuntuLinuxVersion', 'CheckCoreOsLinuxVersion',
      # 'WindowsServerVersionConditionallySupported',
      # 'NoGuestOperatingSystemConditionallySupported',
      # 'WindowsClientVersionsConditionallySupported', 'BootTypeUnknown',
      # 'GuestOperatingSystemUnknown',
      # 'WindowsServerVersionsSupportedWithCaveat',
      # 'WindowsOSNoLongerUnderMSSupport',
      # 'EndorsedWithConditionsLinuxDistributions',
      # 'UnendorsedLinuxDistributions', 'NoVmSizeForStandardPricingTier',
      # 'NoVmSizeForBasicPricingTier'
      attr_accessor :suitability_explanation

      # @return [DateTime] Time when this machine was created. Date-Time
      # represented in ISO-8601 format.
      attr_accessor :created_timestamp

      # @return [DateTime] Time when this machine was last updated. Date-Time
      # represented in ISO-8601 format.
      attr_accessor :updated_timestamp


      #
      # Mapper for AssessedMachine class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AssessedMachine',
          type: {
            name: 'Composite',
            class_name: 'AssessedMachine',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              e_tag: {
                client_side_validation: true,
                required: false,
                serialized_name: 'eTag',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              groups: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.groups',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              discovered_timestamp: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.discoveredTimestamp',
                type: {
                  name: 'DateTime'
                }
              },
              boot_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.bootType',
                type: {
                  name: 'String'
                }
              },
              datacenter_container: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.datacenterContainer',
                type: {
                  name: 'String'
                }
              },
              datacenter_management_server: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.datacenterManagementServer',
                type: {
                  name: 'String'
                }
              },
              datacenter_machine_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.datacenterMachineId',
                type: {
                  name: 'String'
                }
              },
              datacenter_management_server_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.datacenterManagementServerId',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.displayName',
                type: {
                  name: 'String'
                }
              },
              megabytes_of_memory: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.megabytesOfMemory',
                type: {
                  name: 'Double'
                }
              },
              number_of_cores: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.numberOfCores',
                type: {
                  name: 'Number'
                }
              },
              operating_system: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.operatingSystem',
                type: {
                  name: 'String'
                }
              },
              monthly_bandwidth_cost: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.monthlyBandwidthCost',
                type: {
                  name: 'Double'
                }
              },
              monthly_storage_cost: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.monthlyStorageCost',
                type: {
                  name: 'Double'
                }
              },
              disks: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.disks',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AssessedDiskElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AssessedDisk'
                      }
                  }
                }
              },
              network_adapters: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.networkAdapters',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AssessedNetworkAdapterElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AssessedNetworkAdapter'
                      }
                  }
                }
              },
              recommended_size: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.recommendedSize',
                type: {
                  name: 'String'
                }
              },
              number_of_cores_for_recommended_size: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.numberOfCoresForRecommendedSize',
                type: {
                  name: 'Number'
                }
              },
              megabytes_of_memory_for_recommended_size: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.megabytesOfMemoryForRecommendedSize',
                type: {
                  name: 'Double'
                }
              },
              monthly_compute_cost_for_recommended_size: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.monthlyComputeCostForRecommendedSize',
                type: {
                  name: 'Double'
                }
              },
              percentage_cores_utilization: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.percentageCoresUtilization',
                type: {
                  name: 'Double'
                }
              },
              percentage_memory_utilization: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.percentageMemoryUtilization',
                type: {
                  name: 'Double'
                }
              },
              percentage_cores_utilization_data_points_expected: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.percentageCoresUtilizationDataPointsExpected',
                type: {
                  name: 'Number'
                }
              },
              percentage_cores_utilization_data_points_received: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.percentageCoresUtilizationDataPointsReceived',
                type: {
                  name: 'Number'
                }
              },
              percentage_memory_utilization_data_points_expected: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.percentageMemoryUtilizationDataPointsExpected',
                type: {
                  name: 'Number'
                }
              },
              percentage_memory_utilization_data_points_received: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.percentageMemoryUtilizationDataPointsReceived',
                type: {
                  name: 'Number'
                }
              },
              suitability: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.suitability',
                type: {
                  name: 'String'
                }
              },
              suitability_explanation: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.suitabilityExplanation',
                type: {
                  name: 'String'
                }
              },
              created_timestamp: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.createdTimestamp',
                type: {
                  name: 'DateTime'
                }
              },
              updated_timestamp: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.updatedTimestamp',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
