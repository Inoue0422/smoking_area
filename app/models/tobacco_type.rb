class TobaccoType < ActiveHash::Base
  self.data = [
    { id: 1, name: '紙巻きタバコのみ' },
    { id: 2, name: '加熱式タバコのみ' },
    { id: 3, name: '紙巻きタバコ、加熱式タバコ両方可' }
  ]

  include ActiveHash::Associations
  has_many :spots
end
