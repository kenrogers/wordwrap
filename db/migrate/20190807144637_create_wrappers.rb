class CreateWrappers < ActiveRecord::Migration[5.2]
  def change
    create_table :wrappers do |t|

      t.timestamps
    end
  end
end
