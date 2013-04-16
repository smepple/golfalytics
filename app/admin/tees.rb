ActiveAdmin.register Tee do
  index do
    column :facility_id
    column :name
    column :rating_men
    column :rating_front_men
    column :rating_back_men
    column :slope_men
    column :slope_front_men
    column :slope_back_men
    column :rating_women
    column :rating_front_women
    column :rating_back_women
    column :slope_women
    column :slope_front_women
    column :slope_back_women
    default_actions
  end  
end
