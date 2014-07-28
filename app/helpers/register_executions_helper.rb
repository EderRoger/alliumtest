module RegisterExecutionsHelper

  def get_avg_by_day_number_and_onion_id(day_number, onion_id)
    avg = RegisterExecution.all.where(:onion_id => onion_id, :day_number => day_number).map { |re| re.root_size }.reduce(:+).to_f / RegisterExecution
    .all
    .where(:onion_id  => onion_id, :day_number => day_number).size
    if avg.nan?
      0
    else
      avg
    end
  end

end
