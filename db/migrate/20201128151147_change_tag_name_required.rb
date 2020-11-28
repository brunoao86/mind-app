class ChangeTagNameRequired < ActiveRecord::Migration[6.0]
  def change
    change_column_null :tags, :name, false
  end
end
