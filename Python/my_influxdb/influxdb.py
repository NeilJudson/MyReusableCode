# -*- coding: utf-8 -*-
# Python 3.6.3

import time
from influxdb import InfluxDBClient


def upload_data(tag, fields, db_ip='1.1.1.1', db_port=8086, db_user='a', db_pw='a', db_table='TEST'):
    data = [
        {
            'measurement': 'conn',
            'tags': tag,
            'time': time.strftime('%Y-%m-%dT%H:%M:%S+8:00'),
            'fields': fields
        }
    ]
    client = InfluxDBClient(db_ip, db_port, db_user, db_pw, db_table)
    try:
        if client.write_points(data):
            return True
        else:
            return False
    except Exception as e:
        print(e)
        return False