class StudentsController < ApplicationController

  def index
    if params[:name].nil?
      render json: Student.all
    else
      name = params[:name].downcase
      query_matches = Student.all.select do |s|
        s.first_name.downcase == name || s.last_name.downcase == name
      end
      render json: query_matches
    end
  end

  def grades
  end

  def highest_grade
  end

  def student_spec
    # binding.pry
    render json: Student.find(params[:id])
  end
end
