

ActiveRecord::Schema.define(version: 20180216081941) do

  create_table "blogs", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
