require "dmy_test_gem/version"
require 'time'

# 写一个将当前日期转换为 星期的方法
module DmyTestGem
  def self.current_weekday
    DateTime.now.strftime("%A")
  end
end
