# Mario and Erik 1/23/13
# This client sort of functions as a controller for the whole program

require_relative '../lib/hn_bot'

class HNClient

  # instantiate a HN bot
  def initialize
    @hacker_bot = HNBot.new
  end

  def run
    puts "Welcome to Hacker News Client... SHIZZY!!!"

    while true
      puts "Pick a recent post ID to display:"
      puts "[ 'q' to quit ]"
      present_recent_posts
      post_id_choice = gets.chomp
      exit if post_id_choice == 'q'
      post_id_choice = post_id_choice.to_i
      puts "you chose #{post_id_choice}!"
      #ELSE go get that post.
    end

  end

  # puts here are the posts, pick one
  def present_recent_posts(digest_size = 3)
    posts = @hacker_bot.front_page_digest(digest_size)
    posts.each do |post|
      puts "#{post[:id]}| #{post[:title]}"
    end
  end

  def refresh_post_digest
    @hacker_bot.retrieve_front_page
  end

  def get_post
    # post = Post.find_by_hn_id(1232)
    post
  end

  # refresh hn bot if desired

  # present user with digest of post titles

  # accept user input for choice of post to pursue




  # display that post and its comments




  # allow user to investigate a comment

  # etce etcetg....asdfgkads;

end