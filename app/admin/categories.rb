ActiveAdmin.register Category do

  index do

    selectable_column
    
    id_column
    
      column :name
      column :description
    
  end
    
    form do |f|
    f.inputs do
    f.input :name
    f.input :description
    
    end
    f.actions
    end
  
end
