class CreateAccounts < ActiveRecord::Migration
  def self.up
    create_table :accounts do |t|
      t.string :full_name
      t.integer :supplier_id

      t.timestamps
    end

    add_foreign_key(:accounts, :suppliers, :column => "supplier_id", :name => "accounts_suppliers_fk")
  end

  def self.down
    drop_table :accounts
  end
end
