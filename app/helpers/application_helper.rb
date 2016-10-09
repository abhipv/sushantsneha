module ApplicationHelper
  def audio_path(source, options = {})
    path_to_asset(source, {type: :audio}.merge!(options))
  end

  def image_path_custom(source)
    image_src = "preview/#{source}.png"
    path_to_asset(image_src)
  end
end
