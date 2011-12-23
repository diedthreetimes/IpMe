class CreateHosts < ActiveRecord::Migration
  def change
    create_table :hosts do |t|

      t.timestamps
    end
  end
end
