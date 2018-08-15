module Api
    module V1
        class DetallesController <  ApplicationController
            def index
              detalles = Detalle.order('created_at DESC') ;
              render json:{status: 'Success',message:'load detalles',data:detalles}, status: :ok
            end
            # GET /detalles/1
            def show                
                render json: @detalle
            end
            # POST /detalles
            def create
                detalle = Detalle.new(detalle_params)

                if detalle.save
                    render json:{status: 'Success',message:'load detalles',data:detalles}, status: :ok
                else
                    render json: detalle.errors, status: :unprocessable_entity
                end
            end
            private
                # Use callbacks to share common setup or constraints between actions.
                def set_detalle
                    @detalle = Detalle.find(params[:id])
                end

                # Only allow a trusted parameter "white list" through.
                def detalle_params
                    params.permit(:nofra, :codigoprd, :cantidad, :impuesto, :precio)
                end
        end
    end
end