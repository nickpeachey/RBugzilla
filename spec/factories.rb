FactoryGirl.define do
  factory :sprint do
    description "description"
    title "title"
    completed true
  end
  
  factory :story do
    description "description"
    name "name"
    completed true
    sprint
    total_effort 44
  end
end


