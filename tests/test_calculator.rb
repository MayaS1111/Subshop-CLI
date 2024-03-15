def test_run
  subshop1 = Subshop.new
  assert_equal 0, subshop1.run, "Run method failed"
end
end
