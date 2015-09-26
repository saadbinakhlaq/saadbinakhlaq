class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.references :user, index: true, foreign_key: true
      t.json :fields, null: false, default: {}

      t.timestamps null: false
    end
  end
end
