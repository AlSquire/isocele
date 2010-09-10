Factory.define(:category) do |c|
  c.name "Category"
  c.shortcut "c"
end

Factory.define(:post_thread) do |pt|
  pt.association :category, :factory => :category
end