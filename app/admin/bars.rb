ActiveAdmin.register Bar do
  index do

    selectable_column
    
    id_column
    
      column :year
      column :epi

    end
    
    
    form do |f|
    f.inputs do
    f.input :year
    f.input :epi

    
    end
    f.actions
    end
    
    show do
      attributes_table do
        row :id
        row :year
        row :epi
      end
      end
end
