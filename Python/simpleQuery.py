import httplib2
import pprint
import argparse

from apiclient.discovery import build
from apiclient.errors import HttpError

from oauth2client.client import AccessTokenRefreshError
from oauth2client.client import flow_from_clientsecrets
from oauth2client.file import Storage
from oauth2client.tools import run_flow
import utils
import json


parser = argparse.ArgumentParser(description='')
parser.add_argument('queryFile', help='.txt file containing query')
args = parser.parse_args()

def main():
	bigquery = utils.connectBigQuery()	
	projectID = utils.getProjectID()

	try:
		queryFile = args.queryFile

		# read the query from file
		with open(queryFile, 'r') as qfile:
			query = qfile.read().replace('\n\n', ' ').replace('\n\t', ' ')

		# setup the query request
		queryData = {
			'query': query,
			'timeoutMs': 1000000
		}
		queryRequest = bigquery.jobs().query(
			projectId=projectID,
			body=queryData)

		# execute the query
		queryResponse = queryRequest.execute()
		print 'query returned'

		# determine if query job is complete
		jobComplete = queryResponse['jobComplete']
		if not(jobComplete):
			print 'job not complete'
			return

		# write to CSV
		parts = queryFile.split('.')
		resultsFile = parts[0] + 'Results.csv'
		response = utils.parseQueryResponse(queryResponse)
		print 'writing to ' + resultsFile
		utils.writeToCsv(response, resultsFile)

	except HttpError as err:
		print 'Error in listDatasets:', pprint.pprint(err.content)

	except AccessTokenRefreshError:
		print ('credentials have been revoked or expired, please re-run the application to re-authorize')

if __name__ == '__main__':
	main()
