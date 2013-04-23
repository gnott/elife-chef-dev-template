elife-chef-dev-template Cookbook
================================
Installs some python packages. Is mainly a demonstration cookbook
to be used as a template for setting up future cookbooks.

Currently installs the following packages:
- requests
- lxml
- beautifulsoup4
- fom
- lettuce
- boto
- nose
- ipython-notebook
- scipy
- pandas
- sympy

Requirements
------------
- cookbook 'apt'
- cookbook 'git'
- cookbook 'python', '>= 1.2.2'
- cookbook 'rvm',
- cookbook 'build-essential',


Usage
-----
#### elife-chef-dev-template::default

Just include 
> cookbook 'elife-chef-dev-template',
        :git=> 'http://github.com/elifesciences/elife-chef-dev-template.git'`elife-chef-dev-template`

in your `Cheffile`

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: @ianmulvany 
License: MIT