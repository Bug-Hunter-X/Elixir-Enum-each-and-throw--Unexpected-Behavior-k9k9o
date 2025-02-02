# Elixir Enum.each and throw: Unexpected Behavior

This example demonstrates a potential issue when using `Enum.each` with `throw` in Elixir. The code attempts to stop execution if a certain condition is met (in this case, `x == 3`), but it doesn't behave as expected.

## Bug Description
The program continues execution after the `throw(:error)` statement rather than stopping as intended. The `IO.puts("Next number")` statement after the `if` block is still executed, indicating that the `throw` is not handled correctly by `Enum.each`.

## Bug Solution
The solution involves using `Enum.reduce` or a different iterative construct that properly handles exceptions thrown within the loop.