# frozen_string_literal: true

class PrefixVolumePricingTableNames < ActiveRecord::Migration[4.2]
  def change
    rename_table :volume_prices, :spree_volume_prices unless Spree::VolumePrice.table_exists?
  end
end
