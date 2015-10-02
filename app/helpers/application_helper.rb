module ApplicationHelper
  def to_flash(messages, color)
    @color = color
    return messages unless messages.is_a? Array
    messages.join('<br>')
  end

  def flash_class(name)
    case name
      when 'notice'
        'green'
      when 'warning'
        'orange'
      when 'info'
        'blue'
      else
        'red'
    end
  end
end
