class AddReferenceTypeDocumentToUsers < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :type_document, null: false, foreign_key: true
  end
end
