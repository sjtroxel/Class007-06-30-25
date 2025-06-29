class Post < ApplicationRecord
    validates :title, presence: true, uniqueness: true
    validates :published_at, presence: true
    before_create :capitalize_title

  private

  def capitalize_title
    self.title = title.split.map(&:capitalize).join(' ')
  end
end
