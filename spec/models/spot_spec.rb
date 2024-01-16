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

    context '喫煙所登録できない場合' do
      it '喫煙所名前がないと投稿できない' do
        @spot.name = ''
        @spot.valid?
        expect(@spot.errors.full_messages).to include("Name can't be blank")
      end
      it 'タバコの種類がないと喫煙所投稿できない' do
        @spot.tobacco_id = ''
        @spot.valid?
        expect(@spot.errors.full_messages).to include("Tobacco can't be blank")
      end
      it '緯度がないと喫煙所投稿ができない' do
        @spot.latitude = ''
        @spot.valid?
        expect(@spot.errors.full_messages).to include("Latitude can't be blank")
      end
      it '軽度がないと喫煙所投稿ができない' do
        @spot.longitude = ''
        @spot.valid?
        expect(@spot.errors.full_messages).to include("Longitude can't be blank")
      end
    end
  end
end
