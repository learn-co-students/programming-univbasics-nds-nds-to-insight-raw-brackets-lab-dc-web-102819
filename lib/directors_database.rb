require 'yaml'

def directors_database
	rot13 = -> (s) { s.tr('A-Za-z', 'N-ZA-Mn-za-m') }
  @_db ||= YAML.load(rot13.call(File.open("directors_db").read.to_s))
end

hash = {
  "1st Director's Name"=>1234567890,
  "2nd Director's Name"=>1234577890,
  "3rd Director's Name"=>1234709136,
  ...
}