require "boxen/preflight"

class Boxen::Preflight::OS < Boxen::Preflight
  def ok?
    # Let's see what breaks on 10.7
    Float(`sw_vers -productVersion`.match('\A[\d]+\.[\d]')[0]) >= 10.7
  end

  def run
    abort "You must be running OS X 10.8 (Mountain Lion)."
  end
end
