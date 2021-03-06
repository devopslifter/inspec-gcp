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
require 'gcp_backend'
require 'google/compute/property/instance_disks'
require 'google/compute/property/instance_guest_accelerators'
require 'google/compute/property/instance_network_interfaces'
require 'google/compute/property/instance_scheduling'
require 'google/compute/property/instance_service_accounts'
require 'google/compute/property/instance_shielded_instance_config'
require 'google/compute/property/instance_tags'

# A provider to manage Compute Engine resources.
class ComputeInstance < GcpResourceBase
  name 'google_compute_instance'
  desc 'Instance'
  supports platform: 'gcp'

  attr_reader :params
  attr_reader :can_ip_forward
  attr_reader :cpu_platform
  attr_reader :creation_timestamp
  attr_reader :deletion_protection
  attr_reader :disks
  attr_reader :guest_accelerators
  attr_reader :hostname
  attr_reader :id
  attr_reader :label_fingerprint
  attr_reader :labels
  attr_reader :metadata
  attr_reader :machine_type
  attr_reader :min_cpu_platform
  attr_reader :name
  attr_reader :network_interfaces
  attr_reader :scheduling
  attr_reader :service_accounts
  attr_reader :shielded_instance_config
  attr_reader :status
  attr_reader :status_message
  attr_reader :tags
  attr_reader :zone

  def initialize(params)
    super(params.merge({ use_http_transport: true }))
    @params = params
    @fetched = @connection.fetch(product_url, resource_base_url, params, 'Get')
    parse unless @fetched.nil?
    @params = params
  end

  def parse
    @can_ip_forward = @fetched['canIpForward']
    @cpu_platform = @fetched['cpuPlatform']
    @creation_timestamp = @fetched['creationTimestamp']
    @deletion_protection = @fetched['deletionProtection']
    @disks = GoogleInSpec::Compute::Property::InstanceDisksArray.parse(@fetched['disks'], to_s)
    @guest_accelerators = GoogleInSpec::Compute::Property::InstanceGuestAcceleratorsArray.parse(@fetched['guestAccelerators'], to_s)
    @hostname = @fetched['hostname']
    @id = @fetched['id']
    @label_fingerprint = @fetched['labelFingerprint']
    @labels = @fetched['labels']
    @metadata = @fetched['metadata']
    @machine_type = @fetched['machineType']
    @min_cpu_platform = @fetched['minCpuPlatform']
    @name = @fetched['name']
    @network_interfaces = GoogleInSpec::Compute::Property::InstanceNetworkInterfacesArray.parse(@fetched['networkInterfaces'], to_s)
    @scheduling = GoogleInSpec::Compute::Property::InstanceScheduling.new(@fetched['scheduling'], to_s)
    @service_accounts = GoogleInSpec::Compute::Property::InstanceServiceAccountsArray.parse(@fetched['serviceAccounts'], to_s)
    @shielded_instance_config = GoogleInSpec::Compute::Property::InstanceShieldedInstanceConfig.new(@fetched['shieldedInstanceConfig'], to_s)
    @status = @fetched['status']
    @status_message = @fetched['statusMessage']
    @tags = GoogleInSpec::Compute::Property::InstanceTags.new(@fetched['tags'], to_s)
    @zone = @fetched['zone']
  end

  # Handles parsing RFC3339 time string
  def parse_time_string(time_string)
    time_string ? Time.parse(time_string) : nil
  end

  def exists?
    !@fetched.nil?
  end

  def to_s
    "Instance #{@params[:name]}"
  end

  def un_parse
    {
      'can_ip_forward' => ->(x, _) { x.nil? ? [] : ["its('can_ip_forward') { should cmp #{x.inspect} }"] },
      'cpu_platform' => ->(x, _) { x.nil? ? [] : ["its('cpu_platform') { should cmp #{x.inspect} }"] },
      'creation_timestamp' => ->(x, _) { x.nil? ? [] : ["its('creation_timestamp') { should cmp #{x.inspect} }"] },
      'deletion_protection' => ->(x, _) { x.nil? ? [] : ["its('deletion_protection') { should cmp #{x.inspect} }"] },
      'disks' => ->(x, _) { x.nil? ? [] : x.map { |single| "its('disks') { should include '#{single.to_json}' }" } },
      'guest_accelerators' => ->(x, _) { x.nil? ? [] : x.map { |single| "its('guest_accelerators') { should include '#{single.to_json}' }" } },
      'hostname' => ->(x, _) { x.nil? ? [] : ["its('hostname') { should cmp #{x.inspect} }"] },
      'id' => ->(x, _) { x.nil? ? [] : ["its('id') { should cmp #{x.inspect} }"] },
      'label_fingerprint' => ->(x, _) { x.nil? ? [] : ["its('label_fingerprint') { should cmp #{x.inspect} }"] },
      'labels' => ->(x, _) { x.nil? ? [] : x.map { |k, v| "its('labels') { should include(#{k.inspect} => #{v.inspect}) }" } },
      'metadata' => ->(x, _) { x.nil? ? [] : x.map { |k, v| "its('metadata') { should include(#{k.inspect} => #{v.inspect}) }" } },
      'machine_type' => ->(x, _) { x.nil? ? [] : ["its('machine_type') { should cmp #{x.inspect} }"] },
      'min_cpu_platform' => ->(x, _) { x.nil? ? [] : ["its('min_cpu_platform') { should cmp #{x.inspect} }"] },
      'name' => ->(x, _) { x.nil? ? [] : ["its('name') { should cmp #{x.inspect} }"] },
      'network_interfaces' => ->(x, _) { x.nil? ? [] : x.map { |single| "its('network_interfaces') { should include '#{single.to_json}' }" } },
      'scheduling' => ->(x, _) { x.nil? ? [] : GoogleInSpec::Compute::Property::InstanceScheduling.un_parse(x, 'scheduling') },
      'service_accounts' => ->(x, _) { x.nil? ? [] : x.map { |single| "its('service_accounts') { should include '#{single.to_json}' }" } },
      'shielded_instance_config' => ->(x, _) { x.nil? ? [] : GoogleInSpec::Compute::Property::InstanceShieldedInstanceConfig.un_parse(x, 'shielded_instance_config') },
      'status' => ->(x, _) { x.nil? ? [] : ["its('status') { should cmp #{x.inspect} }"] },
      'status_message' => ->(x, _) { x.nil? ? [] : ["its('status_message') { should cmp #{x.inspect} }"] },
      'tags' => ->(x, _) { x.nil? ? [] : GoogleInSpec::Compute::Property::InstanceTags.un_parse(x, 'tags') },
      'zone' => ->(x, _) { x.nil? ? [] : ["its('zone') { should cmp #{x.inspect} }"] },
    }
  end

  def dump(path, template_path, test_number, ignored_fields)
    name = 'Instance'

    arr = un_parse.map do |k, v|
      next if ignored_fields.include?(k)
      v.call(method(k.to_sym).call, k)
    end
    template_vars = {
      name: name,
      arr: arr,
      type: 'google_compute_instance',
      identifiers: @params,
      number: test_number,
    }
    File.open("#{path}/#{name}_#{test_number}.rb", 'w') do |file|
      file.write(ERB.new(File.read(template_path)).result_with_hash(template_vars))
    end
  end

  private

  def product_url
    'https://www.googleapis.com/compute/v1/'
  end

  def resource_base_url
    'projects/{{project}}/zones/{{zone}}/instances/{{name}}'
  end
end
