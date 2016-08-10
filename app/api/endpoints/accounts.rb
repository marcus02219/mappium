module Endpoints
  class Accounts < Grape::API

    resource :accounts do

      # Accounts API test
      # /api/v1/accounts/ping
      # results  'gwangming'
      get :ping do
        { :ping => 'gwangming' }
      end

      # Set device token
      # POST: /api/v1/accounts/set_device
      #   Parameters accepted
      #     token         String *
      #     device_token  String *
      #   Results
      #     {status: 1, data: set device_token}
      post :set_device do
        user = User.find_by_token params[:token]
        if user.present?
          user.update(device_token: params[:device_token])
          {status: 1, data: "Set device_token"}
        else
          {status: 0, data: "Please sign in"}
        end
      end

      # Set Favourite
      # POST: /api/v1/accounts/set_favourite
      #   Parameters accepted
      #     token         String *
      #     tip_id        String *
      #     favourite     Boolean *
      #   Results
      #     {status: 1, data: set favourite}
      post :set_favourite do
        user = User.find_by_token params[:token]
        if user.present?
          Favourite.create(user:user, tip_id: params[:tip_id], favourite: params[:favourite])
          {status: 1, data: "Set favourite"}
        else
          {status: 0, data: "Please sign in"}
        end
      end

      # Set read flag to tip
      # POST: /api/v1/accounts/set_read
      #   Parameters accepted
      #     token         String *
      #     tip_id        String *
      #   Results
      #     {status: 1, data: set read flag}
      post :set_read do
        user = User.find_by_token params[:token]
        if user.present?
          State.create(user:user, tip_id: params[:tip_id], read: true)
          {status: 1, data: "Set read flag"}
        else
          {status: 0, data: "Please sign in"}
        end
      end

      # Set purchased pack
      # POST: /api/v1/accounts/set_purchase
      #   Parameters accepted
      #     token         String *
      #     pack_id        String *
      #   Results
      #     {status: 1, data: set purchased pack}
      post :set_purchage do
        user = User.find_by_token params[:token]
        if user.present?
          UserPack.create(user:user, pack_id: params[:pack_id])
          {status: 1, data: "Set purchased pack"}
        else
          {status: 0, data: "Please sign in"}
        end
      end



    end
  end
end
