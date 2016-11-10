json.extract! lottery_info, :id, :user_id, :store, :lottery_type, :lottery_date, :purchase_cost, :lottery_number, :created_at, :updated_at
json.url lottery_info_url(lottery_info, format: :json)