puts "Destroying existing seed data...🗑️"
Teacher.destroy_all
Parent.destroy_all
Student.destroy_all
Assignment.destroy_all


puts "Creating Teacher..."

t1 = Teacher.create(
    title: "", 
    last_name: "", 
    email: "", 
    password: "password",
    grade_level: "", 
    school: "")


puts "Creating Parents..."

p1 = Parent.create(
    first_name: "", 
    last_name: "", 
    email: "")


puts "Creating Students..."

s1 = Student.create(
    first_name: "", 
    last_name: "", 
    email: "",
    school_id: "",
    teacher: t1, 
    parent: p1)


puts "Creating Assignments..."

a1 = Assignment.create(
    subject: "",
    name: "",
    due_date: "",
    content: "",
    grade: "",
    complete: false,
    student: s1,
    teacher: t1)


puts "Seeding complete!🌱"