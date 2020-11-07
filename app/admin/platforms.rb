ActiveAdmin.register Platform do
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
      column :name
      column :ppi
      
    end
    
    
    form do |f|
    f.inputs do
    f.input :image, as: :file
    f.input :name
    f.input :ppi

    
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
        row :name
        row :ppi
      end
      end
  
end
