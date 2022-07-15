class MusicasController < ApplicationController
  before_action :set_musica, only: [:show, :update, :destroy]


  def index
    
    @musicas = filtrar_musica
    render json: @musicas
  
  end


  def show
    render json: @musica
  end


  def create
    @musica = Musica.new(musica_params)

    if @musica.save
      dispara_email
      render json: @musica, status: :created, location: @musica
    else
      render json: @musica.errors, status: :unprocessable_entity
    end
  end

 
  def update
    if @musica.update(musica_params)
      render json: @musica
    else
      render json: @musica.errors, status: :unprocessable_entity
    end
  end


  def destroy
    @musica.destroy
  end

  private

    def dispara_email
      UsuarioMailer.musica_adicionada.deliver_now!
    end

    def set_musica
      @musica = Musica.find(params[:id])
    end

    def musica_params
      params.require(:musica).permit(:nome, :duracao, :criado_por, :url)
    end

    def filtrar_musica
     
       if params['nome'].present?
          Musica.where(nome: params['nome'])
       elsif params['criado_por'].present? 
          Musica.where(criado_por: params['criado_por'])
       else
          Musica.all
       end
    end
end
