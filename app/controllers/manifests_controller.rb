class ManifestsController < ApplicationController
  def index
    @manifests = Manifest.all
    #select("manifests.id,manifests.applied_at,manifests.applied_code,manifests.referance_code,manifests.applied_commiter_id")
  end
  
  def new
    @manifest = Manifest.new
  end
  
  def create
  end
  
  private
  def manifest_params
    params.require(:manifest).permit(:applied_at,:applied_code,:referance_code,:applied_commiter_id,:pre_conference_code,:pre_conferenced_at,:category_id,:total_amount,:unit_id,:shape_id,:package_id,:hazardous_substance_id,:disposal_method_id,:collection_commit_trader_id,
    :collection_commit_user_id,:collection_finished_at,:disposal_commit_trader_id,:disposal_commit_user_id,:disposal_finished_at,:final_disposal_finished_at,:final_disposal_trader_plant_id)
  end
end
