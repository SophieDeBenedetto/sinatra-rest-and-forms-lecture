class CreateTweetsTable < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :message
    end
  end
end