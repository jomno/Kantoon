ActiveAdmin.register Kakao do
  index do

    selectable_column
    
    id_column
    
    column :image do |kakao|
        if kakao.image.attached?
          image_tag url_for(kakao.image), class: "small_img"
        else
          "No image found"
        end
      end
      column :title
      column :genre
      column :author
    end
    
    
    form do |f|
    f.inputs do
    f.input :image, as: :file
    f.input :title
    f.input :genre
    f.input :author
    
    end
    f.actions
    end
    
    show do
      attributes_table do
        row :id
        row :image do |kakao|
          if kakao.image.attached?
            image_tag url_for(kakao.image), class: "small_img"
          else
            "No image found"
          end
        end
        row :title
        row :genre
        row :author
      end
    end
end
