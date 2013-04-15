ActiveAdmin.register Facility do
  index do
    column :venue
    column :facility_type
    column :name
    column :holes
    default_actions
  end
end
