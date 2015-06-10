module AdminHelper
    def admin_signed_in?
    current_admin.present?
    end
end
