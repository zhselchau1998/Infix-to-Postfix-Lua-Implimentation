function InfixToPostfix(str)

    print("Assignment #3-2, Zach Selchau, zhselchau1998@yahoo.com")

    local tokens = {} --postfix tokens
    local stack = {} --stack for operators
    stack[0] = "e"
    local topOfStack=0;
    
    local prec = {}
    prec['^'] = 3
    prec['*'] = 2
    prec['/'] = 2
    prec['+'] = 1
    prec['-'] = 1
    prec['e'] = 0
    prec['('] = -1

    for i in string.gmatch(str, "%S+") do
        
        if i == "(" then --always put on stack
            topOfStack = topOfStack + 1
            table.insert(stack, topOfStack, i)
        elseif i == ")" then --start popping stuff off stack until ( is reached
            while (stack[topOfStack] ~= "(") do
                table.insert(tokens, stack[topOfStack])
                table.remove(stack)
                topOfStack = topOfStack - 1
            end
            table.remove(stack)
        elseif i == "^" then --pop off everything that has more or == precedent
            while (prec[stack[topOfStack]] >= prec [i]) do
                table.insert(tokens, stack[topOfStack])
                topOfStack = topOfStack - 1
                table.remove(stack)
            end
            topOfStack = topOfStack + 1
            table.insert(stack, topOfStack, i)
        elseif i == "*" then --pop off everything that has more or == precedent
            while (prec[stack[topOfStack]] >= prec [i]) do
                table.insert(tokens, stack[topOfStack])
                topOfStack = topOfStack - 1
                table.remove(stack)
            end
            topOfStack = topOfStack + 1
            table.insert(stack, topOfStack, i)
        elseif i == "/" then --pop off everything that has more or == precedent
            while (prec[stack[topOfStack]] >= prec [i]) do
                table.insert(tokens, stack[topOfStack])
                topOfStack = topOfStack - 1
                table.remove(stack)
            end
            topOfStack = topOfStack + 1
            table.insert(stack, topOfStack, i)
        elseif i == "+" then --pop off everything that has more or == precedent
            while (prec[stack[topOfStack]] >= prec [i]) do
                table.insert(tokens, stack[topOfStack])
                topOfStack = topOfStack - 1
                table.remove(stack)
            end
            topOfStack = topOfStack + 1
            table.insert(stack, topOfStack, i)
        elseif i == "-" then --pop off everything that has more or == precedent
            while (prec[stack[topOfStack]] >= prec [i]) do
                table.insert(tokens, stack[topOfStack])
                topOfStack = topOfStack - 1
                table.remove(stack)
            end
            topOfStack = topOfStack + 1
            table.insert(stack, topOfStack, i)
        else
            table.insert(tokens, i) --always put in tokens
        end
        
    end

    while(prec[stack[topOfStack]] ~= 0) do
        table.insert(tokens, stack[topOfStack])
        topOfStack = topOfStack - 1
    end
    
    output = table.concat(tokens, " ")
    --print(output)
    return output
end
