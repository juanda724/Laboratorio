defmodule SalarioEmpleado do
  def main do
    nombre = Util.ingresar("Ingrese el nombre del empleado: ", :texto)
    salario_base = Util.ingresar("Ingrese el salario base: ", :real)
    horas_extras = Util.ingresar("Ingrese las horas extras trabajadas: ", :entero)
    extra_pago = horas_extras * (salario_base / 160) * 1.5
    salario_total = salario_base + extra_pago
    "El salario total de #{nombre} es de $#{salario_total}"
    |> Util.mostrar_mensaje()
  end
end
SalarioEmpleado.main()
