ActiveAdmin.register Customer do
  permit_params :full_name, :phone_number, :email, :notes, :image

  index do
    selectable_column
    id_column
    column :full_name
    column :phone_number
    column :email
    column :created_at
    actions
  end

  form do |f|
    f.inputs do
      f.input :full_name
      f.input :phone_number
      f.input :email
      f.input :notes
      f.input :image, as: :file  
    end
    f.actions
  end

  show do
    attributes_table do
      row :full_name
      row :phone_number
      row :email
      row :notes
      row :image 
      row :created_at
      row :updated_at
    end
  end
end
