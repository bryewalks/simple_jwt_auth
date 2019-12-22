class CreateSimpleJwtAuthUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :simple_jwt_auth_users do |t|
      t.string :name
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
