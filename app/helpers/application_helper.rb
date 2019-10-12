module ApplicationHelper
  def login_helper style
    if current_user.instance_of?(User)
      link_to "logout", destroy_user_session_path, method: :delete, class: style
    else
      (link_to "Registration", new_user_registration_path, class: style) +
      " ".html_safe +
      (link_to "Login", new_user_session_path, class: style )
    end
  end
  def source_helper(layout_name)
    if session[:source]
      greeting = "Thanks for visiting me from #{session[:source]} and you are on the #{layout_name} template."
      content_tag(:p, greeting, class: "source-greeting")
    end
  end
end
