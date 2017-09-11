module Matching
  class Config
    class << self
      attr_accessor :trade_executor
      attr_accessor :order_canceled
      attr_accessor :order_book_changed

      def init!
        @trade_executor = -> attrs { puts attrs }
        @order_canceled = -> attrs { puts attrs }
        @order_book_changed = -> attrs { puts attrs }
      end
    end

    init!
  end
end