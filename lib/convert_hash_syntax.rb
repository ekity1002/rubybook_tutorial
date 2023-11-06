def convert_hash_syntax(syntax)
    syntax.gsub(/:(\w+) *=> */) do
        "#{$1}: "
    end
end