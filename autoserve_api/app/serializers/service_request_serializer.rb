class ServiceRequestSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :appointment_date, :status, :vehicle_id, :customer_id

end
