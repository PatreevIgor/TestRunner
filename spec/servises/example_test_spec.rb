# frozen_string_literal: true

require 'rails_helper'

describe '#method_name' do
  let(:var)    { 1 }
  let(:result) { 1 }

  it 'returns accept result' do
    expect(var).to eq(result)
  end
end
