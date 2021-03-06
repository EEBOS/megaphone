class CreateMegaphoneMessages < ActiveRecord::Migration
  def change
    create_table :megaphone_messages do |t|
      t.string :title
      t.text :text
      t.string :link
      t.references :category
      t.references :notifiable, polymorphic: true
      t.boolean :read, default: false

      t.timestamps
    end
    add_index :megaphone_messages, :category_id
    add_index :megaphone_messages, [:notifiable_type, :notifiable_id]
  end
end
