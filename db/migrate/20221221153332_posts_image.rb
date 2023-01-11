class PostsImage < ActiveRecord::Migration[5.2]
    def up
      add_column :posts, :post_image,:text
    end
end
