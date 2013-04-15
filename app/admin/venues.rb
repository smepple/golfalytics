ActiveAdmin.register Venue do
  index do
    column :name
    column :city
    column :state
    column :website
    default_actions
  end
end
