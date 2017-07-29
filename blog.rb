class Blog

  @@num_blog_posts = 0

  @@all_blog_posts = []

  def self.all
    @@all_blog_posts
  end

  def self.publish
    @@all_blog_posts.each do |post|
      puts "Title:\n #{post.title}"
      puts "Body:\n #{post.content}"
      puts "Publish Date:\n #{post.created_at}"
      puts "By:\n #{post.author}"
    end
  end

  def self.add(thing)
    @@all_blog_posts << thing
    @@num_blog_posts += 1
  end
end

class BlogPost < Blog
  
  def self.create
    post = new
    puts "What is the title of your post?"
    post.title = gets.chomp
    puts "Your post content:"
    post.content = gets.chomp
    puts "Name of the author:"
    post.author = gets.chomp
    post.created_at = Time.now
    post.save
    puts "Do you want to create another post? [Y/N]"
    create if gets.chomp.downcase == 'y'
  end

  def title
    @title
  end

  def title=(title)
    @title = title
  end

  def created_at
    @created_at
  end

  def created_at=(created_at)
    @created_at = created_at
  end

  def content
    @content
  end

  def content=(content)
    @content = content
  end

  def author
    @author
  end

  def author=(author)
    @author = author
  end

  def save
    BlogPost.add(self)
  end
end

BlogPost.create
all_blog_posts = BlogPost.all
puts all_blog_posts.inspect
BlogPost.publish