# frozen_string_literal: false

# ----------------------------------------------------------------------------
#
#     ***     AUTO GENERATED CODE    ***    AUTO GENERATED CODE     ***
#
# ----------------------------------------------------------------------------
#
#     This file is automatically generated by Magic Modules and manual
#     changes will be clobbered when the file is regenerated.
#
#     Please read more about how to change this file in README.md and
#     CONTRIBUTING.md located at the root of this package.
#
# ----------------------------------------------------------------------------
require 'google/dataproc/property/cluster_config_secondary_worker_config_disk_config'
require 'google/dataproc/property/cluster_config_secondary_worker_config_managed_group_config'
module GoogleInSpec
  module Dataproc
    module Property
      class ClusterConfigSecondaryWorkerConfig
        attr_reader :num_instances

        attr_reader :instance_names

        attr_reader :image_uri

        attr_reader :machine_type_uri

        attr_reader :disk_config

        attr_reader :is_preemptible

        attr_reader :managed_group_config

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @num_instances = args['numInstances']
          @instance_names = args['instanceNames']
          @image_uri = args['imageUri']
          @machine_type_uri = args['machineTypeUri']
          @disk_config = GoogleInSpec::Dataproc::Property::ClusterConfigSecondaryWorkerConfigDiskConfig.new(args['diskConfig'], to_s)
          @is_preemptible = args['isPreemptible']
          @managed_group_config = GoogleInSpec::Dataproc::Property::ClusterConfigSecondaryWorkerConfigManagedGroupConfig.new(args['managedGroupConfig'], to_s)
        end

        def to_s
          "#{@parent_identifier} ClusterConfigSecondaryWorkerConfig"
        end
      end
    end
  end
end
