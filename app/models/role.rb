class Role < ActiveRecord::Base
  has_many :auditions

  def actors
    self.auditions.map do |auditions|
        audition.actor
    end
  end

  def locations
    self.auditions.map do |auditions|
        audition.location
    end
  end

  def lead
    result = self.auditions.find { |aud| aud.hired }

    if result
        result
    else
        'No actor has been hired for this role'
    end
  end

  def understudy
    result = self.auditions.find { |aud| aud.hired }.second

    if result
        result
    else
        'No actor has been hired for understudy'
    end
  end

end