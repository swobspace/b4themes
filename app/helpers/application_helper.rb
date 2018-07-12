module ApplicationHelper
  THEME_COLORS=[ 'primary', 'secondary', 'success', 
                 'danger', 'warning', 'info', 'light', 'dark' ]
  def loremipsum(length)
    lore =-<<EOIPSUM
Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.
EOIPSUM
    lore[0..length - 1]
  end

  def all_alerts
    raw(THEME_COLORS.map { |color| alert(color) }.join("\n"))
  end
                
  def alert(color)
    raw("<div class=\"alert alert-#{color}\" role=\"alert\">/#{color}/ #{loremipsum(200)}</div>")
  end

  def all_buttons
    raw(THEME_COLORS.map { |color| button(color) }.join("\n"))
  end

  def button(color)
    raw("<button type='button' class=\"btn btn-#{color} col-sm-3\">#{color}</button>")
  end
end
