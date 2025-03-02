defmodule ConversionUnidades do
  def main do
    nombre_usuario = "ingrese  nombre de usuario"
    |> Util.ingresar(:texto)

    temperatura_celcius = "ingrese la temperatura en grados Celcius"
    |> Util.ingresar(:real)

    conversion_F = calcular_conversion_F(temperatura_celcius)
    conversion_K = calcular_conversion_K(temperatura_celcius)

    generar_mensaje(conversion_F, conversion_K, nombre_usuario)
    |> Util.mostrar_mensaje()
  end

  defp calcular_conversion_F(temperatura_celcius) do
    (temperatura_celcius * 9/5) + 32
  end

  defp calcular_conversion_K(temperatura_celcius) do
    temperatura_celcius + 273.15
  end

  defp generar_mensaje(conversion_F, conversion_K, nombre_usuario) do
    conversion_F = conversion_F |> Float.round(1)
    conversion_K = conversion_K |> Float.round(1)
    "#{nombre_usuario} la temperatura es:\n#{conversion_F} °F\n#{conversion_K} K"
  end
end

ConversionUnidades.main
