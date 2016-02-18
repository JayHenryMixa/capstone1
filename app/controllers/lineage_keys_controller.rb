class LineageKeysController < ApplicationController

  def index 
    @lineage_keys = Lineage_key.all
  end

end
