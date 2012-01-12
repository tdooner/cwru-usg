class Breadcrumbs::Render::Usg < Breadcrumbs::Render::Base
  def render
    str = ""
    length = breadcrumbs.items.length
    breadcrumbs.items.each_with_index do |item, i| 
      str << render_item(item, i, length)
    end
    return "<ul class='breadcrumb'>#{str}</ul>"
  end

  def render_item(item, i, length)
    arrow = "<span class='divider'>\u2192</span>" unless i == (length-1)
    arrow ||= ""
    if item[1] != nil
      return "<li><a href='#{item[1]}'>#{item[0]}</a>#{arrow}</li>"
    else
      return "<li>#{item[0]}</li>"
    end
  end
end

