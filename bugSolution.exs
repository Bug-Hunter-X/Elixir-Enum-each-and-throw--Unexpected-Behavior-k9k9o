```elixir
list = [1, 2, 3, 4, 5]

try do
  Enum.reduce(list, :ok, fn x, acc ->
    if x == 3 do
      throw(:error)
    else
      IO.puts(x)
      :ok
    end
  end)
  IO.puts("Completed")
rescue
  :error -> IO.puts("Error encountered")
end
```