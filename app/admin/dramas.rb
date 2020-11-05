ActiveAdmin.register Drama do

  index do

    selectable_column
    
    id_column
    
    column :title
    column :image do |drama|
        if drama.image.attached?
          image_tag url_for(drama.image), class: "small_img"
        else
          "No image found"
        end
      end
      column :desc
      column :character
      column :category
    end
    
    
    form do |f|
    f.inputs do
    f.input :title
    f.input :image, as: :file
    f.input :desc
    f.input :character
    f.input :category
    
    end
    f.actions
    end
    
    show do
      attributes_table do
        row :id
        row :title
        row :image do |drama|
          if drama.image.attached?
            image_tag url_for(drama.image), class: "small_img"
          else
            "No image found"
          end
        end
        row :desc
        row :character
        row :category
      end
    end
end
