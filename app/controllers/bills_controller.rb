class BillsController < ApplicationController
    def index
        bills = Bill.all
        render json: bills
    end

    def show
        bill = Bill.find(params[:id])
        render json: bill
    end

    def create
        bill = Bill.create({amount: bill_params[:amount], user_id: bill_params[:user_id], description: bill_params[:description], due_date: bill_params[:due_date]})
        # bill_contributors = BillContributor.create({bill_id: bill.id, user_id: params[:bill_contributors][0].id, "contributed_amount": 0, "paid": false  })
        split = bill_params[:amount].to_f / bill_params[:bill_contributors].length
        bill_params['bill_contributors'].each{|bc| BillContributor.create({bill_id: bill.id, user_id: bc["id"], contributed_amount: split, paid: false })}
        render json: bill
        
    end

    private

    def bill_params
        params.require(:bill).permit(:amount, :user_id, :description, :due_date, bill_contributors: [:bill_id, :id ,:name,:username ,:email])
        
    end
    
end
