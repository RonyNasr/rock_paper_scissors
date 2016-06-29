require ("rspec")
require ("rock_paper_scissors")


describe('String#rock_paper_scissors') do
  it ("returns true when rock is played against scissors") do
    expect("rock".beats?("scissors")).to(eq(true))
  end

  it ("returns false when paper is played against scissors") do
    expect("paper".beats?("scissors")).to(eq(false))
  end

  it ("returns true when scissors is played against paper") do
    expect("scissors".beats?("paper")).to(eq(true))
  end

  it ("returns false when paper is played against scissors") do
    expect("paper".beats?("rock")).to(eq(true))
  end

  it ("returns false when paper is played against paper") do
    expect("paper".beats?("paper")).to(eq("tie"))
  end

end
