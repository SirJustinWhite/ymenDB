module StudentsHelper
  # Returns the Gravatar (http://gravatar.com/) for the given student.
  def gravatar_for(student, options = { size: 500 })
    gravatar_id = Digest::MD5::hexdigest(student.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?size=#{size}"
    image_tag(gravatar_url, alt: student.first_name, class: "gravatar")
  end
end
