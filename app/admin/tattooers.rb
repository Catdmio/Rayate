ActiveAdmin.register Tattooer do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
index do
	column :id
	column :email
	column :created_at
	column :style
	column :studio do |tattooer|
		tattooer.studio.name
	end
	column :member_since do |tattooer|
		time_ago_in_words(user.created_at)
	end
end
end
