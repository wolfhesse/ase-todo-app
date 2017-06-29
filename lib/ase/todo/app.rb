require "ase/todo/app/version"

module Ase
  module Todo
    module App
      # Your code goes here...
      class << self

        attr_accessor :cmp
        attr_reader :repo

        def configure
          yield self
        end

        def cmp
          @cmp ||= Ase::Todo::Cmp
          @cmp
        end

        def repo
          @cmp.repo
        end

        def add_task(title)
          cmp.add_task title
        end

        def clear
          cmp.clear
        end
      end
    end
  end
end
