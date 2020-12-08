module OEmbed
  class Providers
    # Provider for instagram.com
    # See https://developers.facebook.com/docs/instagram/oembed/
    Instagram = OEmbed::Provider.new(
      "https://graph.facebook.com/v8.0/instagram_oembed",
      required_query_params: { access_token: 'OEMBED_FACEBOOK_TOKEN' },
      format: :json
    )
    Instagram << "http://instagr.am/p/*"
    Instagram << "http://instagram.com/p/*"
    Instagram << "http://www.instagram.com/p/*"
    Instagram << "https://instagr.am/p/*"
    Instagram << "https://instagram.com/p/*"
    Instagram << "https://www.instagram.com/p/*"
    Instagram << "http://instagr.am/tv/*"
    Instagram << "http://instagram.com/tv/*"
    Instagram << "http://www.instagram.com/tv/*"
    Instagram << "https://instagr.am/tv/*"
    Instagram << "https://instagram.com/tv/*"
    Instagram << "https://www.instagram.com/tv/*"

    # Respond to the `new` method to maintain backwards compatibility with v0.14.0
    # See also:
    # * https://github.com/ruby-oembed/ruby-oembed/pull/75
    # * https://github.com/ruby-oembed/ruby-oembed/issues/77#issuecomment-727024682
    # @deprecated *Note*: This method will be be removed in the future.
    def Instagram.new(access_token:)
      self.access_token = access_token
      self
    end
  end
end
