json.array! @students do |student|
	json.id @student.id
	json.first_name @student.first_name
	json.last_name @student.last_name
	json.phone_number @student.phone_number
	json.bio @student.bio
	json.linkedin_url @student.linkedin_url
	json.twitter @student.twitter
	json.site_url @student.site_url
	json.resume_url @student.resume_url
	json.github_url @student.github_url
	json.photo @student.photo
end