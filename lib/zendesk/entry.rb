module Zendesk
  module Entry

    def get_entries(forum_id)
      make_request("forums/#{forum_id}/entries")
    end

    def get_entry(id)
      make_request("entries/#{id}")
    end

    def create_entrie(input)
      make_request("entries", :create => self.to_format('entrie', input))
    end

    def update_entrie(input)
      make_request("entries", :update => self.to_format('entrie', input))
    end

    def delete_entrie(id)
      make_request("entries/#{id}", :destroy => true)
    end
  end
end
