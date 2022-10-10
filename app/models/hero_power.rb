class HeroPower < ApplicationRecord
    belongs_to :hero
    belongs_to :power

    STRENGTH = ['Strong', 'Weak', 'Average']
    validates :strength, inclusion: {
        in: STRENGTH,
        message: "HeroPower not valid,should either be: #{STRENGTH.join(', ')}"}
end
