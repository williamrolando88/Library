pp 'test'

string = "abc123"
string[0] = string[0].upcase

p string

p string[0..-2]
# "abc12"

string[0..2] = ""

p string
# "123"
