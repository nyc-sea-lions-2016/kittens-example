module ApplicationHelper

  def pretty_date(model_object)
    model_object.created_at.strftime('%E %m ')
  end

end
