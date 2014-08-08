require 'spec_helper'

describe Safran::Parser do
  it 'should have a valid rss url' do
    expect(subject.url).to match(/.rss/)
  end

  it 'should return the RSS feed ' do
    allow(subject).to receive(:print)
    expect(subject.parse).not_to be nil
  end
  
  it 'should have an items array' do
    allow(subject).to receive(:print)
    expect(subject.parse).to be_a_kind_of(Array)
  end
end