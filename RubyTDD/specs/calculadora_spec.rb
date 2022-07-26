require 'rspec'
require_relative '../logic/calculadora'

describe('Calculadora') do

    #Teste com o método de soma
    it('Deve somar dois números inteiros positivos') do
        calculadora = Calculadora.new
        expect(calculadora.soma(4,5)).to eq 9
    end

    it('Deve somar um número qualquer com 0') do
        calculadora = Calculadora.new
        expect(calculadora.soma(9,0)).to eq 9
    end

    it('Deve somar dois números inteiros negativos') do
        calculadora = Calculadora.new
        expect(calculadora.soma(-9,-10)).to eq -19
    end

    it('Deve somar um número negativo com um número positivo') do
        calculadora = Calculadora.new
        expect(calculadora.soma(-2,20)).to eq 18
    end

    it('Deve somar números decimais') do
        calculadora = Calculadora.new
        expect(calculadora.soma(5.5,11.1)).to eq 16.6
    end


    #Teste com o método de subtração
    it('Deve subtrair dois números inteiros positivos') do
        calculadora = Calculadora.new
        expect(calculadora.subtrai(10,5)).to eq 5
    end

    it('Deve subtrair um número qualquer com 0') do
        calculadora = Calculadora.new
        expect(calculadora.subtrai(2,0)).to eq 2
    end

    it('Deve subtrair dois números inteiros negativos') do
        calculadora = Calculadora.new
        expect(calculadora.subtrai(-8,-6)).to eq -2
    end

    it('Deve subtrair um número negativo com um número positivo') do
        calculadora = Calculadora.new
        expect(calculadora.subtrai(-10,4)).to eq -14
    end

    it('Deve subtrair números inteiros, sendo o primeiro número menor que o segundo') do
        calculadora = Calculadora.new
        expect(calculadora.subtrai(4,16)).to eq -12
    end

    it('Deve subtrair números decimais') do
        calculadora = Calculadora.new
        expect(calculadora.subtrai(5.8,1.5)).to eq 4.3
    end


    #Teste com o método de multiplicação
    it('Deve multiplicar dois números inteiros positivos') do
        calculadora = Calculadora.new
        expect(calculadora.multiplica(8,5)).to eq 40
    end

    it('Deve multiplicar um número qualquer com 0') do
        calculadora = Calculadora.new
        expect(calculadora.multiplica(38,0)).to eq 0
    end

    it('Deve multiplicar dois números inteiros negativos') do
        calculadora = Calculadora.new
        expect(calculadora.multiplica(-2,-4)).to eq 8
    end

    it('Deve multiplicar um número negativo com um número positivo') do
        calculadora = Calculadora.new
        expect(calculadora.multiplica(-7,3)).to eq -21
    end

    it('Deve multiplicar números decimais') do
        calculadora = Calculadora.new
        expect(calculadora.multiplica(2.4,1.2)).to eq 2.88
    end


    #Teste com o método de divisão
    it('Deve dividir dois números inteiros positivos') do
        calculadora = Calculadora.new
        expect(calculadora.divide(10,5)).to eq 2
    end

    it('Deve dividir um número qualquer com 0') do
        calculadora = Calculadora.new
        expect(calculadora.divide(5,0)).to include 'Não é possível dividir um número por 0'
    end

    it('Deve dividir dois números inteiros negativos') do
        calculadora = Calculadora.new
        expect(calculadora.divide(-8,-4)).to eq 2
    end

    it('Deve dividir um número negativo com um número positivo') do
        calculadora = Calculadora.new
        expect(calculadora.divide(-10,2)).to eq -5
    end

    it('Deve dividir dois números inteiros, sendo o primeiro número menor que o segundo número') do
        calculadora = Calculadora.new
        expect(calculadora.divide(5,15)).to eq 0
    end

    it('Deve dividir dois números decimais') do
        calculadora = Calculadora.new
        expect(calculadora.divide(2.4,1.2)).to eq 2
    end


    #Teste com o método de potenciação
    it('Deve calcular a potencia de um número inteiro positivo') do
        calculadora = Calculadora.new
        expect(calculadora.potencia(2,2)).to eq 4
    end

    it('Deve calcular a potencia de um número inteiro negativo') do
        calculadora = Calculadora.new
        expect(calculadora.potencia(-2,3)).to eq -8
    end

    it('Deve calcular a potencia, sendo ela 0, de um número inteiro negativo') do
        calculadora = Calculadora.new
        expect(calculadora.potencia(5,0)).to eq 1
    end

    it('Deve calcular a potencia do número 0') do
        calculadora = Calculadora.new
        expect(calculadora.potencia(0,5)).to eq 0
    end

    #Teste com o método de raiz
    it('Deve calcular a raiz de um número inteiro positivo') do
        calculadora = Calculadora.new
        expect(calculadora.raiz(9)).to eq 3
    end

    it('Deve calcular a raiz de um número negativo') do
        calculadora = Calculadora.new
        expect(calculadora.raiz(-2)).to include 'Não é possivel calcular a raiz de um número negativo'
    end

    it('Deve calcular a raiz do número 0') do
        calculadora = Calculadora.new
        expect(calculadora.raiz(0)).to eq 0
    end

    
end
