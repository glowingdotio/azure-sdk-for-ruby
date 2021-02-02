# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_08_01
  module Models
    #
    # Network profile resource.
    #
    class NetworkProfile < Resource

      include MsRestAzure

      # @return [Array<ContainerNetworkInterface>] List of child container
      # network interfaces.
      attr_accessor :container_network_interfaces

      # @return [Array<ContainerNetworkInterfaceConfiguration>] List of chid
      # container network interface configurations.
      attr_accessor :container_network_interface_configurations

      # @return [String] The resource GUID property of the network profile
      # resource.
      attr_accessor :resource_guid

      # @return [ProvisioningState] The provisioning state of the network
      # profile resource. Possible values include: 'Succeeded', 'Updating',
      # 'Deleting', 'Failed'
      attr_accessor :provisioning_state

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag


      #
      # Mapper for NetworkProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NetworkProfile',
          type: {
            name: 'Composite',
            class_name: 'NetworkProfile',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
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
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              container_network_interfaces: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.containerNetworkInterfaces',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ContainerNetworkInterfaceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ContainerNetworkInterface'
                      }
                  }
                }
              },
              container_network_interface_configurations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.containerNetworkInterfaceConfigurations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ContainerNetworkInterfaceConfigurationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ContainerNetworkInterfaceConfiguration'
                      }
                  }
                }
              },
              resource_guid: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.resourceGuid',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              etag: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'etag',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
