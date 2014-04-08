module Hypocorism

  VERSION = '0.0.1'

  class << self
    def source_path
      File.expand_path('../data/nicknames.txt', File.dirname(__FILE__))
    end

    def source
      File.read(source_path).lines.collect &:split
    end

    def names
      @names ||= source_with_e_varients
    end

    def match(name, another)
      variations_of(name).include?(another)
    end

    def variations_of(name)
      names.select{|n| n.include? name}.flatten.uniq
    end

    private
    def source_with_e_varients
      source.collect! do |line|
        line.collect!{|m| /(.*)E$/ =~ m ? e_varients_of($1) : m}
        line.flatten
      end
    end


    def e_varients_of(string)
      %w{i ie y ey}.collect{|v| string + v}
    end
  end
end
