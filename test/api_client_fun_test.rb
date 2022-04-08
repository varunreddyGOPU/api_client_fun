require "test_helper"

class ApiClientFunTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::ApiClientFun::VERSION
  end

  def test_it_does_something_useful
    assert false
  end

  # Feel free to change this.
  def test_returns_profile
    profile = ApiClientFun.profile_for_name('Philip J Fry')
    expected_profile = { age: 25, gender: "M", planet: "Earth", species: "Human", status: "Alive" }
    
    profile = ApiClientFun.profile_for_name('Turanga Leela')
    expected_profile = { age:25,gender:"F",planet:"Earth",species:"Mutant, Human",status:"Alive"}
    
    profile = ApiClientFun.profile_for_name('Bender Bending Rodríguez')
    expected_profile = { age:4,gender:"M",planet:"Earth",species:"Robot",status:"Alive" }
    
    profile = ApiClientFun.profile_for_name('Planet Express Ship')
    expected_profile = { age:"N/A",gender:"N/A",planet:"Earth",species:"Robotic Spacecraft",status:"N/A"}
    
    profile = ApiClientFun.profile_for_name('Dr. John A. Zoidberg Ph.D')
    expected_profile = {age:86,gender:"M",planet:"Decapod 10",species:"Decapodian",status:"Alive"}
    
    profile = ApiClientFun.profile_for_name('Zapp Brannigan')
    expected_profile = { age:28,gender:"M",planet:"Earth",species:"Human",status:"Alive" }
    assert_equal(expected_profile, profile)
  end
end
