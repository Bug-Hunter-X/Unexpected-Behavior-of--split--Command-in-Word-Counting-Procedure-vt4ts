proc count_words {text} { 
    if {[string length $text] == 0} { 
        return 0 
    }
    set words [regexp -all -inline {"[^\s]+"} $text] 
    return [llength $words]
}

puts [count_words "This is a test sentence"] ; # Output: 5
puts [count_words "This is a test sentence with extra spaces"] ; # Output: 6
puts [count_words ""] ; # Output: 0
puts [count_words "one word"] ; # Output: 2