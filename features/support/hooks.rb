Before do
@browser = $browser
end

After do
  @browser.quit
end