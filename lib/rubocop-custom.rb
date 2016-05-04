# encoding: utf-8

require 'rubocop'
require 'rubocop/custom/version'
require 'rubocop/custom/inject'

RuboCop::Custom::Inject.defaults!

require 'rubocop/cop/custom/test'
