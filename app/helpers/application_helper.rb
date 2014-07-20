module ApplicationHelper
  def obj_title(obj)
    if obj.respond_to? :title
      obj.title
    elsif obj.respond_to? :job_title
      obj.job_title
    elsif obj.respond_to? :name
      obj.name
    else
      "Objective"
    end
  end

  def create_or_update(obj)
    obj.new_record? ? "Create #{obj.class.name}" : "Update #{obj.class.name}"
  end
end
