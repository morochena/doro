require 'io/console'
require 'time'

class ProgressBar
  def initialize(title, max_progress)
    @progress = 0
    @max_progress = max_progress
    @title = title
    @start_time = Time.now
  end

  def start
    while (@progress <= @max_progress)
      render_progress
      sleep 1
      @progress += 1
    end
  end

  private

  def render_progress
    print @title
    print " ["
    print "=" * progress_bar_ticks
    print " " * remaining_bar_ticks rescue 0
    print "] "
    print "\e[32m#{display_time}\e[0m"
    print "\r"
  end

  # Methods for determing time

  def display_time
    Time.at((Time.now - @start_time)).utc.strftime("%M:%S")
  end

  # Methods for determing progress bar length
  def progress_bar_ticks
    (percent * (terminal_length - other_items_length)).to_i
  end

  def remaining_bar_ticks
    terminal_length - progress_bar_ticks - other_items_length
  end

  def percent
    (@progress.to_f / @max_progress)
  end

  def other_items_length
    @title.size + 10
  end


  # Methods for determining terminal length
  def terminal_length
    return 80 unless unix?

    result = dynamic_width
    result < 20? 80 : result

  rescue
    80
  end

  def dynamic_width
    _rows, columns = IO.console.winsize
    columns
  end

  def unix?
    RUBY_PLATFORM =~ /(aix|darwin|linux|(net|free|open)bsd|cygwin|solaris|irix|hpux)/i
  end
end