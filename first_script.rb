require 'rubygems'
require 'watir-webdriver'
require_relative 'adoption_helper'

include AdoptionHelper

goto_puppy_site
adopt_puppy 0
continue_adopting_puppies
adopt_puppy 1
complete_adoption
checkout_with("Nathan Hughes", "1555 Broadway Detroit MI", "nathan@detroitlabs.com", 'Credit card')
check_text_contains 'Thank you for adopting a puppy!'
