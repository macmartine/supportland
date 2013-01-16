# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Supportland::Application.initialize!

Time::DATE_FORMATS[:short_date] = "%b %-d, %Y"
