# simulo poblaciones
# 20% datos faltantes para todos los individuos

pobSimulada <- simulaPob(k = 3, 
                         n = 100, 
                         d = 1000, 
                         metodo = "uniforme", 
                         p = 0.2)

completacionPrueba <- matrixCompletion(M = pobSimulada$matriz_na, 
                                       tau = 1e5, 
                                       delta = 20, 
                                       kappa = (1-0.0005), 
                                       eps = 1e-4, 
                                       maxit = 600)
