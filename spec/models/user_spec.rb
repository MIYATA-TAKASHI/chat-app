require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
    @room = FactoryBot.build(:room) # この行を追加しました
  end

  describe 'ユーザー新規登録' do
    context '新規登録できる場合' do
      # 中略
    end

    context '新規登録できない場合' do
      # 中略

      it 'passwordが5文字以下では登録できない' do
        # テスト内容
      end

      it 'passwordが129文字以上では登録できない' do
        # テスト内容
      end

      it 'passwordとpassword_confirmationが不一致では登録できない' do
        # テスト内容
      end

      it '重複したemailが存在する場合は登録できない' do
        # テスト内容
      end

      it 'emailは@を含まないと登録できない' do
        # テスト内容
      end

      describe 'チャットルーム作成' do
        context '新規作成できる場合' do
          it "nameの値が存在すれば作成できる" do
            expect(@room).to be_valid
          end
        end

        context '新規作成できない場合' do
          it "nameが空では作成できない" do
            @room.name = ''
            @room.valid?
            expect(@room.errors.full_messages).to include("Name can't be blank")
          end
        end
      end
    end
  end
end
