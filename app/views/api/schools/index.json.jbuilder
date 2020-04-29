@schools.each do |school|
  json.set! school do
    json.extract! school, :name
  end
end