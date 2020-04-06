# frozen_string_literal: true

control 'gasmask package' do
  title 'should be installed'

  describe file('/Applications/Gas mask') do
    it { should exist }
  end
end
