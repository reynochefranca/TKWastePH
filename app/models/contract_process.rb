class ContractProcess < ActiveRecord::Base
    belongs_to :contract
    
    Division = ['Transporter', 'Storage', 'Disposer']
end
