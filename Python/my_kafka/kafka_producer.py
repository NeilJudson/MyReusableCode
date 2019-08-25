# -*- coding: utf-8 -*-
import os
from kafka.client import SimpleClient
from kafka.producer import SimpleProducer
import json


class Kafka_Producer(object):
    def __init__(self):
        with open(os.path.split(os.path.realpath(__file__))[0] + '/config/kafka_producer_config.json', 'r') as f:
            _kafka_conf = json.load(f)
        self._topic = _kafka_conf["topic"]
        self._servers = _kafka_conf["servers"]
        self._client = SimpleClient(self._servers)
        self._producer = SimpleProducer(self._client, async=False)

    def __del__(self):
        self._client.close()

    def produce(self, msg):
        self._producer.send_messages(self._topic, msg.encode('utf-8'))


def main():
    producer = Kafka_Producer()
    for _ in range(10):
        producer.produce(str(_))


if __name__ == '__main__':
    main()
