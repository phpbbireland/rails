module TestUnit
  module Generators
    class ObserverGenerator < Base
      def check_class_collisions
        class_collisions class_name, "#{class_name}Test"
      end

      def create_test_files
        template 'unit_test.rb',  File.join('test', 'unit', class_path, "#{file_name}_observer_test.rb")
      end
    end
  end
end