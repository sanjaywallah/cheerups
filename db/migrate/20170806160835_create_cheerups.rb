class CreateCheerups < ActiveRecord::Migration[5.1]
  def change
    create_table :cheerups do |t|
      t.string  :title
      t.text  :body

      t.timestamps
    end
  end
end
