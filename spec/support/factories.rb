# Categories

Factory.define(:category) do |c|
  c.name "Category"
  c.shortcut "c"
end

# Post threads

Factory.define(:post_thread) do |pt|
  pt.association :category, :factory => :category
end

Factory.define(:new_post_thread_params, :class => :post_thread, :default_strategy => :attributes_for) do |pt|
  pt.association :category, :factory => :category
  pt.subject "New subject"
  pt.content "Not much to say"
end

# Posts

Factory.define(:post) do |p|
  p.association :post_thread, :factory => :post_thread
  p.subject "Subject"
  p.content "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
  p.author_name "Postfag"
  p.author_tripcode "tR1pC0d3"
end