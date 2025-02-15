proc count_words {text} { 
    set wordCount 0
    foreach {word} [split $text] { 
        incr wordCount
    }
    return $wordCount
}

puts [count_words "This is a test sentence"] ; # Output: 5
puts [count_words "This is a test sentence with extra spaces"] ; # Output: 7
puts [count_words ""] ; # Output: 0
puts [count_words "one word"] ; # Output: 2