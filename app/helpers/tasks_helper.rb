module TasksHelper
  def completed_message(completed)
    completed ? 'This task is completed' : 'This task is not completed yet'
  end
end
