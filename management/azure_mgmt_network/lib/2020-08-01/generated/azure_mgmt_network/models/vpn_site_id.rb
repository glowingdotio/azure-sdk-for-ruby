# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_08_01
  module Models
    #
    # VpnSite Resource.
    #
    class VpnSiteId

      include MsRestAzure

      # @return [String] The resource-uri of the vpn-site for which config is
      # to be fetched.
      attr_accessor :vpn_site


      #
      # Mapper for VpnSiteId class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VpnSiteId',
          type: {
            name: 'Composite',
            class_name: 'VpnSiteId',
            model_properties: {
              vpn_site: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'vpnSite',
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
