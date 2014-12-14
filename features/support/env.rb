require 'miyuki'
require 'rspec'
require 'fileutils'

class String
  def contains?(string)
    string.split.each { |w| return false if not self.include?(w) }
    true
  end
end

Miyuki.join_scheduler = false

After do |s|
  watch_dir = 'features/support/testWatchDir'
  FileUtils.rm_r(watch_dir) if Dir.exists?(watch_dir)

  Cucumber.wants_to_quit = true if s.failed?
end
