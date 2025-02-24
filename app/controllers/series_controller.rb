class SeriesController < InheritedResources::Base

  private

    def serie_params
      params.require(:serie).permit(:id_serie, :name_pt, :original_name, :country, :popularity, :average_voting, :synopsis, :url_photo)
    end

end
