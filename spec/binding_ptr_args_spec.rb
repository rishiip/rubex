require 'spec_helper'

describe Rubex do
  test_case = "binding_ptr_args"

	context "Case: #{test_case}" do
    before do
      @path = path_str test_case
    end

    context ".ast" do
      it "generates the AST." do
        t = Rubex.ast(@path + '.rubex')
      end
    end

    context ".compile" do
      it "compiles to C." do
        t, c, e = Rubex.compile(@path + '.rubex', test: true)
      end
    end
  end

  context "Black Box testing", focus: true do
    it "compiles and checks for valid output" do
      setup_and_teardown_compiled_files(test_case) do |dir|
        require_relative "#{dir}/#{test_case}.so"

        expect(test_function("hello")).to eq(104)
      end
    end
  end
end