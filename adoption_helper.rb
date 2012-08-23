module AdoptionHelper

  def adopt_puppy(num)
    @browser.button(:value => 'View Details', :index => num).click
    @browser.button(:value => 'Adopt Me!').click
  end

  def goto_puppy_site
    @browser = Watir::Browser.new :firefox
    @browser.goto 'http://puppies.herokuapp.com'
  end

  def continue_adopting_puppies
    @browser.button(:value => 'Adopt Another Puppy').click
  end

  def complete_adoption
    @browser.button(:value => 'Complete the Adoption').click
  end

  def checkout_with (name, address, email, type)
    @browser.text_field(:id => 'order_name').set name
    @browser.text_field(:id => 'order_address').set address
    @browser.text_field(:id => 'order_email').set email
    @browser.select_list(:id => 'order_pay_type').select(type)
    @browser.button(:value => 'Place Order').click
  end

  def check_text_contains(text)
    fail 'Did not find expected message.' unless @browser.text.include? text
  end

end
