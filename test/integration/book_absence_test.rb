require "test_helper"

class BookAbsenceTest < ActionDispatch::IntegrationTest
  test "an unpublished book reads as absent, not as forbidden" do
    with_raised_exceptions do
      assert_raises ActiveRecord::RecordNotFound do
        get book_slug_url(books(:manual))
      end
    end
  end
end
