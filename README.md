
## SPARK TESTS WITH PYTEST AND PYSPARK

## Configure your machine

### Downloads spark and hadoop
Download [Spark](https://spark.apache.org/downloads.html), pre-built version for Hadoop
Download [Hadoop](https://github.com/steveloughran/winutils/blob/master/hadoop-2.7.1/bin/winutils.exe)

I use Spark 2.2 and hadoop 2.7.

### Folders
Extract and Move Spark in C:/ (or where you want in your computer)\
Move the winutils.exe in C:/Hadoop/bin/

### Environment variables

Set the SPARK_HOME = "C:/C:\spark-YOUR_VERSION"\
Set the HADOOP_HOME = "C:\winutils"

Because this doesn't work on my Windows, I added the following lines in my conftest.py\
os.environ["SPARK_HOME"]="C:\spark-2.2.0-bin-hadoop2.7"\
os.environ["HADOOP_HOME"]="C:\winutils"

### Download the python lib

```pip install pytest``` \
```pip install pyspark```

## DOWNLOAD the conftest.py

In the links bellow, you can find different conftest.py

[kawadia](https://github.com/kawadia/pyspark.test)https://github.com/kawadia/pyspark.test

[stackoverflow](https://stackoverflow.com/questions/40975360/testing-spark-with-pytest-cannot-run-spark-in-local-mode
)

You also can use [minde](https://github.com/BoltMaud/Pyspark_pytest/blob/master/src/conftest.py)in the src folder that have the environment variables set.

## Run the tests
The conftest.py should be in the folder of your test.\

To run a test in a console :\

``` pytest main_test.py```

To run a test from IntelliJ :\
`Setting` -> `Python Interpreted Tools` -> change run test to py.test\
Then you can run your test file as a normal python file.

## Todo
Find a way to hide WARNINGS 
