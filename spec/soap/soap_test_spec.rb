# frozen_string_literal: true

require 'rails_helper'

describe 'BLZService' do
  let(:wsdl_url)        { 'http://www.thomas-bayer.com/axis2/services/BLZService?wsdl' }
  let(:wsdl_operations) { Savon.client(wsdl: wsdl_url).operations }

  it 'returns successful response' do
    operations = [:get_bank]

    expect(wsdl_operations).to eq(operations)
  end
end
