uwsgi Cookbook
==============

Install uwsgi from source.

Requirements
------------

#### Operating Systems

This has only been tested on the following OS:

* `Ubuntu 12.04 LTS`

Since it is very simple in nature, it should work on other distributions easily. Let me know if you have tested it on another distro and ill add it to the list, or you can submit a pull request.

#### Cookbooks

- `build-essential` - chef cookbook that installs build-essential tools for commands like make, g++, etc.

Attributes
----------

#### uwsgi::default

* `[:tarsnap][:version]` **String** (default: '1.9.10') Uwsgi version that is getting installed.

* `[:tarsnap][:install_dir]` **String** (default: '/usr/sbin') Where the uwsgi binary goes.

Usage
-----

Then just include `uwsgi` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[uwsgi]"
  ]
}
```

Contributing
------------

1. Fork the repository on Github
2. Write your change
3. Submit a Pull Request using Github

License and Authors
-------------------
License: MIT
Authors: Glen Zangirolami
