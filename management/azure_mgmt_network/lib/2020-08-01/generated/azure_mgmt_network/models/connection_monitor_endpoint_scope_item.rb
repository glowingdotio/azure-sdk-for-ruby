# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_08_01
  module Models
    #
    # Describes the connection monitor endpoint scope item.
    #
    class ConnectionMonitorEndpointScopeItem

      include MsRestAzure

      # @return [String] The address of the endpoint item. Supported types are
      # IPv4/IPv6 subnet mask or IPv4/IPv6 IP address.
      attr_accessor :address


      #
      # Mapper for ConnectionMonitorEndpointScopeItem class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ConnectionMonitorEndpointScopeItem',
          type: {
            name: 'Composite',
            class_name: 'ConnectionMonitorEndpointScopeItem',
            model_properties: {
              address: {
                client_side_validation: true,
                required: false,
                serialized_name: 'address',
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
