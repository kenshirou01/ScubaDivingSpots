class SpotCreature < ApplicationRecord
  belongs_to :spot
  belongs_to :creature
end
