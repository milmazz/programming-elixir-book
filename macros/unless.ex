defmodule My do
  defmacro unless(condition, clause) do
    unless_clause = Keyword.get(clause, :do, nil)

    quote do
      if unquote(condition) do
        nil
      else
        unquote(unless_clause)
      end
  end
end