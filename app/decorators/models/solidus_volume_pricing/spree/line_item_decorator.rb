module SolidusVolumePricing
  module Spree
    module LineItemDecorator
      def set_pricing_attributes
        if quantity_changed?
          options = SolidusVolumePricing::PricingOptions.from_line_item(self)
          self.money_price = SolidusVolumePricing::Pricer.new(variant).price_for(options)
        end

        super
      end

      ::Spree::LineItem.prepend self
    end
  end
end
