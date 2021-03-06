# frozen_string_literal: true

require_relative './ssl_attribute/settings'

module Cloudflare

	class CustomHostname < Representation

		class SSLAttribute

			def initialize(params)
				@params = params
			end

			def active?
				status == 'active'
			end

			def cname
				@params[:cname]
			end

			def cname_target
				@params[:cname_target]
			end

			def http_body
				@params[:http_body]
			end

			def http_url
				@params[:http_url]
			end

			def method
				@params[:method]
			end

			def pending_validation?
				status == 'pending_validation'
			end

			# Wraps the settings hash if it exists or initializes the settings hash and then wraps it
			def settings
				@settings ||= Settings.new(@params[:settings] ||= {})
			end

			def status
				@params[:status]
			end

			def to_h
				@params
			end

			def type
				@params[:type]
			end

			def validation_errors
				@params[:validation_errors]
			end

		end

	end

end
