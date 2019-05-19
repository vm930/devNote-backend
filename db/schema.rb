

ActiveRecord::Schema.define(version: 2019_05_14_230834) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "codes", force: :cascade do |t|
    t.string "title"
    t.string "style"
    t.string "mode"
    t.string "code_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "note_codes", force: :cascade do |t|
    t.integer "code_id"
    t.integer "note_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notes", force: :cascade do |t|
    t.string "title"
    t.integer "user_id"
    t.string "date"
    t.string "note_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "password_digest"
    t.string "full_name"
    t.string "bio"
    t.string "email"
    t.string "avatar_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
