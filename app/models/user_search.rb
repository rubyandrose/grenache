class UserSearch
  include ActiveModel::Model

  attr_accessor :name

  def filter
    User.full_name_contains(name)
  end
end
