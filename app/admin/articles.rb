ActiveAdmin.register Article do

  index do

    selectable_column
    
    id_column
    
    column :image do |article|
        if article.image.attached?
          image_tag url_for(article.image), class: "small_img"
        else
          "No image found"
        end
      end
      column :title
      column :reporter
      column :created_at
      column :desc
      
    end
    
    
    form do |f|
    f.inputs do
    f.input :image, as: :file
    f.input :title
    f.input :reporter
    f.input :desc
    
    end
    f.actions
    end
    
    show do
      attributes_table do
        row :id
        row :image do |article|
          if article.image.attached?
            image_tag url_for(article.image), class: "small_img"
          else
            "No image found"
          end
        end
        row :title
        row :desc
        row :reporter
      end
    end
    
end
