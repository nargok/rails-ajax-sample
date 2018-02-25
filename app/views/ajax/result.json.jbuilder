json.array!(@books) do |book|
  puts book.title
  json.extract! book, :title
end