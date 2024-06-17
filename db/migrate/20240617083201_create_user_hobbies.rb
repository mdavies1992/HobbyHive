class CreateUserHobbies < ActiveRecord::Migration[7.1]
  def change
    create_table :user_hobbies do |t|
      t.references :user
      t.references :hobby
      t.timestamps
    end
  end
end
