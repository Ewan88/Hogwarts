
get '/students' do
  @students = Student.all()
  erb(:"students/index")
end

get '/students/new' do
  @houses = House.all
  erb(:"students/new")
end

post '/students' do
  @student = Student.new(params)
  @student.save()
  redirect('/students')
end
