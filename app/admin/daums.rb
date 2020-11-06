ActiveAdmin.register Daum do

  index do

    selectable_column
    
    id_column
    
    column :image do |daum|
        if daum.image.attached?
          image_tag url_for(daum.image), class: "small_img"
        else
          "No image found"
        end
      end
      column :title
      column :genre
      column :author
      column :desc
    end
    
    
    form do |f|
    f.inputs do
    f.input :image, as: :file
    f.input :title
    f.input :genre
    f.input :author
    f.input :desc
    
    end
    f.actions
    end
    
    show do
      attributes_table do
        row :id
        row :image do |daum|
          if daum.image.attached?
            image_tag url_for(daum.image), class: "small_img"
          else
            "No image found"
          end
        end
        row :title
        row :genre
        row :author
        row :desc
      end
    end
  
end
