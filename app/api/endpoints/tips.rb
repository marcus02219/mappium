module Endpoints
  class Tips < Grape::API

    resource :tips do

      # Tips API test
      # /api/v1/tips/ping
      # results  'tips endpoints'
      get :ping do
        { :ping => 'tips endpoints' }
      end

      # Get all tips
      # GET: /api/v1/tips
      #   Parameters accepted
      #     token         String *
      #     category      String
      #     favourite     String
      #     unread        String
      #     purchased     Boolean (true:purchased, false: unpurchased)

      #   Results
      #     {status: 1, data: {client data}}
      get do
        user = User.find_by_token params[:token]
        if user.present?
          category  = params[:category]
          favourite = params[:favourite]
          unread    = params[:unread]
          purchased = params[:purchased]
          tips = Tip.all.map{|t| t.info_by_json}
          if category.present?
            category = Category.find(category)
            tips = category.tips.map{|t| t.info_by_json}
          elsif favourite.present?
            tips = user.favourites.map{|f| f.tip_by_json}
          elsif unread.present?
            tips = user.unread_tips.map{|u| u.tip_by_json}
          elsif !!purchased == true
            
          elsif !!purchased == false
          end
          {status: 1, data: tips}
        else
          {status: 0, data: "Please sign in"}
        end
      end

      # Get all categories
      # GET: /api/v1/tips/categories
      #   Parameters accepted
      #     token         String *
      #   Results
      #     {status: 1, data: {id:category.id, name:category.name}}
      get :categories do
        user = User.find_by_token params[:token]
        if user.present?
          {status: 1, data: Category.all.map{|c| c.info_by_json}}
        else
          {status: 0, data: "Please sign in"}
        end
      end

    end
  end
end
