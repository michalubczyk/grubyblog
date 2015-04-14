require 'rss'

private
  
def about
  begin
    @latest_blog_posts = RSS::Parser.parse(open("http://devstart.pl/feed/questions.rss").read, false).items[0...5]
  rescue
    @latest_blog_posts = nil
  end
end