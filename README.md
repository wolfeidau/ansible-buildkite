# ansible-buildbox

This is an ansible role which downloads and installs [buildbox](http://buildbox.io) agent,
then configures it as a service. Currently it supports [ubuntu](http://ubuntu.com).

# Role Variables

These are the configurable attributes of the role, note you MUST configure the `buildbox_token`
otherwise the agent will fail to start.

```
buildbox_token: ""
buildbox_user: "buildbox"
buildbox_home: "/var/lib/buildbox"
buildbox_version: "0.2-beta.9"
buildbox_arch: "amd64"
```

# License

Copyright (c) 2014 Mark Wolfe
Licensed under the MIT license.
