from pyspark import SparkContext
import sys
import math

'''
From a sql file, get a dictionary of each attribute and it place number in the table 
@:param filename : name of the sql file
@:param sc : SparkContext
@:return dictionary : { keyname : index }
'''
def sparkApp1(filename, sc):
    dict_attributes = {}
    sqlfile = sc.textFile(filename)
    #The first line doesn't contain an attribut
    first = sqlfile.first()
    rdd = sqlfile.filter(lambda line: first != line ).map(lambda line: line.split()).filter(lambda line: len(line) > 0 ).map(lambda line : line[0]).collect()
    for i in rdd:
        #the last line isn't an attribute
        if i != ");":
            dict_attributes[i] = rdd.index(i)
    return dict_attributes

'''
From a Source file, get the number of source an object_id not null per object_id 
Object_id is the 4th element
@:param filename : name of the source file
@:param sc : SparkContext
'''
def sparkApp2(file, sc):
    source = sc.textFile(file)
    rdd = source.filter(lambda line: len(line) > 0)\
        .map(lambda line: line.split(','))\
        .filter(lambda line: line[3] !="NULL")\
        .map(lambda line :( line[3], 1))\
        .reduceByKey(lambda x,y: x+y ).collect()
    return rdd

'''
From a Source file, get <object_id, count(*), max(source_id), min(ra), max(ra), min(decl), max(decl)> per object_id 
@:see Source.sql to know the position of each element OR use the first function to get the dict 
@:param filename : name of the source file
@:param sc : SparkContext
'''
def sparkApp3(dir,sc):
    source = sc.textFile(dir+"/*.csv")
    rdd =  source.filter(lambda line: len(line) > 0)\
        .map(lambda line: line.split(','))\
        .filter(lambda line: line[3] !="NULL")\
        .map(lambda line :( line[3], [1,line[0],line[6],line[6],line[9],line[9]]))\
        .reduceByKey(lambda x,y: [x[0]+y[0],max(x[1],y[1]),min(x[2],y[2]),max(x[3],y[3]),min(x[4],y[4]),max(x[5],y[5])] ).collect()
    return rdd

def sparkApp4(dir,sc):
    rdd = sc.textFile(dir+"/*.csv")
    tab =  rdd.filter(lambda line: len(line) > 0)\
        .map(lambda line: line.split(','))\
        .filter(lambda line: line[3] !="NULL")\
        .map(lambda line :( line[3], [line[6],line[6],line[9],line[9]]))\
        .reduceByKey(lambda x,y: [min(x[0],y[0]),max(x[1],y[1]),min(x[2],y[2]),max(x[3],y[3])] )\
        .map(lambda x : (x[0],math.sqrt((float(x[1][0])-float(x[1][1]))**2+(float(x[1][3])-float(x[1][2]))**2)))\
        .max(key=lambda x:x[1])
    return tab


def main():
    dir = sys.argv[1]
    sc = SparkContext("local", "App")
    res = sparkApp4(dir, sc)
    if len(sys.argv) > 2 :
        filecsv = open(sys.argv[2], "w")
        for i in res:
            filecsv.write(str(i[0]) + ',' + str(i[1]) + '\n')
        filecsv.close()
    else:
        print(res)


