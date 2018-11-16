function infixToPostfix(str)

    local tokens = {}
    local stack = {}

    for i in string.gmatch(str, "%S+") do
        
        if i == "(" then
            
        elseif i == ")" then
            
        elseif i == "^" then
            
        elseif i == "*" then
            
        elseif i == "/" then
            
        elseif i == "+" then
            
        elseif i == "-" then
            
        else
            
        end
        
    end
end
