class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name, null: false
      t.string :subdomain, null: false
      t.string :domain, null: false
      t.integer :user_count, null:false, default: 0
      t.integer :theme_id

      t.timestamps
    end
  end
end
