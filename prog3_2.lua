function infixToPostfix(str)

    print("Assignment #3-2, Zach Selchau, zhselchau1998@yahoo.com")

    local tokens = {} --postfix tokens
    local stack = {} --stack for operators
    local topOfStack=0;
    
    local prec = {
        ^ = 3,
        * = 2,
        / = 2,
        + = 1,
        - = 1
    }

    for i in string.gmatch(str, "%S+") do
        
        if i == "(" then --always put on stack
            topOfStack = topOfStack + 1
            table.insert(stack, topOfStack, i)
        elseif i == ")" then --start popping stuff off stack until ( is reached
            
        elseif i == "^" then --pop off everything that has less precedent
            
        elseif i == "*" then --pop off everything that has less precedent
            
        elseif i == "/" then --pop off everything that has less precedent
            
        elseif i == "+" then --pop off everything that has less precedent
            
        elseif i == "-" then --pop off everything that has less precedent
            
        else
            table.insert(tokens, i) --always put in tokens
        end
        
    end

    return table.concat(tokens, " ")
end
