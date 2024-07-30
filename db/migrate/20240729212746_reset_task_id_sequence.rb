class ResetTaskIdSequence < ActiveRecord::Migration[7.1]
  def up
    execute "ALTER SEQUENCE tasks_id_seq RESTART WITH 1"
  end

  def down
    # Opcional: puedes agregar lógica para revertir el cambio si es necesario
  end
end
