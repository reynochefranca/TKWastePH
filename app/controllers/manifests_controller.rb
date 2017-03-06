class ManifestsController < ApplicationController
  def index
    #@manifests = Manifest.select('manifests.id,manifests.applied_at,manifests.applied_code,manifests.reference_code,manifests.applied_commiter_id,
    #manifests.pre_conference_code,manifests.pre_conferenced_at,manifests.category_id,manifests.total_amount,manifests.unit_id,manifests.shape_id,
    #manifests.package_id,manifests.hazardous_substance_id,manifests.disposal_method_id,manifests.collection_commit_trader_id,manifests.collection_commit_user_id,
    #manifests.collection_finished_at,manifests.disposal_commit_trader_id,manifests.disposal_commit_user_id,manifests.disposal_finished_at,
    #manifests.final_disposal_finished_at,manifests.final_disposal_trader_plant_id,categories.name AS category_name,categories.id,units.id,units.name AS unit_name,
    #shapes.id,shapes.name AS shape_name,packages.id,packages.name AS package_name,hazardous_substances.id,hazardous_substances.name AS hazardous_name')
    #                      .joins('INNER JOIN categories ON manifests.category_id=categories.id
    #                      INNER JOIN units ON manifests.unit_id=units.id
    #                      INNER JOIN shapes ON manifests.shape_id=shapes.id
    #                      INNER JOIN packages ON manifests.package_id=packages.id
    #                      INNER JOIN hazardous_substances ON manifests.hazardous_substance_id=hazardous_substances.id')
     
    @manifests = Manifest.select('manifests.id,manifests.reference_code,manifests.total_amount,units.id,units.name AS unit_name,shapes.name AS shape_name,packages.name AS package_name,categories.name AS category_name,categories.code')
                          .joins('INNER JOIN categories ON manifests.category_id=categories.id
                          INNER JOIN units ON manifests.unit_id=units.id
                          INNER JOIN shapes ON manifests.shape_id=shapes.id
                          INNER JOIN packages ON manifests.package_id=packages.id')
                          
    if params[:q] && params[:q].reject { |k, v| v.blank? }.present?
      @search = Category.ransack(params[:q])
      @category_search = @search
                                .result(distinct: true)
                                .select("categories.id, categories.code, categories.name")
                                #.joins(:trader, :place, :user) 
                                
                                # Joining Nested Associations (Multiple Level)
                                # .result(distinct: true)
                                # .select("trader_places.id, traders.id AS trader_id, traders.name_kanji AS trader_kanji, traders.name_kana AS trader_kana, places.id AS place_id, places.zipcode, places.prefecture, places.tel1, places.tel2, places.address, places.city, users.id AS user_id, users.name_kanji AS user_kanji, users.name_kana AS user_kana, users.email, edi_users.id AS edi_user_id, edi_users.connection_registration_number, edi_users.password, edi_users.registration_user1_name, edi_users.registration_user1_email, edi_users.registration_user2_name, edi_users.registration_user2_email, edi_users.registration_user3_name, edi_users.registration_user3_email")
                                # .joins(:trader, :place, :user, :trader_edi_user, :edi_user) 
    else
      @search = Category.ransack
      @category_search = []
    end
                          
    @manifest = Manifest.new
    @units = Unit.all
    @packages = Package.all
    @shapes = Shape.all
    @categories = Category.all
  end
  
  def new
    @manifest = Manifest.new
    @temp = Manifest.new
  end
  
  def create
    @manifest = Manifest.new(manifest_params)
    @manifest.save
    redirect_to action: "index"
  end
  
  private
  def manifest_params
    params.require(:manifest).permit(:applied_at,:applied_code,:reference_code,:applied_commiter_id,:pre_conference_code,:pre_conference_at,:category_id,:total_amount,:unit_id,:shape_id,:package_id,:hazardous_substance_id,:disposal_method_id,:collection_commit_trader_id,:collection_commit_user_id,:collection_finished_at,:disposal_commit_trader_id,:disposal_commit_user_id,:collection_finished_at,:disposal_finished_at,:final_disposal_finished_at,:final_disposal_trader_plant_id)
  end
end
