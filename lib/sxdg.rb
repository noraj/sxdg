# frozen_string_literal: true
# @!macro xdg
#   Conforms to the XDG Base Directory Specification environment variable.

require_relative 'sxdg/version'

# SXDG is an extremely tiny, simple library allowing for easy conformance with
# the XDG Base Directory Specification.
module SXDG
  # @private
  private_class_method def self.set(env, *dirs)
    value = (ENV[env] ? ENV[env].split(':') : dirs).map! do |path|
      File.expand_path(path)
    end
    const_set(env, value)
  end

  # @!macro xdg
  XDG_CACHE_HOME  = File.expand_path(ENV['XDG_CACHE_HOME']  || '~/.cache')

  # @!macro xdg
  XDG_CONFIG_HOME = File.expand_path(ENV['XDG_CONFIG_HOME'] || '~/.config')

  # @!macro xdg
  XDG_DATA_HOME   = File.expand_path(ENV['XDG_DATA_HOME']   || '~/.local/share')

  # @!macro xdg
  XDG_RUNTIME_DIR = File.expand_path(ENV['XDG_RUNTIME_DIR'] ||
    "/var/run/user/#{ENV['USER']}")

  # @!parse
  #   # @!macro xdg
  #   XDG_CONFIG_DIRS = set('XDG_CONFIG_DIRS', '/etc/xdg')
  set('XDG_CONFIG_DIRS', '/etc/xdg')

  # @!parse
  #   # @!macro xdg
  #   XDG_DATA_DIRS = set('XDG_DATA_DIRS', '/usr/local/share', '/usr/share')
  set('XDG_DATA_DIRS', '/usr/local/share', '/usr/share')

  class << self ; remove_method :set ; end
end
