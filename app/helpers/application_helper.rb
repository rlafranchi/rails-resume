module ApplicationHelper
  def snippet_lang(obj)
    if obj.programming_language.empty? || obj.programming_language == 'autodetect'
      ''
    else
      "class='" + obj.programming_language + "'"
    end
  end
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

  def fix_url(str)
    str.starts_with?('http://') ? str : "http://#{str}"
  end
end
