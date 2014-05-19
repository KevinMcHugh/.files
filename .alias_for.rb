
def nice_alias(s, f)
  short = s.strip
  full = f.strip
  throw ArgumentError.new('no spaces allowed ;(') if spaces_in?(short)
  [alias_for(short, "command #{full}"), alias_for(full,
    "echo \"********************just say #{short}********************\"; #{short}")]
end

def alias_for(aliaz, command)
  "alias #{aliaz}='#{command}'" unless spaces_in?(aliaz)
end

def spaces_in?(string)
  string.split(" ").length > 1
end

nice = nice_alias(ARGV[0], ARGV[1]).compact

open('/Users/kevin.mchugh/.bash_profile', 'a') { |f|
  f.puts nice
}

