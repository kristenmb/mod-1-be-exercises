require 'rspec'
require "pry"
require './lib/medusa'
require './lib/person'


RSpec.describe Medusa do
  it 'has a name' do
    medusa = Medusa.new('Cassiopeia')
    expect(medusa.name).to eq('Cassiopeia')
  end

  it 'has no statues when created' do
    medusa = Medusa.new('Cassiopeia')
    expect(medusa.statues).to be_empty
  end

  it 'gains a statue when staring at a person' do
    medusa = Medusa.new('Cassiopeia')
    victim = Person.new('Perseus')

    medusa.stare(victim)
    expect(medusa.statues.count).to eq(1)
    expect(medusa.statues.first.name).to eq('Perseus')
    expect(medusa.statues.first).to be_an_instance_of(Person)
    # binding.pry
  end

  it 'turns a person to stone when staring at them' do
    medusa = Medusa.new('Cassiopeia')
    victim = Person.new('Perseus')

    expect(victim.stoned?).to be false
    medusa.stare(victim)
    expect(victim.stoned?).to be true
  end

  it 'can only have three victims' do
    # your code here
    medusa = Medusa.new('Cassiopeia')
    victim = Person.new('Perseus')
    victim2 = Person.new('Odysseus')
    victim3 = Person.new('Theseus')

    medusa.stare(victim)
    medusa.stare(victim2)
    medusa.stare(victim3)

    expect(medusa.statues.length).to eq(3)
  end

  it 'if a fourth victim is stoned the first is unstoned' do
    # your code here
    medusa = Medusa.new('Cassiopeia')
    victim = Person.new('Perseus')
    victim2 = Person.new('Odysseus')
    victim3 = Person.new('Theseus')
    victim4 = Person.new('Athena')

    medusa.stare(victim)
    medusa.stare(victim2)
    medusa.stare(victim3)
    medusa.stare(victim4)

    expect(medusa.statues.count).to eq(3)
    expect(victim.stoned?).to eq(false)
    expect(medusa.statues.count).to eq(3)
  end
end
