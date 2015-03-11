module ApplicationHelper
  def tick_mark(positive)
    klass = positive ? 'glyphicon-ok' : 'glyphicon-remove'
    "<span class='glyphicon #{klass}'/>".html_safe
  end
end
