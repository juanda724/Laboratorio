defmodule Peaje do
  def main do
    placa = Util.ingresar("Ingrese la placa del vehículo: ", :texto)
    tipo = Util.ingresar("Ingrese el tipo de vehículo (Carro, Moto, Camión): ", :texto)
    peso = Util.ingresar("Ingrese el peso del vehículo (toneladas): ", :real)
    tarifa = calcular_tarifa(tipo, peso)
    "Vehículo #{placa} (#{tipo}) debe pagar $#{tarifa}"
    |> Util.mostrar_mensaje()
  end

  defp calcular_tarifa("Carro", _), do: 10_000
  defp calcular_tarifa("Moto", _), do: 5_000
  defp calcular_tarifa("Camión", peso), do: 20_000 + 2_000 * trunc(peso)
end
Peaje.main()
