class Users::SessionsController < Devise::SessionsController
  def create
    super do |resource|
      if resource.persisted?
        # Aquí puedes agregar lógica adicional si es necesario
      end
    end
  end

  def new
    super
  end

  def destroy
    super
  end
end