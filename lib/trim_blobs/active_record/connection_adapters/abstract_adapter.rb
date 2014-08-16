module TrimBlobs
  module ActiveRecord
    module ConnectionAdapters
      module AbstractAdapter
        def log_with_blobs_trimmed(sql, name = "SQL", binds = [], statement_name = nil)
          if sql
            sql = sql.gsub(/'\\x((?:[0-9a-f]{2})+)'/) do |blob|
              (blob.size > 32) ? "'\\x#{$1[0,32]}... (TRIMMED #{blob.size} hexadecimal digits)'" : $&
            end
          end
          if statement_name
            log_without_blobs_trimmed(sql, name, binds, statement_name){ yield }
          else
            log_without_blobs_trimmed(sql, name, binds){ yield }
          end
        end
      end
    end
  end
end
