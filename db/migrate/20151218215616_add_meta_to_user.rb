class AddMetaToUser < ActiveRecord::Migration
  def change
    add_reference :users, :meta, polymorphic: true, index: true
  end
end
