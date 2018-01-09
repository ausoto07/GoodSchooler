class ChangeEmailNotNullOnUser < ActiveRecord::Migration[5.1]
  def up
    User.where(email: nil).each do |u|
      u.email = "#{u.name}#{u.id}@noemail.co"
      u.save
    end
    change_column :users, :email, :string, null: false
  end
  def down
    change_column :users, :email, :string, null: true
  end
end
