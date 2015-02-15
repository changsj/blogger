class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author_name
      t.text :body

      # this line adds an integer column called `article_id`.
      t.references :article, index: true

      t.timestamps
    end
  end
end
