class AddCashedSlugToMarina < ActiveRecord::Migration
  def change
    add_column :marinas, :cached_slug, :string
  end
end
