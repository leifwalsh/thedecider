class IndexController < ApplicationController
  def index
    @browser_title = 'The Decider'
    if params.include? :list
      @items = params[:list].reject { |item| item.empty? }
      @selection = @items.rand
    end
    respond_to do |format|
      format.html { render :action => "index" }
    end
  end
end
