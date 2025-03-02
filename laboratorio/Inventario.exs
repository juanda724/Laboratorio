defmodule Inventario do
  def main do
    titulo_libro = "ingrese el titulo del libro"
    |> Util.ingresar(:texto)

    unidades_disponibles = "ingrese la cantidad de unidades disponibles"
    |> Util.ingresar(:entero)

    precio_unitario = "ingrese el precio unitario"
    |> Util.ingresar(:real)

    valor_total = calcular_valor_total(unidades_disponibles, precio_unitario)

    generar_mensaje(titulo_libro, unidades_disponibles, valor_total)
    |> Util.mostrar_mensaje()
  end

  defp calcular_valor_total(unidades_disponibles, precio_unitario) do
    unidades_disponibles*precio_unitario
  end

  defp generar_mensaje(titulo_libro, unidades_disponibles, valor_total) do
  "el libro $#{titulo_libro} tiene $#{unidades_disponibles} unidades, con un valor total de $#{valor_total}"
  end
end

Inventario.main
