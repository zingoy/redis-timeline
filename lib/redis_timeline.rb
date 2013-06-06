require 'active_support/concern'
require 'multi_json'
require 'hashie'
require 'timeline/config'
require 'timeline/helpers'
require 'timeline/track'
require 'timeline/actor'
require 'timeline/activity'
require 'timeline/controller_helper'


module Timeline
  extend Config
  extend Helpers
end

ActionController::Base.send :include, RedisTimeline::ControllerHelper

