class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def pregnancy_percentage
    return 0 unless pregnancy_start_date
    start_point = pregnancy_start_date.to_f
    end_point = start_point.to_f + 9.months.to_f
    current_point = Time.now.to_f
    ((current_point - start_point) * 100) / (end_point - start_point)
  end

end
