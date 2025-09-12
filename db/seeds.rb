# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

# Usuários de teste
User.create!(name: "Aluno 1", email: "aluno1@example.com", password: "123456", role: "aluno")
User.create!(name: "Aluno 2", email: "aluno2@example.com", password: "123456", role: "aluno")
User.create!(name: "Mentor 1", email: "mentor1@example.com", password: "123456", role: "mentor")
User.create!(name: "Mentor 2", email: "mentor2@example.com", password: "123456", role: "mentor")

# Conexões de mentoria
Mentorship.create!(mentor_id: User.find_by(email: "mentor1@example.com").id, student_id: User.find_by(email: "aluno1@example.com").id)
Mentorship.create!(mentor_id: User.find_by(email: "mentor2@example.com").id, student_id: User.find_by(email: "aluno2@example.com").id)
