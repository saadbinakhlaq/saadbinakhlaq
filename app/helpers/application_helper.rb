module ApplicationHelper
  def controller_and_action_as_html_class_names
    "controller-#{params[:controller]} action-#{params[:action]}"
  end
end
