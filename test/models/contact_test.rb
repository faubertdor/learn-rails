require 'test_helper'

describe Contact do
  
  before do
    @contact_params = { name: "Jean", email: "jean@example.com",
                        content: "something" }
    @contact = Contact.new(@contact_params)
  end
  
  it "must be valid when created with correct attributes" do
    @contact.must_be :valid?
  end
  
  it "must be invalid when content is greater than 500 characters" do
    @contact.content = "a" * 501
    @contact.wont_be :valid?
    @contact.content = "a"
  end
  
  it "must be invalid without a valid email" do
    @contact.email = "some.com"
    @contact.wont_be :valid?
  end
  
  it "must be invalid when created without attributes" do
    @contact = Contact.new
    @contact.wont_be :valid?
  end
  
end