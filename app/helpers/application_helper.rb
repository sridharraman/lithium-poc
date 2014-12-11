module ApplicationHelper
  def title(value)
    unless value.nil?
      @title = "#{value} | LithiumPoc"      
    end
  end
end
