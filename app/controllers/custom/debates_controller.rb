require_dependency Rails.root.join("app", "controllers", "debates_controller").to_s

class DebatesController < ApplicationController

  include ImageAttributes
  before_action :load_categories, only: [:index, :new, :create, :edit, :map, :summary]

  def index_customization
    @featured_debates = @debates.featured
    take_only_by_tag_names
  end


  private

    def take_only_by_tag_names
      if params[:tags].present?
        @resources = @resources.tagged_with(params[:tags].split(","), all: true, any: :true)
        @subcategories = @resources.tag_counts.subcategory
      end
    end

    def debate_params
      attributes = [:tag_list, :terms_of_service, image_attributes: image_attributes]
      params.require(:debate).permit(attributes, translation_params(Debate))
    end

end