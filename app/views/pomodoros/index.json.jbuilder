json.array!(@pomodoros) do |pomodoro|
  json.extract! pomodoro, :id, :score, :used_at
  json.url pomodoro_url(pomodoro, format: :json)
end
