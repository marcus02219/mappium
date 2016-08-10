
ActiveAdmin.register Route do
  permit_params :name, :is_round_trip, :start_time, :stop_time, :is_hard_start_time, :is_hard_stop_time, :departure_point_mode, :departure_point_alt, :departure_point_long,
                :travel_mode, :optimize_mode, :avoid_highways, :avoid_tolls, :avoid_ferries, :notes, :total_distance, :total_time

  index do
    selectable_column
    id_column
    column "User", :user_email
    column :name
    column :is_round_trip
    column :start_time
    column :stop_time
    column :stop_time
    column :is_hard_start_time
    column :is_hard_stop_time
    column :departure_point_mode
    column :departure_point_alt
    column :departure_point_long
    column :travel_mode
    column :optimize_mode
    column :avoid_highways
    column :avoid_tolls
    column :avoid_ferries
    column :notes
    column :total_distance
    column :total_time
    actions
  end

  filter :name

  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs "Tip Details" do
      f.input :name
      f.input :is_round_trip
      f.input :start_time
      f.input :stop_time
      f.input :is_hard_start_time
      f.input :is_hard_stop_time
      f.input :departure_point_mode
      f.input :departure_point_alt
      f.input :departure_point_long
      f.input :travel_mode
      f.input :optimize_mode
      f.input :avoid_highways
      f.input :avoid_tolls
      f.input :avoid_ferries
      f.input :notes
      f.input :total_distance
      f.input :total_time  
    end
    f.actions
  end

end
