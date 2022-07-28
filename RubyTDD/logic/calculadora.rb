include Math

class Calculadora
    #Método de Soma
    def soma(valorA, valorB)
        return valorA + valorB
    end

    #Método de Subtração
    def subtrai(valorA, valorB)
        return valorA - valorB
    end    

    #Método de Multiplicação
    def multiplica(valorA, valorB)
        return valorA * valorB
    end    

    #Método de Divisão
    def divide(valorA, valorB)
        if valorA == 0 or valorB == 0 
            return 'Não é possível dividir um número por 0!'
        end
        return valorA / valorB
    end

    #Método de Potenciação
    def potencia(valorA, valorExpoente)
        return valorA ** valorExpoente        
    end    

    #Método de Radiciação quadrada
    def raiz_quad(valorA)
        if valorA < 0
            return 'Não é possivel calcular a raiz quadrada de um número negativo'
        end
        return sqrt(valorA)
    end
    
    #Método de Radiciação cúbica
    def raiz_cub(valorA)
        if valorA < 0
            return 'Não é possivel calcular a raiz cúbica de um número negativo'
        end
        return cbrt(valorA)
    end

    #Método do Cosseno
    def cosseno(valorA)
        return cos(valorA)
    end
    
    #Método do Seno
    def seno(valorA)
        return sin(valorA)
    end

    #Método de Tangente
    def tangente(valorA)
        return tan(valorA)
    end

    #Método de Logaritmo
    def logaritmo(valorA)
        return "Não é possível calcular o logaritmo de um número negativo!" if valorA < 0
        return "O valor é -Infinito" if valorA == 0
        return log(valorA)
    end

    #Método de Logaritmo de base 10
    def logaritmo10(valorA)
        return "Não é possível calcular o logaritmo de base 10 de um número negativo!" if valorA < 0
        return "O valor é -Infinito" if valorA == 0
        return log10(valorA)
    end

    #Método de Logaritmo de base 2
    def logaritmo2(valorA)
        return "Não é possível calcular o logaritmo de base 2 de um número negativo!" if valorA < 0
        return "O valor é -Infinito" if valorA == 0
        return log2(valorA) 
    end

    #Método de Hipotenusa
    def hipotenusa(valorA, valorB)
        return hypot(valorA, valorB).round(2)
    end

    #Método de Gama
    def gama(valorA)
        if valorA == 0 
            return "O valor é Infinito"
        end
        return gamma(valorA)
    end

    #Método de Porcentagem
    def porcentagem(valorA,valorPorcentagem)
        return valorA * valorPorcentagem / 100
    end
end
