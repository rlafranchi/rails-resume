module ApplicationHelper
  def element_description(obj)
    if obj.title
      obj.title
    elsif obj.job_title
      obj.job_title
    elsif obj.name
      obj.name
    else
      "Objective"
    end
  end
end
