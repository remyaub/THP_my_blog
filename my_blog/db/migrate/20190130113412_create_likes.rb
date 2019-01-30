class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.belongs_to :article, :user, index: true
      t.timestamps
    end
  end
end
