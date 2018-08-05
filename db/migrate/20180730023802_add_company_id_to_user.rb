class AddCompanyIdToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :company_id, :integer , null: false
    add_index :users, :company_id

  end
end
