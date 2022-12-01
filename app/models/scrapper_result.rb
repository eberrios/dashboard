class ScrapperResult < ApplicationRecord
    # t.integer "site_captures_id"
    # t.integer "scheduled_works_id"
    # t.string "brand"
    # t.text "name"
    # t.text "url"
    # t.string "price"
    # t.string "sale"
    # t.datetime "created_at", precision: 6, null: false
    # t.datetime "updated_at", precision: 6, null: false
    # t.string "sku"

    


    def self.fetch(options = {})
        collection = super(options)
        collection = attribute_filter(collection, "created_at", options)
        collection = attribute_filter(collection, "name", options)
        collection = attribute_filter(collection, "sku", options)
        collection = collection.where("created_at >= ? between created_at <= ?", created_at, created_at)
        #collection = blocked_unblocked_filter(collection, options)
        #collection = document_query(collection, options)
        collection
    end
end
