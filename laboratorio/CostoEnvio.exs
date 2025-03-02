defmodule CostoEnvio do
  def main do
    cliente = Util.ingresar("Ingrese el nombre del cliente: ", :texto)
    peso = Util.ingresar("Ingrese el peso del paquete en kg: ", :real)
    tipo_envio = Util.ingresar("Ingrese el tipo de envío (Económico, Express, Internacional): ", :texto)
    costo = calcular_costo(tipo_envio, peso)
    "#{cliente}, el costo de envío es $#{costo}"
    |> Util.mostrar_mensaje()
  end

  defp calcular_costo("Económico", peso), do: peso * 5_000
  defp calcular_costo("Express", peso), do: peso * 8_000
  defp calcular_costo("Internacional", peso) when peso <= 5, do: peso * 15_000
  defp calcular_costo("Internacional", peso), do: peso * 12_000
end
CostoEnvio.main()
