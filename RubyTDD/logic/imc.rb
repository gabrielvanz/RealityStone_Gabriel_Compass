def imc(peso, altura)
    if altura == 0
        return 'Não é possível calcular o IMC com a altura = 0!'
    end
    imc_calculado = peso / (altura * altura)
    imc_calculado.round(1)
end