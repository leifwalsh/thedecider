module IndexHelper
  def add_item_link(name)
    link_to_function name do |page|
      page.insert_html :bottom, 'items', :partial => 'item', :locals => { :id => rand }
    end
  end
end
