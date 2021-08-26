require 'rspec'
require './lib/card.rb'
require './lib/deck.rb'
require './lib/player.rb'

RSpec.describe Player do

  it "has a name" do

    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)

    deck = Deck.new([card1, card2, card3])

    player = Player.new('Clarisa', deck)

    expect(player.name).to eq('Clarisa')

  end

  xit "has a deck" do

    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)

    deck = Deck.new([card1, card2, card3])

    player = Player.new('Clarisa', deck)

    expect(player.deck).to eq([card1, card2, card3])

  end

  xit "can determine if the player has lost the game and remove card" do

    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)

    deck = Deck.new([card1, card2, card3])

    player = Player.new('Clarisa', deck)

#execute has_lost? method 3 times and get false
    expect(player.has_lost?).to be false
    expect(player.deck.remove_card).to eq(card1)
    expect(player.has_lost?).to be false
    expect(player.deck.remove_card).to eq(card2)
    expect(player.has_lost?).to be false
    expect(player.deck.remove_card).to eq(card3)
#execute has_lost? method one more time and get true.
    expect(player.has_lost?).to be true
    expect(player.deck).to eq([])

  end

end
