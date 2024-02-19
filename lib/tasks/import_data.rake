file_path = Rails.root.join('app', 'assets', 'data.json')
if File.exist?(file_path)
  file = File.read(file_path)
  data = JSON.parse(file)

  data.each do |person_data|
    person = Person.create!(name: person_data['name'], email: person_data['email'])
    person_data['details'].each do |detail_data|
      person.details.create!(content: detail_data['content'])
    end
  end
else
  puts "Error: data.json file not found in #{file_path}"
end
