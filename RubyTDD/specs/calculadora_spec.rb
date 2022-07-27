require 'rspec'
require 'pry'
require_relative '../logic/calculadora'

describe('Calculadora') do
    calculadora = Calculadora.new

    #Teste com o método de soma
    it('Deve somar dois números inteiros positivos') do
        expect(calculadora.soma(4,5)).to eq 9
    end

    it('Deve somar um número qualquer com 0') do
        expect(calculadora.soma(9,0)).to eq 9
    end

    it('Deve somar dois números inteiros negativos') do
        expect(calculadora.soma(-9,-10)).to eq -19
    end

    it('Deve somar um número negativo com um número positivo') do
        expect(calculadora.soma(-2,20)).to eq 18
    end

    it('Deve somar números decimais') do
        expect(calculadora.soma(5.5,11.1)).to eq 16.6
    end


    #Teste com o método de subtração
    it('Deve subtrair dois números inteiros positivos') do
        expect(calculadora.subtrai(10,5)).to eq 5
    end

    it('Deve subtrair um número qualquer com 0') do
        expect(calculadora.subtrai(2,0)).to eq 2
    end

    it('Deve subtrair dois números inteiros negativos') do
        expect(calculadora.subtrai(-8,-6)).to eq -2
    end

    it('Deve subtrair um número negativo com um número positivo') do
        expect(calculadora.subtrai(-10,4)).to eq -14
    end

    it('Deve subtrair números inteiros, sendo o primeiro número menor que o segundo') do
        expect(calculadora.subtrai(4,16)).to eq -12
    end

    it('Deve subtrair números decimais') do
        expect(calculadora.subtrai(5.8,1.5)).to eq 4.3
    end


    #Teste com o método de multiplicação
    it('Deve multiplicar dois números inteiros positivos') do
        expect(calculadora.multiplica(8,5)).to eq 40
    end

    it('Deve multiplicar um número qualquer com 0') do
        expect(calculadora.multiplica(38,0)).to eq 0
    end

    it('Deve multiplicar dois números inteiros negativos') do
        expect(calculadora.multiplica(-2,-4)).to eq 8
    end

    it('Deve multiplicar um número negativo com um número positivo') do
        expect(calculadora.multiplica(-7,3)).to eq -21
    end

    it('Deve multiplicar números decimais') do
        expect(calculadora.multiplica(2.4,1.2)).to eq 2.88
    end


    #Teste com o método de divisão
    it('Deve dividir dois números inteiros positivos') do
        expect(calculadora.divide(10,5)).to eq 2
    end

    it('Deve dividir um número qualquer com 0') do
        expect(calculadora.divide(5,0)).to include 'Não é possível dividir um número por 0'
    end

    it('Deve dividir dois números inteiros negativos') do
        expect(calculadora.divide(-8,-4)).to eq 2
    end

    it('Deve dividir um número negativo com um número positivo') do
        expect(calculadora.divide(-10,2)).to eq -5
    end

    it('Deve dividir dois números inteiros, sendo o primeiro número menor que o segundo número') do
        expect(calculadora.divide(5,15)).to eq 0
    end

    it('Deve dividir dois números decimais') do
        expect(calculadora.divide(2.4,1.2)).to eq 2
    end


    #Teste com o método de potenciação
    it('Deve calcular a potencia de um número inteiro positivo') do
        expect(calculadora.potencia(2,2)).to eq 4
    end

    it('Deve calcular a potencia de um número inteiro negativo') do
        expect(calculadora.potencia(-2,3)).to eq -8
    end

    it('Deve calcular a potencia, sendo ela 0, de um número inteiro negativo') do
        expect(calculadora.potencia(5,0)).to eq 1
    end

    it('Deve calcular a potencia do número 0') do
        expect(calculadora.potencia(0,5)).to eq 0
    end

    
    #Teste com o método de raiz quadrada
    it('Deve calcular a raiz quadrada de um número inteiro positivo') do
        expect(calculadora.raiz_quad(9)).to eq 3
    end

    it('Deve calcular a raiz quadrada de um número negativo') do
        expect(calculadora.raiz_quad(-2)).to include 'Não é possivel calcular a raiz quadrada de um número negativo'
    end

    it('Deve calcular a raiz quadrada do número 0') do
        expect(calculadora.raiz_quad(0)).to eq 0
    end


    #Teste com o método de raiz cúbica
    it('Deve calcular a raiz cúbica de um número inteiro positivo') do
        expect(calculadora.raiz_cub(8)).to eq 2
    end

    it('Deve calcular a raiz cúbica de um número negativo') do
        expect(calculadora.raiz_cub(-10)).to include 'Não é possivel calcular a raiz cúbica de um número negativo'
    end

    it('Deve calcular a raiz cúbica do número 0') do
        expect(calculadora.raiz_cub(0)).to eq 0
    end


    #Teste com o método de cosseno
    it('Deve calcular o cosseno de um número positivo') do
        expect(calculadora.cosseno(10)).to eq  -0.8390715290764524
    end

    it('Deve calcular o cosseno de um número negativo') do
        expect(calculadora.cosseno(-20)).to eq 0.40808206181339196
    end

    it('Deve calcular o cosseno do número 0') do
        expect(calculadora.cosseno(0)).to eq 1.0
    end


    #Teste com o método de seno
    it('Deve calcular o seno de um número positivo') do
        expect(calculadora.seno(45)).to eq  0.8509035245341184
    end

    it('Deve calcular o seno de um número negativo') do
        expect(calculadora.seno(-90)).to eq -0.8939966636005579
    end

    it('Deve calcular o seno do número 0') do
        expect(calculadora.seno(0)).to eq 0.0
    end


    #Teste com o método de tangente
    it('Deve calcular a tangente de um número positivo') do
        expect(calculadora.tangente(180)).to eq  1.3386902103511544
    end

    it('Deve calcular a tangente de um número negativo') do
        expect(calculadora.tangente(-90)).to eq 1.995200412208242
    end

    it('Deve calcular a tangente do número 0') do
        expect(calculadora.tangente(0)).to eq 0.0
    end


    #Teste com o método de logaritmo 
    it('Deve calcular o logaritmo de um número positivo') do
        expect(calculadora.logaritmo(1)).to eq 0.0
    end
    
    it('Deve calcular o logaritmo de um número negativo') do
        expect(calculadora.logaritmo(-1)).to eq "Não é possível calcular o logaritmo de um número negativo!"
    end
    

    #Teste com o método de logaritmo de base 10
    it('Deve calcular o logaritmo de base 10 de um número positivo') do
        expect(calculadora.logaritmo10(2)).to eq 0.3010299956639812
    end
    
    it('Deve calcular o logaritmo de base 10 de um número negativo') do
        expect(calculadora.logaritmo10(-2)).to eq "Não é possível calcular o logaritmo de um número negativo!"
    end

    #Teste com o método de logaritmo de base 2
    it('Deve calcular o logaritmo de base 2 de um número positivo') do
        expect(calculadora.logaritmo2(2)).to eq 1.0
    end
    
    it('Deve calcular o logaritmo de base 2 de um número negativo') do
        expect(calculadora.logaritmo2(-2)).to eq "Não é possível calcular o logaritmo de um número negativo!"
    end
    

    #Teste com o método gama
    it('Deve calcular a função gama de um número positivo') do
        expect(calculadora.gama(4)).to eq 6.0
    end
    
    it('Deve calcular a função gama de um número negativo') do
        expect(calculadora.gama(-1.5)).to eq 2.3632718012073513
    end

    it('Deve calcular a função gama de um número 0') do
        expect(calculadora.gama(0)).to eq "O valor é infinito"
    end
end
