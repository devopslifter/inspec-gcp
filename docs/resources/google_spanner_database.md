---
title: About the google_spanner_database resource
platform: gcp
---

## Syntax
A `google_spanner_database` is used to test a Google Database resource

## Examples
```

describe google_spanner_database(project: 'chef-gcp-inspec', instance: 'spinstance', name: 'spdatabase') do
  it { should exist }
  its('name') { should match 'spdatabase' }
end
```

## Properties
Properties that can be accessed from the `google_spanner_database` resource:


  * `name`: A unique identifier for the database, which cannot be changed after the instance is created. Values are of the form [a-z][-a-z0-9]*[a-z0-9].

  * `instance`: The instance to create the database on.


## GCP Permissions

Ensure the [Cloud Spanner API](https://console.cloud.google.com/apis/library/spanner.googleapis.com/) is enabled for the current project.
