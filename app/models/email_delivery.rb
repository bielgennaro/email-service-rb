# frozen_string_literal: true

class EmailDelivery < ApplicationRecord
  belongs_to :email
  has_many :attachments, dependent: :destroy

  validates :status, presence: true

  def send_email
    # Send email here

    # For now, just update the status and sent_at
    update(status: 'sent', sent_at: Time.zone.now)
  end
end
