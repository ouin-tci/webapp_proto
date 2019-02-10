json.extract! registration, :id, :email, :token, :expired_date, :operator_confirmed, :vaild, :customer_type, :email_send_at, :create_by, :updated_by, :created_at, :updated_at
json.url registration_url(registration, format: :json)
