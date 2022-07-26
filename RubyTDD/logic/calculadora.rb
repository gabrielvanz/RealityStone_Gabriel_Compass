class Calculadora
    def soma (a,b)
        a+b
    end
        
    def subtrai (a,b)
        a-b
    end    

    def multiplica (a,b)
        a*b
    end    

    def divide (a,b)
        if a == 0 or b == 0 
            return 'Não é possível dividir um número por 0!'
        end
        a/b
    end    
end