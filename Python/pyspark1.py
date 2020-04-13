import pyspark
sc = pyspark.SparkContext('local[*]')

txt = sc.textFile("test.txt")
print(txt.count())

python_lines = txt.filter(lambda line: 'python' in line.lower())
print(python_lines.count())
