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

    def potencia (a,n)
        a**n        
    end    

    def raiz (a)
        if a < 0
            return 'Não é possivel calcular a raiz de um número negativo'
        end
        Math.sqrt(a)
    end

    def cosseno (a)
        Math.cos(a)
    end
    
    def seno (a)
        Math.sin(a)
    end

    def tangente (a)
        Math.tan(a)
    end

end