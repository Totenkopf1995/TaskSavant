class Task < ApplicationRecord
  after_destroy :reset_id_sequence_if_empty

  private

  def reset_id_sequence_if_empty
    if Task.count.zero?
      ActiveRecord::Base.connection.execute("ALTER SEQUENCE tasks_id_seq RESTART WITH 1")
    end
  end
end
