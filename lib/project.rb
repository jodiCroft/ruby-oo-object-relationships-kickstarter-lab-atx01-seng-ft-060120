class Project

    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

        def backers
            example = ProjectBacker.all.select do |project_instance|
                project_instance.project == self
            end
            example.map do |projects_array|
                projects_array.backer
            end
        end
end