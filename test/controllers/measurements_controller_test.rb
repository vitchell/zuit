require 'test_helper'

class MeasurementsControllerTest < ActionController::TestCase
  setup do
    @measurement = measurements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:measurements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create measurement" do
    assert_difference('Measurement.count') do
      post :create, measurement: { arm_length_left: @measurement.arm_length_left, arm_length_right: @measurement.arm_length_right, bicep: @measurement.bicep, chest: @measurement.chest, chest_type: @measurement.chest_type, crotch: @measurement.crotch, height: @measurement.height, hip: @measurement.hip, knee: @measurement.knee, leg_left: @measurement.leg_left, leg_right: @measurement.leg_right, neck: @measurement.neck, nip_to_nip: @measurement.nip_to_nip, posture_type: @measurement.posture_type, seat_type: @measurement.seat_type, shoulder_left: @measurement.shoulder_left, shoulder_right: @measurement.shoulder_right, shoulder_to_shoulder: @measurement.shoulder_to_shoulder, shoulder_type: @measurement.shoulder_type, stomach: @measurement.stomach, stomach_type: @measurement.stomach_type, thigh: @measurement.thigh, torso_length: @measurement.torso_length, user_id: @measurement.user_id, waist: @measurement.waist, waist_to_knee: @measurement.waist_to_knee, wrist: @measurement.wrist }
    end

    assert_redirected_to measurement_path(assigns(:measurement))
  end

  test "should show measurement" do
    get :show, id: @measurement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @measurement
    assert_response :success
  end

  test "should update measurement" do
    patch :update, id: @measurement, measurement: { arm_length_left: @measurement.arm_length_left, arm_length_right: @measurement.arm_length_right, bicep: @measurement.bicep, chest: @measurement.chest, chest_type: @measurement.chest_type, crotch: @measurement.crotch, height: @measurement.height, hip: @measurement.hip, knee: @measurement.knee, leg_left: @measurement.leg_left, leg_right: @measurement.leg_right, neck: @measurement.neck, nip_to_nip: @measurement.nip_to_nip, posture_type: @measurement.posture_type, seat_type: @measurement.seat_type, shoulder_left: @measurement.shoulder_left, shoulder_right: @measurement.shoulder_right, shoulder_to_shoulder: @measurement.shoulder_to_shoulder, shoulder_type: @measurement.shoulder_type, stomach: @measurement.stomach, stomach_type: @measurement.stomach_type, thigh: @measurement.thigh, torso_length: @measurement.torso_length, user_id: @measurement.user_id, waist: @measurement.waist, waist_to_knee: @measurement.waist_to_knee, wrist: @measurement.wrist }
    assert_redirected_to measurement_path(assigns(:measurement))
  end

  test "should destroy measurement" do
    assert_difference('Measurement.count', -1) do
      delete :destroy, id: @measurement
    end

    assert_redirected_to measurements_path
  end
end
