# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CustomerInsights::Mgmt::V2017_01_01
  module Models
    #
    # The data source precedence is a way to know the precedence of each data
    # source.
    #
    class DataSourcePrecedence

      include MsRestAzure

      # @return [String] The data source name
      attr_accessor :name

      # @return [DataSourceType] The data source type. Possible values include:
      # 'Connector', 'LinkInteraction', 'SystemDefault'
      attr_accessor :data_source_type

      # @return [Status] The data source status. Possible values include:
      # 'None', 'Active', 'Deleted'
      attr_accessor :status

      # @return [Integer] The data source ID.
      attr_accessor :id

      # @return [String] The data source reference id.
      attr_accessor :data_source_reference_id

      # @return [Integer] the precedence value.
      attr_accessor :precedence


      #
      # Mapper for DataSourcePrecedence class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DataSourcePrecedence',
          type: {
            name: 'Composite',
            class_name: 'DataSourcePrecedence',
            model_properties: {
              name: {
                required: false,
                read_only: true,
                serialized_name: 'dataSource.name',
                type: {
                  name: 'String'
                }
              },
              data_source_type: {
                required: false,
                read_only: true,
                serialized_name: 'dataSource.dataSourceType',
                type: {
                  name: 'String'
                }
              },
              status: {
                required: false,
                read_only: true,
                serialized_name: 'dataSource.status',
                type: {
                  name: 'String'
                }
              },
              id: {
                required: false,
                read_only: true,
                serialized_name: 'dataSource.id',
                type: {
                  name: 'Number'
                }
              },
              data_source_reference_id: {
                required: false,
                read_only: true,
                serialized_name: 'dataSource.dataSourceReferenceId',
                type: {
                  name: 'String'
                }
              },
              precedence: {
                required: false,
                serialized_name: 'precedence',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
