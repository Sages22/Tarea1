class CreateScaffolds < ActiveRecord::Migration[6.0]
  def change
    create_table :scaffolds do |t|
      t.string :Comment
      t.string :post
      t.string :reference
      t.string :body
      t.string :text

      t.timestamps
    end
  end
end
