class PersonasController < ApplicationController

  # Lista de Personas
def index
  @personas = Persona.all
end

# Crear Persona
def new
  @persona = Persona.new
end

def create
  @persona = Persona.new(persona_params)
  if @persona.save
    redirect_to personas_path
  else
    render :new
  end
end

# Editar Persona
def edit
  @persona = Persona.find(params[:id])
end

def update
  @persona = Persona.find(params[:id])
  if @persona.update(persona_params)
    redirect_to personas_path
  else
    render :edit
  end
end

# Eliminar Persona
def destroy
  @persona = Persona.find(params[:id])
  @persona.destroy
   redirect_to personas_path
end

def persona_params
  params.require(:persona).permit(:nombre, :apellidoPa, :apellidoMa,
    :telefono, :fechaNacimiento, :catsexo_id)
end

end
