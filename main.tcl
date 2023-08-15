proc reverse {str} {
    
set wordslist [regexp -all -inline {\S+} $str]
#another slicing approach : set wordslist [split $str " "]
#but using regex is more forgiving on input mistakes and imperfections specially on the deviders
set reversedList {}
 for {set i [expr [llength $str] -1] } {$i >=0  } { set i [expr $i - 1] } {
    lappend reversedList [lindex $wordslist $i]
   }
return $reversedList
}



#! main
if 1 {


    puts "\vplease enter a string\nI will try to reverse it:\n"
    set str [gets stdin]
    #set str "hello my name is jebril"
    puts "\vstring before reversing: "
    puts $str
    set reversedString [reverse $str]
    puts "\vstring after reversing: "
    puts "$reversedString\v"

}

