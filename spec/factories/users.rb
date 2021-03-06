FactoryGirl.define do
  sequence :email do |n|
    "test#{n}@example.com"
  end
  
  factory :user do
    first_name "Testy"
    last_name "McTest"
    email { generate :email }
    password "testing"
    password_confirmation "testing"
  end
  

  factory :admin_user, class: "AdminUser" do
    first_name "Admin"
    last_name "User"
    email { generate :email }
    password "testing"
    password_confirmation "testing"
  end
end