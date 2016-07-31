class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :hook
      t.text :description
      t.references :company, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
