require "pry"

class Backer

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        example = ProjectBacker.all.select do |project_instance|
            project_instance.backer == self
        end
        example.map do |projects_array|
            projects_array.project
        end
    end

end
