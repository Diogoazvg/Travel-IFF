class AddDadosCadastraisToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string
    add_column :users, :phone, :string
    add_column :users, :rg, :string
    add_column :users, :cpf, :string
    add_column :users, :birthday, :date
  end
end
