class GoogleHomePage
  include PageObject
  page_url "#{$config['url']}"
  text_field(:search_box, :name => 'q')
  button(:search_button, :name => 'btnK')
  def web_search(search_key)
    self.search_box = search_key
    search_button
    verify_page_title(search_key)
  end
  def verify_page_title(search_key)
    assert_equal("#{search_key} - Google Search",@browser.title, "Incorrect Page title is displayed")
  end
end