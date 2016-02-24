module Doro
  module Entries

    def self.display_entries(doro_file: "#{Dir.home}/.doro", num_entries: 10)
      CSV.foreach doro_file do |row|
        p row
      end
    end

    def self.add_entry(
      doro_file: "#{Dir.home}/.doro",
      task_name: 'none',
      minutes: 25,
      start_time:,
      tag: 'untagged')
      CSV.open(doro_file, "ab") do |csv|
        csv << [task_name, minutes, start_time.to_s, tag]
      end
    end

  end
end
