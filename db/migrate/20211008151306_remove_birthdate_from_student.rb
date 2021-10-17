class RemoveBirthdateFromStudent < ActiveRecord::Migration[6.1]
  def change
    remove_column :students, :birthdate, :string
  end
end
