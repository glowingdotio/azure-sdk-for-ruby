# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CustomerInsights::Mgmt::V2017_01_01
  module Models
    #
    # The image definition.
    #
    class ImageDefinition

      include MsRestAzure

      # @return [Boolean] Whether image exists already.
      attr_accessor :image_exists

      # @return [String] Content URL for the image blob.
      attr_accessor :content_url

      # @return [String] Relative path of the image.
      attr_accessor :relative_path


      #
      # Mapper for ImageDefinition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ImageDefinition',
          type: {
            name: 'Composite',
            class_name: 'ImageDefinition',
            model_properties: {
              image_exists: {
                required: false,
                serialized_name: 'imageExists',
                type: {
                  name: 'Boolean'
                }
              },
              content_url: {
                required: false,
                serialized_name: 'contentUrl',
                type: {
                  name: 'String'
                }
              },
              relative_path: {
                required: false,
                serialized_name: 'relativePath',
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
