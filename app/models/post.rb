class Post < ApplicationRecord
  belongs_to :user
  has_many_attached :task_images
  has_many_attached :answ_images
  validates :name, presence: true
  validates :task, presence: true
  validate :task_image_type
  validate :answ_image_type

  def task_thumbnail input
    return self.task_images[input].variant(resize: '300x300!').processed
  end

  def answ_thumbnail input
    return self.answ_images[input].variant(resize: '300x300!').processed
  end


  def task_image_type 
    if task_images.attached? == false
        errors.add(:task_images, "are missing")
    end
    task_images.each do |image|
        if !image.content_type.in?(%('image/jpeg image/png'))
            errors.add(:task_images, "needs to be a JPEG or PNG")
        end
    end
  end

  def answ_image_type 
    if answ_images.attached? == true 
      answ_images.each do |image|
        if !image.content_type.in?(%('image/jpeg image/png'))
            errors.add(:answ_images, "needs to be a JPEG or PNG")
        end
      end
    end
  end

end
