json.extract! userworkout, :id, :exercise, :User_id, :created_at, :updated_at
json.url userworkout_url(userworkout, format: :json)
