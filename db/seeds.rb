Place.create(code: 01, name_kanji: 'Jollibee', name_kana: 'Jollibee', abbreviation: 'abbreviation qwerty', zipcode: '1700', prefecture: 'Akita', city: 'Akita', address: '1234 dollar st. orichimaru village', tel1: '098123', tel2: '547900')
Place.create(code: 02, name_kanji: 'Mcdonald', name_kana: 'Mcdonald', abbreviation: 'abbreviation ytrewq', zipcode: '1000', prefecture: 'Kanagawa', city: 'Yokohama', address: '1234 dollar st. sakura village', tel1: '987345', tel2: '320198')
Place.create(code: 03, name_kanji: 'Burger King', name_kana: 'Burger King', abbreviation: 'abbreviation zxcvb', zipcode: '9000', prefecture: 'Mie', city: 'Tsu', address: '1234 dollar st. sasuke village', tel1: '987234', tel2: '321654')
Place.create(code: 04, name_kanji: 'Asus', name_kana: 'Asus', abbreviation: 'abbreviation bvcxz', zipcode: '3000', prefecture: 'Yamaguchi', city: 'Yamaguchi', address: '1234 dollar st. naruto village', tel1: '764789', tel2: '951357')
Place.create(code: 05, name_kanji: 'Samsung', name_kana: 'Samsung', abbreviation: 'abbreviation coffee', zipcode: '0000', prefecture: 'Miyagi', city: 'Sendai', address: '1234 dollar st. sempai village', tel1: '654951', tel2: '753456')

