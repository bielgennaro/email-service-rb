# frozen_string_literal: true

class EmailTemplate < ApplicationRecord
  has_many :emails

  validates :name, presence: true, uniqueness: true
  validates :body, presence: true

  def render_body
    ERB.new(body).result(binding)
  end
end
