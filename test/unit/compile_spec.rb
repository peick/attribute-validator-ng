#require_relative './spec_helper.rb'

describe 'compilephase should work' do
  context 'when running a clean compile run' do
    output = `CAV_VAGRANTFILE_FIXTURE=compile-clean.Vagrantfile vagrant provision 2>&1 `
    status = $?
    it 'should mention the compile-time run in the info log' do
      expect(output).to match /INFO: Running compile-time node attribute validations/
    end
    it 'should successfully run' do
      expect(status.exitstatus).to eql 0
    end

  end
end
