# A concern is only responsible for a focused subset of the model's responsibility.
# The methods in this concern will all be related to the visibility of a model.

module Visible
  extend ActiveSupport::Concern
  # To add the status valiadtion, but validations are methods called ath the class level.

  VALID_STATUSES = ['public', 'private', 'archived']

  included do
    validates :status, inclusion: { in: VALID_STATUSES }
  end

  def archived?
    status == 'archived'
  end
end
