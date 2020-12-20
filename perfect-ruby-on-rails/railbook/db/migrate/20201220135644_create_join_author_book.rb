class CreateJoinAuthorBook < ActiveRecord::Migration[6.1]
  def change
    create_table :join_author_books do |t|
      t.string :author
      t.string :book

      t.timestamps
    end
  end
end
