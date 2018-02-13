class CreateMoussaillons < ActiveRecord::Migration[5.1]
  def change
    create_table :moussaillons do |t|
      t.string :email
      t.string :password
      t.string :username

      t.timestamps
    end
  end
end
