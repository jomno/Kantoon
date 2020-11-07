ActiveAdmin.register Pie do
  index do

    selectable_column
    
    id_column
    
      column :kind
      column :percent

    end
    
    
    form do |f|
    f.inputs do
    f.input :kind
    f.input :percent

    
    end
    f.actions
    end
    
    show do
      attributes_table do
        row :id
        row :kind
        row :percent
      end
      end
  
end
