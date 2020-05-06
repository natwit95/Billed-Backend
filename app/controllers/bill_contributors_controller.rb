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
        bill_contributor = BillContributor.create(bill_contributor_params)
        render json: bill_contributor
    end

    def update
        
        bill_contributor = BillContributor.find(params[:id])
    
        bill_contributor.update(bill_contributor_params)
       
        render json: bill_contributor
    end
    # {amount: bill_contributor_params[:contributed_amount], user_id: bill_contributor_params[:user_id], description: bill_contributor_params[:description], paid: bill_contributor_params[:paid]}
  
    def destroy 
        bill_contributor = BillContributor.find(params[:id])
        bill_contributor.destroy 
        bill_contributors = BillContributor.all 
        render json: {status: 'deleted'} 
    end
   

    private

    def bill_contributor_params
        params.require(:bill_contributor).permit(:id,:contributed_amount,:paid, :user_id, :bill_id, :created_at, :updated_at)
    end

end
