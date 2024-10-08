describe "the caesar_cipher method" do
    it "should work with lowercase letters" do
      expect(caesar_cipher("abc", 3)).to eq("def")
    end
  
    it "should work with uppercase letters" do
      expect(caesar_cipher("XYZ", 3)).to eq("ABC")
    end
  
    it "should handle mixed case" do
      expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
    end
  
    it "should handle non-alphabetic characters" do
      expect(caesar_cipher("Hello, World!", 10)).to eq("Rovvy, Gybvn!")
    end
  
    it "should return the original string if shift is 0" do
      expect(caesar_cipher("Hello", 0)).to eq("Hello")
    end
  
    it "should work with negative shifts (decoding)" do
      expect(caesar_cipher("Bmfy f xywnsl!", -5)).to eq("What a string!")
    end
  end