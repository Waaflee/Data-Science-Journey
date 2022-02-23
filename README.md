# Data Science Journey

This repository contains the tracking of my experiences in the field of data science, beginning with introductory exercises.


## Brazilian Coffee Scenes Dataset

[Download dataset from here](http://patreo.dcc.ufmg.br/2017/11/12/brazilian-coffee-scenes-dataset/)

Run tensorflow's official docker image with `run.sh` (docker rootless)

# TODO:
Te paso un resumen de lo pendiente:
Aplicar augmentation al training
Hacer un barrido de parametros sobre batch, dropout e hyper parametros de las distintas capas. Utilizar MCCV 10 veces por cada set de parametros. Para esto podemos usar las maquinas del labo.
Calcular F1, Balanced Accuracy, Sensitivity y Specificity promedio y desviacion estandard sobre las 10 iteraciones de 10
Seleccionar mejor modelo. Evaluar criterios de seleccion. (Mejor metrica, menor variabilidad, 1-sd, etc.)
Probar en conjunto de test. Verificar cuan cercano es el resultado a la estimación obtenida a partir de MCCV
Con esto cerramos la parte de metodologia y nos juntariamos para ver donde enfocarnos en el research.
Otros:
Revisar la matematica detrás del tema del SGD
Armar repo en github con notebooks y demas cosas relacionadas al proyecto. (https://github.com/harpomaxx/graph-representation-learning) aca hay ejemplo de la jerarquia que uso yo para los proyectos del labo.
