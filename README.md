# ansible-buildkite

This is an [ansible](https://docs.ansible.com/) role which downloads and installs [buildkite](https://buildkite.com) agent,
then configures it as a service. Currently it supports [ubuntu](http://ubuntu.com).

# Role Variables

These are the configurable attributes of the role, note you MUST configure the `buildkite_token` otherwise the agent will fail to start.

```yaml
buildkite_token: ""
```

# Example Playbook

```yaml
- hosts: servers
  roles:
     - { role: wolfeidau.buildbox, buildkite_token: "whatever" }
```

# License

Copyright (c) 2014 Mark Wolfe
Licensed under the MIT license.
