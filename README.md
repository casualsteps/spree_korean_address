SpreeKoreanAddress
==================

Adds the following fields to `Address`:
```
customs_no
jumin_no
```

Makes the following fields optional:
```
city
lastname
```

Installation
------------

Add spree_korean_address to your Gemfile:
`gem 'spree_korean_address', :git => 'https://github.com/casualsteps/spree_korean_address.git'`

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g spree_korean_address:install
```
