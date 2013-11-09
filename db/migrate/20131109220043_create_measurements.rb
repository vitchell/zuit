class CreateMeasurements < ActiveRecord::Migration
  def change
    create_table :measurements do |t|
      t.integer :user_id
      t.decimal :height
      t.decimal :neck
      t.decimal :shoulder_to_shoulder
      t.decimal :shoulder_right
      t.decimal :shoulder_left
      t.decimal :bicep
      t.decimal :arm_length_right
      t.string :arm_length_left
      t.decimal :wrist
      t.decimal :torso_length
      t.decimal :chest
      t.decimal :nip_to_nip
      t.decimal :stomach
      t.decimal :waist
      t.decimal :hip
      t.decimal :waist_to_knee
      t.decimal :leg_right
      t.decimal :leg_left
      t.decimal :crotch
      t.decimal :thigh
      t.decimal :knee
      t.string :shoulder_type
      t.string :chest_type
      t.string :stomach_type
      t.string :posture_type
      t.string :seat_type

      t.timestamps
    end
  end
end
