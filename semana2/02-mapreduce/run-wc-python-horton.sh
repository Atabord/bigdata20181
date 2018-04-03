export HADOOP_STREAMING_HOME=/usr/hdp/current/hadoop-mapreduce-client

hdfs dfs -rm -r /user/emontoya/wc-out1

python wordcount-mr.py hdfs:///user/<username>/datasets/gutenberg-txt-en/*.txt -r hadoop --output-dir hdfs:///user/<username>/wc-out1 --hadoop-streaming-jar $HADOOP_STREAMING_HOME/hadoop-streaming.jar
