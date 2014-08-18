class Incident < ActiveRecord::Base
  belongs_to :case

  has_attached_file :police_report
  validates_attachment_size :police_report, :less_than => 10.megabytes
  validates_attachment_content_type :police_report, :content_type =>
      %w('application/pdf","application/vnd.ms-excel',
       'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
       'application/msword',
       'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
       'text/plain')
end
