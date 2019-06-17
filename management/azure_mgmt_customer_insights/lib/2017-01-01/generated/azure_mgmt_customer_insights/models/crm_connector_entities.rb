# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CustomerInsights::Mgmt::V2017_01_01
  module Models
    #
    # The CRM connector entities.
    #
    class CrmConnectorEntities

      include MsRestAzure

      # @return [String] The logical name.
      attr_accessor :logical_name

      # @return [String] The display name.
      attr_accessor :display_name

      # @return [Boolean] Indicating whether this is profile.
      attr_accessor :is_profile


      #
      # Mapper for CrmConnectorEntities class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CrmConnectorEntities',
          type: {
            name: 'Composite',
            class_name: 'CrmConnectorEntities',
            model_properties: {
              logical_name: {
                required: true,
                serialized_name: 'logicalName',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                required: false,
                serialized_name: 'displayName',
                type: {
                  name: 'String'
                }
              },
              is_profile: {
                required: false,
                serialized_name: 'isProfile',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
