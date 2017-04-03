require 'rails_helper'

RSpec.describe Subscription, type: :model do

  it "belongs to a user" do
    robby = User.create!(username: "Rdore", password: "hello", password_confirmation: "hello")
    russell = User.create!(username: "Rosborne", password: "dude", password_confirmation: "dude")
    Subscription.create!(follower: robby, followee: russell)
    expect(robby.follower_subscriptions.length).to eq 1
  end
end
