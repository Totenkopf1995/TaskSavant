class ApplicationController < ActionController::Base
  def after_sign_out_path_for(resource_or_scope)
    root_path # O cualquier otra ruta que desees
  end

  def after_sign_in_path_for(resource)
    tasks_path # Redirigir a la página de creación de tareas después de iniciar sesión
  end
end