json.array!(@projects) do |project|
  json.extract! project, :id, :student_id, :project_name, :project_year, :project_hours
  json.url project_url(project, format: :json)
end
