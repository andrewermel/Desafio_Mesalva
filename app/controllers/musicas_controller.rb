class MusicasController < ApplicationController
  before_action :set_musica, only: [:show, :update, :destroy]

  # GET /musicas
  def index
    @musicas = Musica.all

    render json: @musicas
  end

  # GET /musicas/1
  def show
    render json: @musica
  end

  # POST /musicas
  def create
    @musica = Musica.new(musica_params)

    if @musica.save
      render json: @musica, status: :created, location: @musica
    else
      render json: @musica.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /musicas/1
  def update
    if @musica.update(musica_params)
      render json: @musica
    else
      render json: @musica.errors, status: :unprocessable_entity
    end
  end

  # DELETE /musicas/1
  def destroy
    @musica.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_musica
      @musica = Musica.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def musica_params
      params.require(:musica).permit(:nome, :duracao, :criado_por, :url)
    end
end
