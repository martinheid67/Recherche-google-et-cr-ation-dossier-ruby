require 'launchy'

def check_if_user_gave_input
    abort("Mets le contenu de ta recherche après ta ligne de code mon petit coquin !") if ARGV.empty?
end

def research
    return user_input = "https://www.google.com/search?q=#{ARGV.join("+")}"
end

def launch
    user_input = research
    Launchy.open(user_input)
end

def perform
    check_if_user_gave_input
    research
    launch
end

perform