class PackagePolicy
  attr_reader :user, :package

  def initialize(user, package)
    @user = user
    @package = package
  end

  def update?
    user.admin?
  end
end
