import pytest
from . import main

pytestmark = pytest.mark.usefixtures("spark_context")


def test_sparkApp1(spark_context):
    results= main.sparkApp1("./Source/Source.sql", spark_context)
    assert len(results) == 107

def test_sparkApp2(spark_context):
    results= (main.sparkApp2("./Source/source-sample", spark_context))
    assert results == [('334',1),('430209694171136',6)]

def test_sparkApp3(spark_context):
    results= main.sparkApp3("./Source/source-sample", spark_context,test=True)
    assert results==[('334', [1, '29739119316173995', '357.9698327792918', '357.9698327792918', '2.88922249184336', '2.88922249184336']), \
                         ('430209694171136', [6, '29809086638981597', '1', '357.9894411124743', '2.5646291352701804', '999'])]

def test_sparkApp4(spark_context):
    results= main.sparkApp4("./Source/source-sample", spark_context,test=True)
    assert results==('430209694171136',1058.4540185459775)