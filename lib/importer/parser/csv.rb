require 'csv'

module Importer
  module Parser
    # CSV parser
    class Csv < Base
      def run
        @data = []

        data = CSV.read(@file, :skip_blanks => true, :encoding => 'windows-1251:utf-8')

        unless data.empty?
          attributes = data.shift
          @data = data.map do |values|
            Hash[*attributes.zip(values).flatten]
          end
        end

        @data
      end
    end
  end
end
