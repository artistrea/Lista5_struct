class AddBirthdateToTeacher < ActiveRecord::Migration[6.1]
  def change
    add_column :teachers, :birthdate, :date
  end
end
