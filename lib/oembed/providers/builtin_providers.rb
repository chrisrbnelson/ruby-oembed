# This file is used to load all built-in providers.
# In the short term most of them are specified in this file
# though we've _started_ moving provider definitions into their own files!

require 'oembed/providers/facebook_post'
require 'oembed/providers/facebook_video'
require 'oembed/providers/instagram'
require 'oembed/providers/tiktok'

module OEmbed
  class Providers
    # Provider for youtube.com
    # http://apiblog.youtube.com/2009/10/oembed-support.html
    #
    # Options:
    # * To get the iframe embed code
    #     OEmbed::Providers::Youtube.endpoint += "?iframe=1"
    # * To get the flash/object embed code
    #     OEmbed::Providers::Youtube.endpoint += "?iframe=0"
    # * To require https embed code
    #     OEmbed::Providers::Youtube.endpoint += "?scheme=https"
    Youtube = OEmbed::Provider.new("https://www.youtube.com/oembed/?scheme=https")
    Youtube << "http://*.youtube.com/*"
    Youtube << "https://*.youtube.com/*"
    Youtube << "http://*.youtu.be/*"
    Youtube << "https://*.youtu.be/*"
    add_official_provider(Youtube)

    # Provider for codepen.io
    CodePen = OEmbed::Provider.new("https://codepen.io/api/oembed")
    CodePen << "http://codepen.io/*"
    CodePen << "https://codepen.io/*"
    add_official_provider(CodePen)

    # Provider for flickr.com
    Flickr = OEmbed::Provider.new("https://www.flickr.com/services/oembed/")
    Flickr << "http://*.flickr.com/*"
    Flickr << "https://*.flickr.com/*"
    Flickr << "http://flic.kr/*"
    Flickr << "https://flic.kr/*"
    add_official_provider(Flickr)

    # Provider for viddler.com
    # http://developers.viddler.com/documentation/services/oembed/
    Viddler = OEmbed::Provider.new("http://lab.viddler.com/services/oembed/")
    Viddler << "http://*.viddler.com/*"
    add_official_provider(Viddler)

    # Provider for qik.com
    # http://qik.com/blog/qik-embraces-oembed-for-embedding-videos/
    Qik = OEmbed::Provider.new("http://qik.com/api/oembed.{format}")
    Qik << "http://qik.com/*"
    Qik << "http://qik.com/video/*"
    add_official_provider(Qik)

    # Provider for revision3.com
    Revision3 = OEmbed::Provider.new("http://revision3.com/api/oembed/")
    Revision3 << "http://*.revision3.com/*"
    add_official_provider(Revision3)

    # Provider for hulu.com
    Hulu = OEmbed::Provider.new("https://www.hulu.com/api/oembed.{format}")
    Hulu << "http://www.hulu.com/watch/*"
    Hulu << "https://www.hulu.com/watch/*"
    add_official_provider(Hulu)

    # Provider for vimeo.com
    # https://developer.vimeo.com/apis/oembed
    Vimeo = OEmbed::Provider.new("https://vimeo.com/api/oembed.{format}")
    Vimeo << "http://*.vimeo.com/*"
    Vimeo << "https://*.vimeo.com/*"
    add_official_provider(Vimeo)

    # Provider for twitter.com
    # https://dev.twitter.com/rest/reference/get/statuses/oembed
    Twitter = OEmbed::Provider.new("https://publish.twitter.com/oembed", format: :json)
    Twitter << "https://*.twitter.com/*/status/*"
    add_official_provider(Twitter)

    # Provider for vine.co
    # https://dev.twitter.com/web/vine/oembed
    Vine = OEmbed::Provider.new("https://vine.co/oembed.{format}")
    Vine << "http://*.vine.co/v/*"
    Vine << "https://*.vine.co/v/*"
    add_official_provider(Vine)

    # Provider for slideshare.net
    # http://www.slideshare.net/developers/oembed
    Slideshare = OEmbed::Provider.new("https://www.slideshare.net/api/oembed/2")
    Slideshare << 'http://*.slideshare.net/*/*'
    Slideshare << 'https://*.slideshare.net/*/*'
    Slideshare << 'http://*.slideshare.net/mobile/*/*'
    Slideshare << 'https://*.slideshare.net/mobile/*/*'
    add_official_provider(Slideshare)

    # Provider for yfrog
    # http://code.google.com/p/imageshackapi/wiki/OEMBEDSupport
    Yfrog = OEmbed::Provider.new("https://www.yfrog.com/api/oembed", format: :json)
    Yfrog << "http://yfrog.com/*"
    add_official_provider(Yfrog)

    # Provider for Giphy
    Giphy = OEmbed::Provider.new("http://giphy.com/services/oembed")
    Giphy << "http://giphy.com/*"
    Giphy << "https://giphy.com/*"
    add_official_provider(Giphy)

    # Provider for imgur.com
    Imgur = OEmbed::Provider.new("https://api.imgur.com/oembed.{format}")
    Imgur << "https://*.imgur.com/gallery/*"
    Imgur << "http://*.imgur.com/gallery/*"
    add_official_provider(Imgur)

    # Provider for Kickstarter
    Kickstarter = OEmbed::Provider.new("https://www.kickstarter.com/services/oembed")
    Kickstarter << "http://www.kickstarter.com/projects/*"
    Kickstarter << "https://www.kickstarter.com/projects/*"
    add_official_provider(Kickstarter)

    # provider for mlg-tv
    # http://tv.majorleaguegaming.com/oembed
    MlgTv = OEmbed::Provider.new("http://tv.majorleaguegaming.com/oembed")
    MlgTv << "http://tv.majorleaguegaming.com/video/*"
    MlgTv << "http://mlg.tv/video/*"
    add_official_provider(MlgTv)

    # pownce.com closed in 2008
    #Pownce = OEmbed::Provider.new("http://api.pownce.com/2.1/oembed.{format}")
    #Pownce << "http://*.pownce.com/*"
    #add_official_provider(Pownce)

    # Provider for polleverywhere.com
    PollEverywhere = OEmbed::Provider.new("http://www.polleverywhere.com/services/oembed/")
    PollEverywhere << "http://www.polleverywhere.com/polls/*"
    PollEverywhere << "http://www.polleverywhere.com/multiple_choice_polls/*"
    PollEverywhere << "http://www.polleverywhere.com/free_text_polls/*"
    add_official_provider(PollEverywhere)

    # Provider for my.opera.com
    # http://my.opera.com/devblog/blog/2008/12/02/embedding-my-opera-content-oembed
    MyOpera = OEmbed::Provider.new("http://my.opera.com/service/oembed", format: :json)
    MyOpera << "http://my.opera.com/*"
    add_official_provider(MyOpera)

    # Provider for clearspring.com
    ClearspringWidgets = OEmbed::Provider.new("http://widgets.clearspring.com/widget/v1/oembed/")
    ClearspringWidgets << "http://www.clearspring.com/widgets/*"
    add_official_provider(ClearspringWidgets)

    # Provider for nfb.ca
    NFBCanada = OEmbed::Provider.new("http://www.nfb.ca/remote/services/oembed/")
    NFBCanada << "http://*.nfb.ca/film/*"
    add_official_provider(NFBCanada)

    # Provider for scribd.com
    Scribd = OEmbed::Provider.new("https://www.scribd.com/services/oembed")
    Scribd << "http://*.scribd.com/*"
    add_official_provider(Scribd)

    # Provider for speakerdeck.com
    # https://speakerdeck.com/faq#oembed
    SpeakerDeck = OEmbed::Provider.new("https://speakerdeck.com/oembed.json")
    SpeakerDeck << "http://speakerdeck.com/*/*"
    SpeakerDeck << "https://speakerdeck.com/*/*"
    add_official_provider(SpeakerDeck)

    # Provider for movieclips.com
    MovieClips = OEmbed::Provider.new("http://movieclips.com/services/oembed/")
    MovieClips << "http://movieclips.com/watch/*/*/"
    add_official_provider(MovieClips)

    # Provider for 23hq.com
    TwentyThree = OEmbed::Provider.new("http://www.23hq.com/23/oembed")
    TwentyThree << "http://www.23hq.com/*"
    add_official_provider(TwentyThree)

    # Provider for soundcloud.com
    # http://developers.soundcloud.com/docs/oembed
    SoundCloud = OEmbed::Provider.new("https://soundcloud.com/oembed", format: :json)
    SoundCloud << "http://*.soundcloud.com/*"
    SoundCloud << "https://*.soundcloud.com/*"
    add_official_provider(SoundCloud)

    # Provider for spotify.com
    # https://twitter.com/nicklas2k/status/330094611202723840
    # http://blog.embed.ly/post/45149936446/oembed-for-spotify
    Spotify = OEmbed::Provider.new("https://embed.spotify.com/oembed/")
    Spotify << "http://open.spotify.com/*"
    Spotify << "https://open.spotify.com/*"
    Spotify << "http://play.spotify.com/*"
    Spotify << "https://play.spotify.com/*"
    Spotify << /^spotify\:(.*?)/
    add_official_provider(Spotify)

    # Provider for skitch.com
    # http://skitch.com/oembed/%3C/endpoint
    Skitch = OEmbed::Provider.new("http://skitch.com/oembed")
    Skitch << "http://*.skitch.com/*"
    Skitch << "https://*.skitch.com/*"
    add_official_provider(Skitch)

    # Provider for TED
    Ted = OEmbed::Provider.new("https://www.ted.com/talks/oembed.{format}")
    Ted << "http://*.ted.com/talks/*"
    Ted << "https://*.ted.com/talks/*"
    add_official_provider(Ted)

    # Provider for TikTok
    # See https://developers.tiktok.com/doc/embed-videos
    TikTok = OEmbed::Provider.new("https://www.tiktok.com/oembed", format: :json)
    TikTok << "https://www.tiktok.com/*/video/*"

    # Provider for tumblr.com
    Tumblr = OEmbed::Provider.new("http://www.tumblr.com/oembed/1.0/", format: :json)
    Tumblr << "http://*.tumblr.com/post/*"
    Tumblr << "https://*.tumblr.com/post/*"
    add_official_provider(Tumblr)

    ## Provider for clikthrough.com
    # http://corporate.clikthrough.com/wp/?p=275
    #Clickthrough = OEmbed::Provider.new("http://www.clikthrough.com/services/oembed/")
    #Clickthrough << "http://*.clikthrough.com/theater/video/*"
    #add_official_provider(Clickthrough)

    ## Provider for kinomap.com
    # http://www.kinomap.com/#!oEmbed
    #Kinomap = OEmbed::Provider.new("http://www.kinomap.com/oembed")
    #Kinomap << "http://www.kinomap.com/*"
    #add_official_provider(Kinomap)

    # Provider for oohembed.com, which is a provider aggregator. See
    # OEmbed::Providers::OohEmbed.urls for a full list of supported url schemas.
    # Embed.ly has taken over the oohembed.com domain and as of July 20 all oohEmbed
    # request will require you use an API key. For details on the transition see
    # http://blog.embed.ly/oohembed
    OohEmbed = OEmbed::Provider.new("http://oohembed.com/oohembed/", format: :json)
    OohEmbed << "http://*.5min.com/Video/*" # micro-video host
    OohEmbed << %r{http://(.*?).amazon.(com|co.uk|de|ca|jp)/(.*?)/(gp/product|o/ASIN|obidos/ASIN|dp)/(.*?)} # Online product shopping
    OohEmbed << "http://*.blip.tv/*"
    OohEmbed << "http://*.clikthrough.com/theater/video/*"
    OohEmbed << "http://*.collegehumor.com/video:*" # Comedic & original videos
    OohEmbed << "http://*.thedailyshow.com/video/*" # Syndicated show
    OohEmbed << "http://*.dailymotion.com/*"
    OohEmbed << "http://dotsub.com/view/*"
    OohEmbed << "http://*.flickr.com/photos/*"
    OohEmbed << "http://*.funnyordie.com/videos/*" # Comedy video host
    OohEmbed << "http://video.google.com/videoplay?*" # Video hosting
    OohEmbed << "http://www.hulu.com/watch/*"
    OohEmbed << "http://*.kinomap.com/*"
    OohEmbed << "http://*.livejournal.com/"
    OohEmbed << "http://*.metacafe.com/watch/*" # Video host
    OohEmbed << "http://*.nfb.ca/film/*"
    OohEmbed << "http://*.photobucket.com/albums/*"
    OohEmbed << "http://*.photobucket.com/groups/*"
    OohEmbed << "http://*.phodroid.com/*/*/*" # Photo host
    OohEmbed << "http://qik.com/*"
    OohEmbed << "http://*.revision3.com/*"
    OohEmbed << "http://*.scribd.com/*"
    OohEmbed << "http://*.slideshare.net/*" # Share presentations online
    OohEmbed << "http://*.twitpic.com/*" # Picture hosting for Twitter
    OohEmbed << "http://twitter.com/*/statuses/*" # Mirco-blogging network
    OohEmbed << "http://*.viddler.com/explore/*"
    OohEmbed << "http://www.vimeo.com/*"
    OohEmbed << "http://www.vimeo.com/groups/*/videos/*"
    OohEmbed << "http://*.wikipedia.org/wiki/*" # Online encyclopedia
    OohEmbed << "http://*.wordpress.com/*/*/*/*" # Blogging Engine & community
    OohEmbed << "http://*.xkcd.com/*" # A hilarious stick figure comic
    OohEmbed << %r{http://yfrog.(com|ru|com.tr|it|fr|co.il|co.uk|com.pl|pl|eu|us)/(.*?)} # image & video hosting
    OohEmbed << "http://*.youtube.com/watch*"

    # Provider for noembed.com, which is a provider aggregator. See
    # OEmbed::Providers::Noembed.urls for a full list of supported url schemas.
    # https://noembed.com/#supported-sites
    Noembed = OEmbed::Provider.new("https://noembed.com/embed")
    # Add all known URL regexps for Noembed.
    # To update this list run `rake oembed:update_noembed`
    YAML.load_file(File.join(File.dirname(__FILE__), "/aggregators/noembed_urls.yml")).each do |url|
      Noembed << Regexp.new(url)
    end
    add_official_provider(Noembed, :aggregators)

    # Provider for Embedly.com, which is a provider aggregator. See
    # OEmbed::Providers::Embedly.urls for a full list of supported url schemas.
    # http://embed.ly/docs/endpoints/1/oembed
    #
    # You can append your Embed.ly API key to the provider so that all requests are signed
    #     OEmbed::Providers::Embedly.endpoint += "?key=#{my_embedly_key}"
    #
    # If you don't yet have an API key you'll need to sign up here: http://embed.ly/pricing
    Embedly = OEmbed::Provider.new("http://api.embed.ly/1/oembed")
    # Add all known URL regexps for Embedly. To update this list run `rake oembed:update_embedly`
    YAML.load_file(File.join(File.dirname(__FILE__), "/aggregators/embedly_urls.yml")).each do |url|
      Embedly << url
    end
    add_official_provider(Embedly, :aggregators)
  end
end
