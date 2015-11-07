import csv, json
import argparse

parser = argparse.ArgumentParser(description='convert .json to .csv')
parser.add_argument('filename', nargs='+', help='.json file to be converted')
args = parser.parse_args()

for filename in args.filename:
	# assumes that filenames will always have .json extension
	input = open(filename, 'r')
	data = json.load(input)
	input.close()

	# create the .csv filename
	parts = filename.split('.')
	newFilename = parts[0] + '.csv'

	# create .csv file
	with open(newFilename, 'wb') as csvfile: 
		output = csv.writer(csvfile)
		output.writerow(data[0].keys())  # header row
		for row in data:
		    output.writerow(row.values())