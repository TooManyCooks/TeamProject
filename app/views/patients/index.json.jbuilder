json.array!(@patients) do |patient|
  json.extract! patient, :id, :doctor_id, :name, :email, :content
  json.url patient_url(patient, format: :json)
end
