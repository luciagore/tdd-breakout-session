class Assert
  def self.isTrue(assertion)
    p assertion == true
  end

  def self.isEqual(actual, expected)
    p actual == expected
  end

  def self.contains(array, elementToMatch)
    p array.include?(elementToMatch)
  end
end
