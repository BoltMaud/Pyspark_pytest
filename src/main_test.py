import pytest
from . import main

pytestmark = pytest.mark.usefixtures("spark_context")

def test_sparkApp1(spark_context):
    results= main.sparkApp1("./Source/Source.sql", spark_context)
    assert len(results) == 107

def test_sparkApp2(spark_context):
    results= (main.sparkApp2("./Source/source-sample", spark_context))
    assert results == [('334',1),('430209694171136',6)]

'''
TODO
def test_sparkApp3(spark_context):
    results= main.sparkApp3("./Source/source-sample", spark_context)
    print (results)
'''