class AddPhonesKindsWebsitesToCompany < ActiveRecord::Migration[5.0]
  def change
    add_column :companies, :phones, :string
    add_column :companies, :website, :string
    add_column :companies, :kind, :integer
  end
end
