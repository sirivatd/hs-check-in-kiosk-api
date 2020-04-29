@majors.each do |major|
json.set! major do
json.extract! major, :name
end
end