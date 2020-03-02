require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "p", text: "Ask your coach anything"
  end

  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"

    assert_text "I don't care, get dressed and go to work!"
  end

  test "Asking question to coach get Silly answer" do
    visit ask_url
    fill_in "question", with: "Question?"
    click_on "Ask"

    assert_text "Silly question, get dressed and go to work!"
    take_screenshot
  end
end