Trader.create(code: 01, name_kanji: 'Jollibee Foods Corporation', name_kana: 'Jollibee Foods Corporation', tel_name: 'Philip company No.', tel: '098123', fax_name: 'Philip fax No.', fax: '547900', email: 'Philip@gmail.com1', division: 'dibesyon I', memo: 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy ', industrial_waste_excellent_certification_type: 'DOTA',)
Trader.create(code: 02, name_kanji: "McDonald's Corporation", name_kana: "McDonald's Corporation", tel_name: 'Edwards company No.', tel: '987345', fax_name: 'Edwards fax No.', fax: '320198', email: 'Edwards@gmail.com2', division: 'dibesyon II', memo: 'text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', industrial_waste_excellent_certification_type: 'Starcraft',)
Trader.create(code: 03, name_kanji: 'Burger King Corporation', name_kana: 'Burger King Corporation', tel_name: 'Jay company No.', tel: '987234', fax_name: 'Jay fax No.', fax: '321654', email: 'Jay@gmail.com3', division: 'dibesyon III', memo: 'It has survived not only five centuries, but also the leap into electronic ', industrial_waste_excellent_certification_type: 'Outlast',)
Trader.create(code: 04, name_kanji: 'AsusTek Computer Inc', name_kana: 'AsusTek Computer Inc', tel_name: 'PhilipPwet company No.', tel: '764789', fax_name: 'PhilipPwet fax No.', fax: '951357', email: 'PhilipPwet@gmail.com4', division: 'dibesyon IV', memo: 'typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem ', industrial_waste_excellent_certification_type: 'LOL',)
Trader.create(code: 05, name_kanji: 'Samsung Electronics Co., Ltd', name_kana: 'Samsung Electronics Co., Ltd', tel_name: 'Kopiko company No.', tel: '654951', fax_name: 'Kopiko fax No.', fax: '753456', email: 'Kopiko@gmail.com5', division: 'dibesyon V', memo: 'Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', industrial_waste_excellent_certification_type: 'Warframe',)

WasteType.create(code: 01, name: 'Industrial')
WasteType.create(code: 02, name: 'General waste')
WasteType.create(code: 03, name: 'Special control industrial waste')
WasteType.create(code: 04, name: 'Business system general waste')
WasteType.create(code: 05, name: 'Household waste')

Unit.create(code: 01, name: 'T')
Unit.create(code: 02, name: 'M3')
Unit.create(code: 03, name: 'Kg')
Unit.create(code: 04, name: 'Liter')
Unit.create(code: 05, name: 'Individuals')

Shape.create(code: 01, name: 'Solid state')
Shape.create(code: 02, name: 'Muddy')
Shape.create(code: 03, name: 'Liquid')
Shape.create(code: 04, name: 'Gas')

Role.create(name: 'Emission company')
Role.create(name: 'Collection and transport company')
Role.create(name: 'Processing company')
Role.create(name: 'Emission operator registration personnel')

Package.create(code: 01, name: 'Rose')
Package.create(code: 02, name: 'Container')
Package.create(code: 03, name: 'Drum')
Package.create(code: 04, name: 'Oil can')
Package.create(code: 05, name: 'Plastic container')

HazardousSubstance.create(code: 01, name: 'Powder or its compound')
HazardousSubstance.create(code: 02, name: 'Cadmium or its compound')
HazardousSubstance.create(code: 03, name: 'Lead or its compound')
HazardousSubstance.create(code: 04, name: 'Organic phosphorus compound')
HazardousSubstance.create(code: 05, name: 'Hexavalent chromium compound')

DisposalMethod.create(code: 01, name: 'Regeneration')
DisposalMethod.create(code: 02, name: 'Reuse (reuse)')
DisposalMethod.create(code: 03, name: 'Material reproduction')
DisposalMethod.create(code: 04, name: 'Other use Raw materialization')
DisposalMethod.create(code: 05, name: 'Fuelization')

EdiUser.create(subscriber_number: 01, connection_registration_number: '000123', published_confirmation_number: '000321', password: 'password', registration_user1_name: 'User I', registration_user1_email: 'UserI@gmail.com', registration_user2_name: 'User jay I', registration_user2_email: 'UserjayI@gmail.com', registration_user3_name: 'User eds I', registration_user3_email: 'UseredsI@gmail.com')
EdiUser.create(subscriber_number: 02, connection_registration_number: '000345', published_confirmation_number: '000957', password: '1234567890', registration_user1_name: 'User II', registration_user1_email: 'UserII@gmail.com', registration_user2_name: 'User jay II', registration_user2_email: 'UserjayII@gmail.com', registration_user3_name: 'User eds II', registration_user3_email: 'UseredsII@gmail.com')
EdiUser.create(subscriber_number: 03, connection_registration_number: '000678', published_confirmation_number: '000318', password: 'qwertyuiop', registration_user1_name: 'User III', registration_user1_email: 'UserIII@gmail.com', registration_user2_name: 'User jay III', registration_user2_email: 'UserjayIII@gmail.com', registration_user3_name: 'User eds III', registration_user3_email: 'UseredsIII@gmail.com')
EdiUser.create(subscriber_number: 04, connection_registration_number: '000890', published_confirmation_number: '000359', password: 'asdfghjkl', registration_user1_name: 'User IV', registration_user1_email: 'UserIV@gmail.com', registration_user2_name: 'User jay IV', registration_user2_email: 'UserjayIV@gmail.com', registration_user3_name: 'User eds IV', registration_user3_email: 'UseredsIV@gmail.com')
EdiUser.create(subscriber_number: 05, connection_registration_number: '000951', published_confirmation_number: '000357', password: 'zxcvbnm', registration_user1_name: 'User V', registration_user1_email: 'UserV@gmail.com', registration_user2_name: 'User jay V', registration_user2_email: 'UserjayV@gmail.com', registration_user3_name: 'User eds V', registration_user3_email: 'UseredsV@gmail.com')

Category.create(code: 01, name: 'Plastic')
Category.create(code: 02, name: 'Metal')
Category.create(code: 03, name: 'Paper')
Category.create(code: 04, name: 'Rubber')
Category.create(code: 05, name: 'Oil')

Car.create(car_type: 'Truck', number: 'AAA 777')
Car.create(car_type: 'Car', number: 'AS 9999')
Car.create(car_type: 'Sedan', number: 'ZCD 456')
Car.create(car_type: 'Pick up', number: 'TYU 321')
Car.create(car_type: 'Wagon', number: 'FGH 312')

Permission.create(trader_id: '1', permit_type: '1', permission_type: '1', permit_number: '000321', permitted_waste_classification: '1', permit_name: 'natural waste collection', allowed_area: '2', permitted_municipality: '2', started_at: '3/2/2017', limited_at: '1/16/2017', industrial_waste_paid_certification_cetegory: 'Classification of Hazardous Wastes', permit_pdf: 'SampleonePdf')
Permission.create(trader_id: '2', permit_type: '2', permission_type: '2', permit_number: '000321', permitted_waste_classification: '2', permit_name: 'natural waste collection', allowed_area: '1', permitted_municipality: '1', started_at: '4/1/2016', limited_at: '1/16/2017', industrial_waste_paid_certification_cetegory: 'Waste Generators', permit_pdf: 'SampletwoPdf')
Permission.create(trader_id: '3', permit_type: '3', permission_type: '5', permit_number: '000987', permitted_waste_classification: '3', permit_name: 'chemical waste collection', allowed_area: '4', permitted_municipality: '4', started_at: '5/10/2015', limited_at: '1/16/2017', industrial_waste_paid_certification_cetegory: 'Waste Transporters', permit_pdf: 'SamplethreePdf')
Permission.create(trader_id: '4', permit_type: '4', permission_type: '4', permit_number: '000345', permitted_waste_classification: '4', permit_name: 'rubber waste collection', allowed_area: '5', permitted_municipality: '5', started_at: '6/11/2014', limited_at: '1/16/2017', industrial_waste_paid_certification_cetegory: 'Waste Transport Record or Manifest System', permit_pdf: 'SamplefourPdf')
Permission.create(trader_id: '5', permit_type: '5', permission_type: '3', permit_number: '000381', permitted_waste_classification: '5', permit_name: 'hazardous waste collection', allowed_area: '3', permitted_municipality: '3', started_at: '7/12/2013', limited_at: '1/16/2017', industrial_waste_paid_certification_cetegory: 'Hazardous Waste Storage and Labeling', permit_pdf: 'SamplefivePdf')

TraderPlace.create(trader_id: '1', place_id: '1', place_type: '1')
TraderPlace.create(trader_id: '2', place_id: '2', place_type: '2')
TraderPlace.create(trader_id: '3', place_id: '3', place_type: '1')
TraderPlace.create(trader_id: '4', place_id: '4', place_type: '2')
TraderPlace.create(trader_id: '5', place_id: '5', place_type: '1')

PlaceUser.create(place_id: '1', user_id: '1')
PlaceUser.create(place_id: '2', user_id: '2')
PlaceUser.create(place_id: '3', user_id: '3')
PlaceUser.create(place_id: '4', user_id: '4')
PlaceUser.create(place_id: '5', user_id: '5')

TraderEdiUser.create(trader_id: '1', edi_user_id: '1', role_id: '1')
TraderEdiUser.create(trader_id: '2', edi_user_id: '2', role_id: '2')
TraderEdiUser.create(trader_id: '3', edi_user_id: '3', role_id: '3')
TraderEdiUser.create(trader_id: '4', edi_user_id: '4', role_id: '4')
TraderEdiUser.create(trader_id: '5', edi_user_id: '5', role_id: '5')

CategoryPermission.create(category_id: '1', permission_id: '1')
CategoryPermission.create(category_id: '2', permission_id: '2')
CategoryPermission.create(category_id: '3', permission_id: '3')
CategoryPermission.create(category_id: '4', permission_id: '4')
CategoryPermission.create(category_id: '5', permission_id: '5')

ContractManifest.create(contract_id: '1', manifest_id: '1')
ContractManifest.create(contract_id: '2', manifest_id: '2')
ContractManifest.create(contract_id: '3', manifest_id: '3')
ContractManifest.create(contract_id: '4', manifest_id: '4')
ContractManifest.create(contract_id: '5', manifest_id: '5')

Transport.create(manifest_id: '1', collection_trader_id: '1', collection_trader_address_id: '1', car_id: '1', from_place_id: '1', to_place_id: '1', transport_method: 'land')
Transport.create(parent_id: '1', manifest_id: '2', collection_trader_id: '2', collection_trader_address_id: '2', car_id: '2', from_place_id: '2', to_place_id: '2', transport_method: 'water')
Transport.create(parent_id: '2', manifest_id: '3', collection_trader_id: '3', collection_trader_address_id: '3', car_id: '3', from_place_id: '3', to_place_id: '3', transport_method: 'land')
Transport.create(parent_id: '3', manifest_id: '4', collection_trader_id: '4', collection_trader_address_id: '4', car_id: '4', from_place_id: '4', to_place_id: '4', transport_method: 'water')
Transport.create(parent_id: '4', manifest_id: '5', collection_trader_id: '5', collection_trader_address_id: '5', car_id: '5', from_place_id: '5', to_place_id: '5', transport_method: 'land')

Contract.create(contract_type: '1', first_party_id: '1', second_party_id: '1', waste_type_id: '1' , category_id: '1', place_id: '1', expected_amount: '1', industrial_waste_name: 'metal', pdf: 'index_metal', shape_id: '1', unit_id: '1', package_id: '1', hazardous_substance_id: '1', disposal_method_id: '1', status: '1')
Contract.create(contract_type: '2', first_party_id: '2', second_party_id: '2', waste_type_id: '2' , category_id: '2', place_id: '2', expected_amount: '2', industrial_waste_name: 'wood', pdf: 'index_wood', shape_id: '2', unit_id: '2', package_id: '2', hazardous_substance_id: '2', disposal_method_id: '2', status: '2')
Contract.create(contract_type: '3', first_party_id: '3', second_party_id: '3', waste_type_id: '3' , category_id: '3', place_id: '3', expected_amount: '3', industrial_waste_name: 'concret', pdf: 'index_concret', shape_id: '3', unit_id: '3', package_id: '3', hazardous_substance_id: '3', disposal_method_id: '3', status: '3')
Contract.create(contract_type: '4', first_party_id: '4', second_party_id: '4', waste_type_id: '4' , category_id: '4', place_id: '4', expected_amount: '4', industrial_waste_name: 'chemical', pdf: 'index_chemical', shape_id: '4', unit_id: '4', package_id: '4', hazardous_substance_id: '4', disposal_method_id: '4', status: '4')
Contract.create(contract_type: '5', first_party_id: '5', second_party_id: '5', waste_type_id: '5' , category_id: '5', place_id: '5', expected_amount: '5', industrial_waste_name: 'solvent', pdf: 'index_solvent', shape_id: '5', unit_id: '5', package_id: '5', hazardous_substance_id: '5', disposal_method_id: '5', status: '5')

Manifest.create(applied_at: '6/11/2015', applied_code: '01', reference_code: '001', applied_commiter_id: '1', pre_conference_code: '0001', pre_conferenced_at: '6/07/2015', category_id: '1', total_amount: '1,000.00', unit_id: '1', shape_id: '1', package_id: '1', hazardous_substance_id: '1', disposal_method_id: '1', collection_commit_trader_id: '1', collection_commit_user_id: '1', collection_finished_at: '6/13/2016', disposal_commit_trader_id: '1', disposal_commit_user_id: '1', disposal_finished_at: '7/12/2016', final_disposal_finished_at: '12/12/2016', final_disposal_trader_plant_id: '1')
Manifest.create(applied_at: '6/11/2015', applied_code: '02', reference_code: '002', applied_commiter_id: '2', pre_conference_code: '0002', pre_conferenced_at: '6/07/2015', category_id: '2', total_amount: '2,000.00', unit_id: '2', shape_id: '2', package_id: '2', hazardous_substance_id: '2', disposal_method_id: '2', collection_commit_trader_id: '2', collection_commit_user_id: '2', collection_finished_at: '6/13/2016', disposal_commit_trader_id: '2', disposal_commit_user_id: '2', disposal_finished_at: '7/12/2016', final_disposal_finished_at: '12/12/2016', final_disposal_trader_plant_id: '2')
Manifest.create(applied_at: '6/11/2015', applied_code: '03', reference_code: '003', applied_commiter_id: '3', pre_conference_code: '0003', pre_conferenced_at: '6/07/2015', category_id: '3', total_amount: '3,000.00', unit_id: '3', shape_id: '3', package_id: '3', hazardous_substance_id: '3', disposal_method_id: '3', collection_commit_trader_id: '3', collection_commit_user_id: '3', collection_finished_at: '6/13/2016', disposal_commit_trader_id: '3', disposal_commit_user_id: '3', disposal_finished_at: '7/12/2016', final_disposal_finished_at: '12/12/2016', final_disposal_trader_plant_id: '3')
Manifest.create(applied_at: '6/11/2015', applied_code: '04', reference_code: '004', applied_commiter_id: '4', pre_conference_code: '0004', pre_conferenced_at: '6/07/2015', category_id: '4', total_amount: '4,000.00', unit_id: '4', shape_id: '4', package_id: '4', hazardous_substance_id: '4', disposal_method_id: '4', collection_commit_trader_id: '4', collection_commit_user_id: '4', collection_finished_at: '6/13/2016', disposal_commit_trader_id: '4', disposal_commit_user_id: '4', disposal_finished_at: '7/12/2016', final_disposal_finished_at: '12/12/2016', final_disposal_trader_plant_id: '4')
Manifest.create(applied_at: '6/11/2015', applied_code: '05', reference_code: '005', applied_commiter_id: '5', pre_conference_code: '0005', pre_conferenced_at: '6/07/2015', category_id: '5', total_amount: '5,000.00', unit_id: '5', shape_id: '5', package_id: '5', hazardous_substance_id: '5', disposal_method_id: '5', collection_commit_trader_id: '5', collection_commit_user_id: '5', collection_finished_at: '6/13/2016', disposal_commit_trader_id: '5', disposal_commit_user_id: '5', disposal_finished_at: '7/12/2016', final_disposal_finished_at: '12/12/2016', final_disposal_trader_plant_id: '5')

