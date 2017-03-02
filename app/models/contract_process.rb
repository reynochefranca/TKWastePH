class ContractProcess < ActiveRecord::Base
    has_one :contract
    
    Division = ['Transporter', 'Storage', 'Disposer']
end
