RSpec.describe Nmax do
  it "has a version number" do
    expect(Nmax::VERSION).not_to be nil
  end

  it "find max" do
    expect(`echo "1 a 2 b 3 b 99 c 7 h"| nmax`).to eq("[99]\n")
  end

  it "check with stdin from echo" do
    expect(`echo "dfg 345 df g66 h 45"| nmax 2`).to eq("[66, 345]\n")
  end

  it "check with stdin from file" do
    expect(`cat ./spec/txt.txt| nmax 5`).to eq("[111, 222, 555, 5634, 1111111]\n")
  end
end
