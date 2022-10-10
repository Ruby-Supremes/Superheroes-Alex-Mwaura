class HeroPowerSerializer < ActiveModel::Serializer
  attributes :strength, :hero_id, :power_id
end
