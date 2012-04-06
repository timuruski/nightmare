require_relative '../../app/models/project'

describe Project do
  describe "#name" do
    subject { Project.new(:name => 'project-x') }
    its(:name) { should == 'project-x' }
  end

  describe "#started_on" do
    let(:today) { Date.today }

    subject { Project.new(:started_on => today) }
    its(:started_on) { should == today }
  end

  describe "#velocity" do
    context "with no iterations" do
      subject { Project.new }
      its(:velocity) { should == 0 }
    end
  end
end
