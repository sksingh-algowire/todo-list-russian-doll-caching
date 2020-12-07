for i in 1..250 do
  begin
      list = List.new(name: "List number #{i}")

      if list.save
        for j in 1..15 do
          todo = list.todos.build(description: "Todo number #{j} in list #{i}")
          todo.save
        end
      end
  rescue => exception
    puts "exception occure"
  end
end