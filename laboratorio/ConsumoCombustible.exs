defmodule ConsumoCombustible do
  def main do
    nombre_conductor = "ingrese el nombre del conductor"
    |> Util.ingresar(:texto)

    kilometros_recorridos = "ingrese los kilometros recorridos"
    |> Util.ingresar(:entero)

    combustible_consumido = "ingrese la cantidad consumida de combustible en litros"
    |> Util.ingresar(:real)

    rendimiento = calcular_rendimiento(kilometros_recorridos, combustible_consumido)

    generar_mensaje(rendimiento)
    |> Util.mostrar_mensaje()
  end

  defp calcular_rendimiento(kilometros_recorridos, combustible_consumido) do
    kilometros_recorridos/combustible_consumido
  end

  defp generar_mensaje(rendimiento) do
  rendimiento = rendimiento |> Float.round(2)
  "el consumo de combustible de su vehículo es de $#{rendimiento}"
  end
end

ConsumoCombustible.main
