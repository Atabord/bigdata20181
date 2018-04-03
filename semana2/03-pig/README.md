# Universidad EAFIT
# Curso ST0263 Tópicos Especiales en Telemática, 2018-1
# Profesor: Edwin Montoya M. – emontoya@eafit.edu.co

# Ejecutar programas desde web o consola en PIG:

## Ejemplo WordCount:

      lines = LOAD '/user/<<username>>/datasets/gutenberg-txt-es/*.txt' AS (line:chararray);
      words = FOREACH lines GENERATE FLATTEN(TOKENIZE(line)) as word;
      grouped = GROUP words BY word;
      wordcount = FOREACH grouped GENERATE group, COUNT(words);
      DUMP wordcount;
      
## Ejemplos con dataset OlympicAthetesSample.txt

* [OlympicAthletesSample](OlympicAthletesSample.md)

## Tutorial Pig de comandos

* [Tutorial](PigTutorial.md)