ActiveRecord::ConnectionAdapters::AbstractAdapter.class_eval do

  def format_log_entry_with_blobs_trimmed(message, dump = nil)
    dump = dump.gsub(/x'([^']+)'/) do |blob|
      (blob.length > 32) ? "x'#{$1[0,32]}... (#{blob.length} bytes)'" : $0
    end if dump
    format_log_entry_without_blobs_trimmed(message, dump)
  end

  alias_method_chain :format_log_entry, :blobs_trimmed

end