module Zendesk
  module Comment
    #example input {"value" => "my comment", "public" => true}
    def create_comment(ticket_id, input, options = {})
      make_request("tickets/#{ticket_id}", ({:update => self.to_format('comment', input)}), options)
    end
  end
end