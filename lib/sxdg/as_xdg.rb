# frozen_string_literal: true

require_relative '../sxdg'

# @!macro as_xdg
#   Conforms to the XDG Base Directory Specification environment variable if
#   `sxdg/as_xdg` is required.
# @!parse
#   # @!macro as_xdg
#   XDG_CACHE_HOME  = SXDG::XDG_CACHE_HOME
#
#   # @!macro as_xdg
#   XDG_CONFIG_DIRS = SXDG::XDG_CONFIG_DIRS
#
#   # @!macro as_xdg
#   XDG_CONFIG_HOME = SXDG::XDG_CONFIG_HOME
#
#   # @!macro as_xdg
#   XDG_DATA_DIRS   = SXDG::XDG_DATA_DIRS
#
#   # @!macro as_xdg
#   XDG_DATA_HOME   = SXDG::XDG_DATA_HOME
#
#   # @!macro as_xdg
#   XDG_RUNTIME_DIR = SXDG::XDG_RUNTIME_DIR

SXDG.constants.select { |constant| constant =~ /^XDG_/ }.each do |constant|
  Object.const_set(constant, SXDG.const_get(constant))
end
