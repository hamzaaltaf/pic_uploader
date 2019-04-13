class PicturesController < ApplicationController
    before_action :set_picture, only: [:destroy, :show]


    def index
        @pictures = Picture.all
        return render_success({questions: @pictures})
    end

    def show
        return render_success({question: @picture})
    end

    def create
        @picture = Picture.new(picture_params)
        if @picture.valid?
            @picture.save
            return render_success({question: @picture})
        else
            return render_failure(@picture.errors)
        end
    end

    def destroy
        if @picture.destroy
            return render_success({})
        else
            return render_failure(["Could not delete the picture"])
        end
    end

    private

    def set_picture
        @picture = Picture.find(params[:id])
    end

    def picture_params
        params.require(:picture).permit(:question, :option1, :option2, :option3, :option4, :option5, :url)
    end

end
