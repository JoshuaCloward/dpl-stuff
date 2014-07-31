module ApplicationHelper

  def show_notice_message
    unless flash.empty?
      [:alert, :plus].each do |key|
        return content_tag(:div, flash[key], class: "flash-#{key}") if flash[key].present?
      end
    end
  end

end
