categories = ['tops', 'shirts', 'tunics', 'jumpsuits', 'shorts', 'pants', 'skirts']

categories.each do |cat|
  begin
    category = Category.new()
    category[:title] = cat
    category[:tagline] = "tagline for #{cat}"
    category[:img_path] = "#{cat}_main"

    if category.save
      for i in 1..10 do
        product = category.products.build(title: "#{cat}_prod_#{i}", description: "description of #{cat}_prod_#{i}", inr_price: 1500, usd_price: 20, img_path: "#{cat}_prod_#{i}", column_1: "random data for column 1", column_2: "random data for column 2", column_3: "random data for column 3", column_4: "random data for column 4", column_5: "random data for column 5")
        product.save
      end
    end
  rescue => exception
    puts "exception occure"
  end

end

# for i in 1..250 do
#   begin
#       list = List.new(name: "List number #{i}")

#       if list.save
#         for j in 1..15 do
#           todo = list.todos.build(description: "Todo number #{j} in list #{i}")
#           todo.save
#         end
#       end
#   rescue => exception
#     puts "exception occure"
#   end
# end