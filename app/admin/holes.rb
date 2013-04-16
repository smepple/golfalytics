ActiveAdmin.register Hole do
  index do
    column :tee
    column :number
    column :par_men
    column :par_women
    column :handicap_men
    column :handicap_women
    column :length
    default_actions
  end  
end
