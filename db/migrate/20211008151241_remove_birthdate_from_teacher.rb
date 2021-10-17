class RemoveBirthdateFromTeacher < ActiveRecord::Migration[6.1]
  def change
    remove_column :teachers, :birthdate, :string
  end
end
