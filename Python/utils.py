import httplib2
from apiclient.discovery import build
from oauth2client.client import flow_from_clientsecrets
from oauth2client.file import Storage
from oauth2client.tools import run_flow
import json
import csv


def getProjectID():
	with open('projectID.txt', 'r') as projectIDFile:
		projectID = projectIDFile.read()
	return projectID


def connectBigQuery():
	storage = Storage('bigquery_credentials.dat')
	credentials = storage.get()

	if credentials is None or credentials.invalid:
		flow = flow_from_clientsecrets('client_secrets.json', scope='https://www.googleapis.com/auth/bigquery')
		credentials = tools.run_flow(flow, storage)

	http = httplib2.Http()
	http = credentials.authorize(http)

	bigquery = build('bigquery', 'v2', http=http)

	return bigquery


def parseQueryResponse(queryResponse):
	# grab field names & types
	fieldNames = []
	fieldTypes = []
	for field in queryResponse['schema']['fields']: 
		fieldNames.append(str(field['name']))
		fieldTypes.append(str(field['type']))
	numFields = len(fieldNames)

	# parse queryResponse and create a dictionary list. each dictionary is a table row
	response = []
	for row in queryResponse['rows']:
		for dummy, dict_list in row.iteritems():
			entries = []
			for i in range(0, numFields):
				value = dict_list[i]['v']
				entries.append(value)
			# creates a dictionary where keys and values are paired based on position in their respective lists
			response.append(dict(zip(fieldNames, entries)))			

	return response


def writeToJson(response, filename):
	# add .json extension if not specified in filename
	if filename.find('.json') == -1:
		filename += '.json'

	with open(filename, 'w') as outfile:
	    json.dump(response, outfile, indent=4)


def writeToCsv(response, filename):
	# add .csv extension if not specified in filename
	if filename.find('.csv') == -1:
		filename += '.csv'

	with open(filename, 'wb') as csvfile: 
		output = csv.writer(csvfile)
		output.writerow(response[0].keys())  # header row
		for row in response:
		    output.writerow(row.values())