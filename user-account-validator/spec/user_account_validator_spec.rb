require 'spec_helper'
require_relative '../lib/user_account_validator'

describe UserAccountValidator do
  let!(:user) { UserAccountValidator.new({
    email: "doc@d7miners.com",
    username: "doc",
    name: "Doc"
  }) }
  describe user do
    it "has an email address" do
    expect(email).to_not be_empty
  end

    it "has a username" do
    expect(username).to_not be_empty
  end

    it "has a name" do
    expect(name).to_not be_empty
  end
end
end
# describe UserAccountValidator do
#   let!(:user) { UserAccountValidator.new({
#     email: "grumpy@d7miners.com",
#     username: "",
#     name: "Grumpy"
#   }) }
#   #
# describe UserAccountValidator do
#   let!(:user) { UserAccountValidator.new({
#     email: "happy@d7miners.com",
#     username: "happy",
#     name: "Happy"
#   }) }
# describe UserAccountValidator do
#   let!(:user) { UserAccountValidator.new({
#     email: "sleepy@d7miners.com",
#     username: "sleepy",
#     name: "Sleepy"
#   }) }
#
# describe UserAccountValidator do
#   let!(:user) { UserAccountValidator.new({
#     email: "bashful@d7miners.com",
#     username: "bashful",
#     name: "Bashful"
#   }) }
#
# describe UserAccountValidator do
#   let!(:user) { UserAccountValidator.new({
#     email: "sneezy@d7miners.com",
#     username: "sneezy",
#     name: "Sneezy"
#   }) }
#
# describe UserAccountValidator do
#   let!(:user) { UserAccountValidator.new({
#     email: "dopey@7miners.com",
#     username: "dopey",
#     name: "Dopey"
#   }) }
#
#   describe user do
#     it "has an email address" do
#     expect(email).to_not be_empty
#   end
#
#     it "has a username" do
#     expect(username).to_not be_empty
#   end
#
#     it "has a name" do
#     expect(name).to_not be_empty
#   end
