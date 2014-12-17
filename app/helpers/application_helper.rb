module ApplicationHelper

  def link_to_nav(title,path,class_string,&black)
    link_to title, path, class: class_string, &black
  end

end
