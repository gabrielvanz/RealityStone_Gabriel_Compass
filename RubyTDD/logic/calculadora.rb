include Math

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

    def raiz_quad (a)
        if a < 0
            return 'Não é possivel calcular a raiz quadrada de um número negativo'
        end
        sqrt(a)
    end
    
    def raiz_cub (a)
        if a < 0
            return 'Não é possivel calcular a raiz cúbica de um número negativo'
        end
        cbrt(a)
    end

    def cosseno (a)
        cos(a)
    end
    
    def seno (a)
        sin(a)
    end

    def tangente (a)
        tan(a)
    end

    def logaritmo(a)
        log(a)
        rescue Math::DomainError
            "Não é possível calcular o logaritmo de um número negativo!"
    end

    def logaritmo10(a)
        log10(a)
        rescue Math::DomainError
            "Não é possível calcular o logaritmo de um número negativo!"
    end

    def logaritmo2(a)
        log2(a)
        rescue Math::DomainError
            "Não é possível calcular o logaritmo de um número negativo!"
    end

    def hipotenusa(a,b)
        return hypot(a,b).round(2)
    end

    def gama(a)
        if a == 0 
            return "O valor é infinito"
        end
        gamma(a)
    end

    def porcentagem(a,p)
        return a * p / 100
    end
end
