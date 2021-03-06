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

title 'Test GCP google_compute_node_group resource.'

gcp_project_id = attribute(:gcp_project_id, default: 'gcp_project_id', description: 'The GCP project identifier.')
node_group = attribute('node_group', default: {
  "name": "inspec-node-group",
  "description": "A description of the node group",
  "size": 0
}, description: 'Node group description')
gcp_zone = attribute(:gcp_zone, default: 'gcp_zone', description: 'GCP zone name')
control 'google_compute_node_group-1.0' do
  impact 1.0
  title 'google_compute_node_group resource test'


  describe google_compute_node_group(project: gcp_project_id, zone: gcp_zone, name: node_group['name']) do
    it { should exist }
    its('description') { should cmp node_group['description'] }
    its('size') { should cmp node_group['size'] }
  end

  describe google_compute_node_group(project: gcp_project_id, zone: gcp_zone, name: 'nonexistent') do
    it { should_not exist }
  end
end
