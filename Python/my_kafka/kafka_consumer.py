# -*- coding: utf-8 -*-
import os
import json
from kafka import KafkaConsumer


class Kafka_Consumer(object):
    def __init__(self):
        with open(os.path.split(os.path.realpath(__file__))[0] + '/kafka_config.json', 'r') as f:
            _kafka_conf = json.load(f)
        self._topic = _kafka_conf['consumer']['topic']
        self._servers = _kafka_conf['consumer']['servers']
        self._consumer = KafkaConsumer(self._topic, bootstrap_servers=self._servers)
        self._consumer.subscribe(topics=[self._topic])

    def consume(self):
        return self._consumer


def main():
    consumer = Kafka_Consumer()
    for _ in consumer.comsume():
        print(_)


if __name__ == '__main__':
    main()
