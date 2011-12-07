FactoryGirl.define do
  factory :user do
    name 'Test User'
    sequence(:email) {|n| "user#{n}@test.com" }
    password 'please'
    password_confirmation 'please'
    # u.after_build { |user| user.confirm! }
    
    factory :donation_manager do
      roles {|roles| [roles.association(:donation_admin)] }
    end
  end
  
  factory :member do
    
  end
end