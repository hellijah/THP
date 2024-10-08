describe "the is_multiple_of_3_or_5? method" do
  it "should return TRUE when an integer is a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5?(3)).to eq(true)
    expect(is_multiple_of_3_or_5?(5)).to eq(true)
    expect(is_multiple_of_3_or_5?(51)).to eq(true)
    expect(is_multiple_of_3_or_5?(45)).to eq(true)
  end
  
  it "should return FALSE when an integer is NOT a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5?(4)).to eq(false)
    expect(is_multiple_of_3_or_5?(7)).to eq(false)
    expect(is_multiple_of_3_or_5?(52)).to eq(false)
    expect(is_multiple_of_3_or_5?(77)).to eq(false)
  end
end

describr
  it "it verify if final number is equal to 23" do
    expect(sum_of_3_or_5_multiples(10)).to eq(23)
  end
  it "it verify if final number is equal to 33" do
    expect(sum_of_3_or_5_multiples(10)).to eq(33)
  end
  it "it verify if final number is equal to 0" do
    expect(sum_of_3_or_5_multiples(0)).to eq(0)
    expect(sum_of_3_or_5_multiples(3)).to eq(0)
  end
  it "it verify if final number is a natural integer" do
      expect(sum_of_3_or_5_multiples(-1)).to eq("Yo ! Je ne prends que les entiers naturels.)")
      expect(sum_of_3_or_5_multiples(1.23)).to eq("Yo ! Je ne prends que les entiers naturels.)")
      expect(sum_of_3_or_5_multiples("chiffre")).to eq("Yo ! Je ne prends que les entiers naturels.)")
  end

end

