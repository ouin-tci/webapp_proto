class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  records_with_operator_on :create, :update
end
