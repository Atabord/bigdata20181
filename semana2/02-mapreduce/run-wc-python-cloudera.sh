export HADOOP_STREAMING_HOME=/opt/cloudera/parcels/CDH-5.14.0-1.cdh5.14.0.p0.24/lib/hadoop-mapreduce

hdfs dfs -rm -r /user/emontoya/wc-out1

python wordcount-mr.py hdfs:///user/<username>/datasets/gutenberg-txt-en/*.txt -r hadoop --output-dir hdfs:///user/<username>/wc-out1 --hadoop-streaming-jar $HADOOP_STREAMING_HOME/hadoop-streaming.jar
