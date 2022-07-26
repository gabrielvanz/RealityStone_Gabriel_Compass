require 'rspec'
require_relative '../logic/calculadora'

describe('Calculadora') do
    it('Deve somar dois números inteiros positivos') do
        calculadora = Calculadora.new
        expect(calculadora.soma(4,5)).to eq 9
    end

    it('Deve somar um número qualquer com 0') do
        calculadora = Calculadora.new
        expect(calculadora.soma(9,0)).to eq 9
    end

    it('Deve somar números negativos') do
        calculadora = Calculadora.new
        expect(calculadora.soma(-9,-10)).to eq -19
    end

    it('Deve somar números decimais') do
        calculadora = Calculadora.new
        expect(calculadora.soma(5.5,11.1)).to eq 16.6
    end
end
