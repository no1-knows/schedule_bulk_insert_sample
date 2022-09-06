class ScheduleUser < ApplicationRecord
  belongs_to :schedule
  belongs_to :user

  validates :user_id, comparison: { greater_than: 1 }

  # validate :check_override_schedule
  #
  # def check_override_schedule
  #   if user_id > 2
  #     errors.add(:user_ids, "ユーザーID:#{self.user_id}  yes")
  #     raise
  #   end
  # end
end
