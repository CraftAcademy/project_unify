class User < ActiveRecord::Base
  acts_as_taggable_on :skills

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  def to_s
    user_name
  end

  def unify
    self.find_related_skills
  end
end
