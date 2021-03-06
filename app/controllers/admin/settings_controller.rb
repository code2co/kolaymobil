module Admin
  class SettingsController < Admin::ApplicationController
    # To customize the behavior of this controller,
    # simply overwrite any of the RESTful actions. For example:
    #
    # def index
    #   super
    #   @resources = Setting.all.paginate(10, params[:page])
    # end

    def index
      super
      @resources = current_user.company.setting
    end

    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   Setting.find_by!(slug: param)
    # end

    # See https://administrate-docs.herokuapp.com/customizing_controller_actions
    # for more information
  end
end
