class AddNameRgCpfToDrivers < ActiveRecord::Migration[5.0]
  def change
    add_column :drivers, :name, :string
    add_column :drivers, :rg, :string
    add_column :drivers, :cpf, :string
  end
end
