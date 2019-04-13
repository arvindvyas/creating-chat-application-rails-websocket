FactoryBot.define do
  factory :user do
    username {'arvindvyas'}
    email { 'test@gmail.com' }
    password { "password"} 
    password_confirmation { "password" }
  end
end