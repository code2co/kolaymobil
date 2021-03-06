require "administrate/base_dashboard"

class ProfileDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    company: Field::BelongsTo,
    id: Field::Number,
    phone: Field::String,
    address: Field::Text,
    email: Field::String,
    facebook: Field::String,
    twitter: Field::String,
    latitude: Field::String,
    longitude: Field::String,
    description: Field::Text,
    contact_info: Field::Text,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    company_id: CompanyHiddenField,
    image: ProfileAttachmentField,
    background: BackgroundField,
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :company,
    :description,
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES =  [
    :id,
    :company,
    :company_id,
    :phone,
    :address,
    :email,
    :facebook,
    :twitter,
    :latitude,
    :longitude,
    :description,
    :contact_info,
  ]

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :company_id,
    :phone,
    :address,
    :email,
    :facebook,
    :twitter,
    :description,
    :contact_info,
    :latitude,
    :longitude,
    :image,
    :background,
  ]

  # Overwrite this method to customize how profiles are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(profile)
  #   "Profile ##{profile.id}"
  # end
end
