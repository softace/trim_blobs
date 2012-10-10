module TrimBlobs::ActiveRecord::ConnectionAdapters::AbstractAdapter
  def log_with_blobs_trimmed(sql, name, &block)
    sql = sql.gsub(/x'([^']+)'/) do |blob|
      blob.size > 32 ? "x'#{$1[0,32]}... (#{blob.size} bytes)'" : $0
    end if sql
    log_without_blobs_trimmed(sql, name, &block)
  end
end
