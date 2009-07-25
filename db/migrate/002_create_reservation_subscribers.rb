class CreateReservationSubscribers < ActiveRecord::Migration
  def self.up
    create_table :reservation_subscribers do |t|
      t.string :first_name
      t.string :last_name
      t.string :user_name
      t.string :password
      t.string :phone
      t.string :email
      t.text  :address

      t.timestamps
    end
  end

  def self.down
    drop_table :reservation_subscribers
  end
end
