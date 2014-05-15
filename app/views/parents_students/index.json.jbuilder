json.array!(@parents_students) do |parents_student|
  json.extract! parents_student, :id, :parent_id, :student_id
  json.url parents_student_url(parents_student, format: :json)
end
