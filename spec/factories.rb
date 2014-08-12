
FactoryGirl.define do
  factory :item, class: Waste::Item do
    name "paper"
  end
  factory :type, class: Waste::Type do
    name "food"
  end
  factory :collection, class: Waste::Collection do
    name "recycling"
  end
  factory :container, class: Waste::Container do
    name "wheelie bin"
  end
end
