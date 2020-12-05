class Todo < ApplicationRecord
  belongs_to :list, touch: true
end
