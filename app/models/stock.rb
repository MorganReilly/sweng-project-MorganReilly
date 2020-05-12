class Stock < ActiveRecord::Base
    def self.all_deps
        %w(MT PY IB PC FV)
    end

    def self.get_stock_by_department(dep)
        Stock.where(:dep => dep)
    end
end