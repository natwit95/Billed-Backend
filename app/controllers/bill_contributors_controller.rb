class BillContributorsController < ApplicationController
    def index
        bill_contributors = BillContributor.all
        render json: bill_contributors
    end

    def show
        bill_contributor = BillContributor.find(params[:id])
        render json: bill_contributor
    end

    def create
        bill_contributor = BillContributor.create(user_params)
        render json: bill_contributor
    end
    private

    def user_params
        params.require(:bill_contributor).permit(:user_id, :bill_id, :contributed_amount, :paid)
    end

end
