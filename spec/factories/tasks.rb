FactoryBot.define do
  factory :task, class Task do
    item "MyTask"
    completed false
    item "MyTask1"
    completed true
  end
end
