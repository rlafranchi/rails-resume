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

  def create_or_update(obj)
    obj.new_record? ? "Create #{obj.class.name}" : "Update #{obj.class.name}"
  end
end
