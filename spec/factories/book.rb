FactoryBot.define do
    factory :book do 
        title {FFaker::Lorem.word}
        description {FFaker::Lorem.paragraph}
    end
end