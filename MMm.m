% Vamos a hacer una funci�n que dados el tiempo de servicio, el tiempo de
% llegada de usuarios y el n�mero de servidores calcule el tiempo promedio
% que tarda un usuario de salir del sistema

function [TiempoMedio] = MMm(lambda, mu, m)
    ro = (lambda / (m*mu));
    sumatoria = 0;
    for n = 0:m-1
        sumatoria = sumatoria + ((lambda / mu)^n) / factorial(n);
    end
    Po = 1 / (sumatoria + (((lambda / mu)^m) / factorial(m)) * (m * mu / (m*mu - lambda)))
    Pq = (Po * (m^m) * ro^m) / (factorial(m) * (1 - ro));
    
    Tiempo_medio = (1 / mu) + (ro * Pq) / (lambda * (1-ro))
end
        