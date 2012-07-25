require 'rubygems'
require 'curb'
require 'crack'
gem 'activesupport'
require 'active_support'
require 'active_support/version'
# need to pull in the pieces we want with Rails 3
require 'active_support/core_ext' if ActiveSupport::VERSION::MAJOR == 3

module Zendesk
  class Error < StandardError; end
  class RequestError < Error 
    attr_accessor :response
  end
  class AuthenticationError < RequestError ; end # status 401, Couldn't authenticate you
  class ServiceError < RequestError ; end # status 500
  class RecordNotFoundError < RequestError ; end # RecordNotFound
  class NotFoundError < RequestError; end # status 404 general
  class FormatError < RequestError ; end # This is a JSON only API. Please specify the correct Accept header.
end

require 'zendesk/user'
require 'zendesk/user_identity'
require 'zendesk/organization'
require 'zendesk/group'
require 'zendesk/ticket'
require 'zendesk/attachment'
require 'zendesk/tag'
require 'zendesk/forum'
require 'zendesk/entry'
require 'zendesk/search'
require 'zendesk/comment'
require 'zendesk/main'
