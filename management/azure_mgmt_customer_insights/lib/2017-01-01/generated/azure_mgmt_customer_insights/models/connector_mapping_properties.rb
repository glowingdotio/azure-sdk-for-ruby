# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CustomerInsights::Mgmt::V2017_01_01
  module Models
    #
    # The connector mapping properties.
    #
    class ConnectorMappingProperties

      include MsRestAzure

      # @return [String] The folder path for the mapping.
      attr_accessor :folder_path

      # @return [String] The file filter for the mapping.
      attr_accessor :file_filter

      # @return [Boolean] If the file contains a header or not.
      attr_accessor :has_header

      # @return [ConnectorMappingErrorManagement] The error management setting
      # for the mapping.
      attr_accessor :error_management

      # @return [ConnectorMappingFormat] The format of mapping property.
      attr_accessor :format

      # @return [ConnectorMappingAvailability] The availability of mapping
      # property.
      attr_accessor :availability

      # @return [Array<ConnectorMappingStructure>] Ingestion mapping
      # information at property level.
      attr_accessor :structure

      # @return [ConnectorMappingCompleteOperation] The operation after import
      # is done.
      attr_accessor :complete_operation


      #
      # Mapper for ConnectorMappingProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ConnectorMappingProperties',
          type: {
            name: 'Composite',
            class_name: 'ConnectorMappingProperties',
            model_properties: {
              folder_path: {
                required: false,
                serialized_name: 'folderPath',
                type: {
                  name: 'String'
                }
              },
              file_filter: {
                required: false,
                serialized_name: 'fileFilter',
                type: {
                  name: 'String'
                }
              },
              has_header: {
                required: false,
                serialized_name: 'hasHeader',
                type: {
                  name: 'Boolean'
                }
              },
              error_management: {
                required: true,
                serialized_name: 'errorManagement',
                type: {
                  name: 'Composite',
                  class_name: 'ConnectorMappingErrorManagement'
                }
              },
              format: {
                required: true,
                serialized_name: 'format',
                default_value: {},
                type: {
                  name: 'Composite',
                  class_name: 'ConnectorMappingFormat'
                }
              },
              availability: {
                required: true,
                serialized_name: 'availability',
                type: {
                  name: 'Composite',
                  class_name: 'ConnectorMappingAvailability'
                }
              },
              structure: {
                required: true,
                serialized_name: 'structure',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ConnectorMappingStructureElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ConnectorMappingStructure'
                      }
                  }
                }
              },
              complete_operation: {
                required: true,
                serialized_name: 'completeOperation',
                type: {
                  name: 'Composite',
                  class_name: 'ConnectorMappingCompleteOperation'
                }
              }
            }
          }
        }
      end
    end
  end
end
