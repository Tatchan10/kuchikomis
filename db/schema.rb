# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20190716140604) do

  create_table "likes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.integer  "review_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["review_id"], name: "index_likes_on_review_id", using: :btree
    t.index ["user_id", "review_id"], name: "index_likes_on_user_id_and_review_id", unique: true, using: :btree
    t.index ["user_id"], name: "index_likes_on_user_id", using: :btree
  end

  create_table "products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "introduce"
    t.string   "image_product_sum"
    t.string   "image_product_hed"
    t.integer  "price"
    t.string   "date"
    t.string   "capacity"
    t.integer  "junre"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "evaluation"
    t.integer  "score"
  end

  create_table "reviews", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "point"
    t.string   "content"
    t.integer  "user_id"
    t.integer  "product_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "likes_count", default: 0, null: false
    t.index ["product_id"], name: "index_reviews_on_product_id", using: :btree
    t.index ["user_id", "product_id"], name: "index_reviews_on_user_id_and_product_id", unique: true, using: :btree
    t.index ["user_id"], name: "index_reviews_on_user_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.integer  "age"
    t.integer  "sex"
    t.string   "image_user"
    t.string   "introduce"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "likes", "reviews"
  add_foreign_key "likes", "users"
  add_foreign_key "reviews", "products"
  add_foreign_key "reviews", "users"
end
