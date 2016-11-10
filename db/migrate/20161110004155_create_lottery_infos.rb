class CreateLotteryInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :lottery_infos do |t|
      t.references :user, foreign_key: true
      t.string :store
      t.string :lottery_type
      t.date :lottery_date
      t.integer :purchase_cost
      t.string :lottery_number
      t.float :success_chance
      t.float :winning_amount

      t.timestamps
    end
  end
end
