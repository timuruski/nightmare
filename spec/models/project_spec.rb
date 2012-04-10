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
    context "with no completed iterations" do
      subject { Project.new }
      its(:velocity) { should == Project::DEFAULT_VELOCITY }
    end

    context "with too few completed iterations" do
      let(:iteration) { stub(:points => 3) }
      let(:archive) { [iteration, iteration] }
      subject { Project.new(:archive => archive) }

      its(:velocity) { should == Project::DEFAULT_VELOCITY }
    end

    context "with enough completed iterations" do
      it "averages the last 3 iterations" do
        iteration = stub(:points => 3)
        archive = [iteration, iteration, iteration, iteration]
        project = Project.new(:archive => archive)

        project.velocity.should == 3
      end
    end

  end
end
