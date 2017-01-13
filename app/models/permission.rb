class Permission < ActiveRecord::Base
    mount_uploader :permit_pdf, PermitPdfUploader
end
