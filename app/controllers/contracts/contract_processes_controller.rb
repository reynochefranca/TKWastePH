class Contracts::ContractProcessesController < ApplicationController
  def index
      @contracts = Contract
                    .select("contracts.id, traders.name_kanji AS trader_kanji, places.id AS place_id, places.name_kanji AS place_kanji, waste_types.name AS wt_name, categories.name AS ct_name, shapes.name AS sh_name, units.name AS un_name, packages.name AS pk_name, hazardous_substances.name AS hs_name, disposal_methods.name AS dm_name")
                    .joins("INNER JOIN traders ON contracts.first_party_id = traders.id", :place, :waste_type, :category, :shape, :unit, :package, :hazardous_substance, :disposal_method)
                    .where("contracts.id = ?", params[:contract_id])
      
      @waste_companies = Trader
                          .select("traders.id, traders.name_kanji")
                          .where("traders.division is not null")
                          
      @contract_processes = ContractProcess
                              .select("contract_processes.id, traders.name_kanji AS trader_kanji, contract_processes.process_seq_id, contract_processes.division_process")
                              .joins("INNER JOIN traders ON contract_processes.second_party_id = traders.id")
                              .where("traders.division IS NOT NULL AND contract_processes.contract_id = ?", params[:contract_id])
                          
      @contract_process = ContractProcess.new
  end
  
  def create
      @contract_process = ContractProcess.new(contract_process_params)
      @contract_process.save
      redirect_to :back
  end
  
  def destroy
      @contract_process = ContractProcess.find(params[:id])
      @contract_process.destroy
      redirect_to :back
  end
  
  private
    def contract_process_params
      params.require(:contract_process).permit(:contract_id, :process_seq_id, :second_party_id, :division_process)
    end
end
