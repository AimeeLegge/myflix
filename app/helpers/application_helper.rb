module ApplicationHelper
  def display_rating(video)
    rating = video.average_rating
    if rating == 0.0
      "Rating: Currently there are no reviews for this video"
    else
      "Rating: #{rating}/5.0"
    end
  end

  def rating_select_options
    (1..5).to_a.reverse.map {|e| ["#{e} #{'Star'.pluralize(e)}",e]}
  end
end
