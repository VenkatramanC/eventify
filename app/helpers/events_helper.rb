module EventsHelper
  def event_time_tag(event)
    if @event.start_time.to_date == @event.end_time.to_date 
      content_tag(:div, class: "common_date") do
        content_tag(:h3, event.start_time.strftime("%b %-d, %Y")) +
          content_tag(:p, "#{event.start_time.strftime("%l:%M %P")} to #{event.end_time.strftime("%l:%M %P")}")
      end
    else 
      content_tag(:h3, class: "diff_date") do 
        content_tag(:p , event.start_time.strftime("%b %-d, %Y %l:%M %P") )+
          content_tag(:p, "to") +
            content_tag(:p, event.end_time.strftime("%b %-d, %Y %l:%M %P"))
      end  
    end 
  end
end
