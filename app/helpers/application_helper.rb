module ApplicationHelper
  
  # Return a title on  per-page basis
  def title
    base_title = "Pay4Grades"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  
end
