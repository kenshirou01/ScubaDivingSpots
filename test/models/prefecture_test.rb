require "test_helper"

class PrefectureTest < ActiveSupport::TestCase
  # バリデーションのテスト
  test "should be valid with a name" do
    prefecture = Prefecture.new(name: "北海道")
    assert prefecture.valid?
  end

  test "should be invalid without a name" do
    prefecture = Prefecture.new(name: nil)
    assert_not prefecture.valid?
  end

  # 関連性のテスト
  test "should have many spots" do
    # テストデータ作成
    prefecture = Prefecture.create!(name: "北海道")

    # Spotモデルに必要な属性を設定
    spot1 = prefecture.spots.create!(name: "スポット1", address: "住所1", description: "説明1")
    spot2 = prefecture.spots.create!(name: "スポット2", address: "住所2", description: "説明2")

    assert_equal 2, prefecture.spots.count
    assert_includes prefecture.spots, spot1
    assert_includes prefecture.spots, spot2
  end
end
