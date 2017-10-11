require "test_helper"

class Ase::Todo::AppTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Ase::Todo::App::VERSION
  end

  # def test_it_does_something_useful
  #   assert false
  # end


  def test_the_component_stores_tasks
    Ase::Todo::Cmp.clear
    Ase::Todo::Cmp.add_task('testing 1')
    assert_same(1, Ase::Todo::Cmp.repo.count)
    Ase::Todo::Cmp.add_task('testing 1')
    assert_same(2, Ase::Todo::Cmp.repo.count)

  end

  def test_the_app_stores_tasks
    Ase::Todo::App.clear
    Ase::Todo::App.add_task('testing 2')
    Ase::Todo::App.add_task('testing 2')
    assert_same(1, Ase::Todo::App.repo.count)
  end
end
