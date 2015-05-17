json.array!(@m_lmodels) do |m_lmodel|
  json.extract! m_lmodel, :id
  json.url m_lmodel_url(m_lmodel, format: :json)
end
