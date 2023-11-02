class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :designation
      t.references :user, null: false, foreign_key: true
      t.bigint :manager_id

      t.timestamps
    end

    add_foreign_key :employees, :employees, column: :manager_id
  end
end
