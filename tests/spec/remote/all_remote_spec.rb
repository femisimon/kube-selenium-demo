require_relative '../../test_helper'

describe 'All Remote: ', :remote do

  let(:driver) { BaseClass.driver }

  before(:all) do
    BaseClass.start_remote_browser
  end

  context 'Page title - ' do

    it 'should verify Ruth Tech page title' do
      driver.get 'http://ruthtech.com'
      expect(driver.current_url).to include 'ruthtech.com'
      expect(driver.title).to include 'Ruth Tech'
    end

    it 'should verify femisimon page title' do
      driver.get 'https://www.github.com/femisimon'
      expect(driver.current_url).to include 'github.com'
      expect(driver.title).to include 'femisimon'
    end

    it 'should verify Google page title' do
      driver.get 'https://www.google.com'
      expect(driver.current_url).to include 'google.com'
      expect(driver.title).to include 'Google'
    end
  end

  after(:all) do
    BaseClass.driver.quit
  end
end
