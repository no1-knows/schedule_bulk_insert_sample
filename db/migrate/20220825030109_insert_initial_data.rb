class InsertInitialData < ActiveRecord::Migration[7.0]
  def change
    User.create(name: "田村")
    User.create(name: "鈴木")
    User.create(name: "山田")
  end
end
