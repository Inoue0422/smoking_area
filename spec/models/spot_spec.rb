require 'rails_helper'

RSpec.describe Spot, type: :model do
  before do
    @spot = FactoryBot.build(:spot)
  end

  describe '喫煙所新規登録' do
    context '喫煙所新規登路できる場合' do
      it '喫煙所名前とタバコの種類と囲いと屋根と椅子と緯度と経度が存在すれば登録できる' do
        expect(@spot).to be_valid
      end
      it '囲いと屋根と椅子がなくても登録できる' do
        @spot.fence = ''
        @spot.roof = ''
        @spot.chair = ''
        expect(@spot).to be_valid
      end
    end
  end
end