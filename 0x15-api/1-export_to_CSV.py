#!/usr/bin/python3
''' This script exports the reponse data
    in the CSV format
'''

import csv
import requests
import sys


if __name__ == '__main__' and sys.argv[1]:

    response = requests.get('https://jsonplaceholder.typicode.com/todos/')

    id = int(sys.argv[1])
    all_data = response.json()

    employee = requests.get('https://jsonplaceholder.typicode.com/users/{}'
                            .format(id))
    employee = employee.json()
    name = employee['username']

    with open(f'{id}.csv', 'w') as file:
        csv_writer = csv.writer(file, quoting=csv.QUOTE_ALL)
        for i in all_data:
            if i['userId'] == id:
                temp = [str(id), str(name), i['completed'], i['title']]

                csv_writer.writerow(temp)
