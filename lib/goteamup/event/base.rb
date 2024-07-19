module Goteamup
  module Event
    def self.list(params = {})
      List.call(params)
    end

    def self.show(params = {})
      Show.call(params)
    end

    def self.register(params = {})
      Register.call(params)
    end

    def self.cancel_waitlist(params = {})
      CancelWaitlist.call(params)
    end

    def self.cancel(params = {})
      Cancel.call(params)
    end

    def self.join_waitlist(params = {})
      JoinWaitlist.call(params)
    end

    def self.late_cancel(params = {})
      LateCancel.call(params)
    end
  end
end

require_relative './cancel'
require_relative './cancel_waitlist'
require_relative './join_waitlist'
require_relative './late_cancel'
require_relative './list'
require_relative './register'
require_relative './show'
