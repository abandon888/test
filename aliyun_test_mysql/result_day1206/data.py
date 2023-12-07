import os
import csv
import re

def extract_data_from_file(file_path: str) -> dict:
    """
    Extracts key performance metrics from a given file with error handling.

    Args:
    file_path (str): Path to the file.

    Returns:
    dict: A dictionary containing extracted data.
    """
    data = {
        'file_name': os.path.basename(file_path),
        'http_req_duration_avg': None,
        'http_req_waiting_avg': None,
        'http_reqs': None,
        'http_req_failed': None,
        'vus': None,
        'iteration_duration_avg': None
    }

    with open(file_path, 'r') as file:
        #print(f'Processing file: {file_path}')
        lines = file.readlines()
        #print(f'Number of lines: {len(lines)}')
        for line in lines:
            #print(line)
            if 'http_req_duration' in line:
                match = re.search(r'avg=(\d+\.\d+)ms', line)
                if match:
                    data['http_req_duration_avg'] = float(match.group(1))
            elif 'http_req_waiting' in line:
                match = re.search(r'avg=(\d+\.\d+)ms', line)
                if match:
                    data['http_req_waiting_avg'] = float(match.group(1))
            elif 'http_reqs' in line:
                match = re.search(r'(\d+)\s+', line)
                if match:
                    data['http_reqs'] = int(match.group(1))
            elif 'http_req_failed' in line:
                match = re.search(r'(\d+\.\d+)%', line)
                if match:
                    data['http_req_failed'] = float(match.group(1))
            elif 'vus' in line:
                match = re.search(r'(\d+)\s+min', line)
                if match:
                    data['vus'] = int(match.group(1))
            elif 'iteration_duration' in line:
                match = re.search(r'avg=(\d+\.\d+)s', line)
                if match:
                    data['iteration_duration_avg'] = float(match.group(1))

    return data
# File paths to process
# Generate file path list: 5_10.txt, 5_15.txt, 5_20.txt, 5_25.txt, 5_30.txt, 5_35.txt, 5_40.txt, 5_45.txt, 5_50.txt, and similarly for 10_10.txt, 10_15.txt, 10_20.txt, 10_25.txt, 10_30.txt, 10_35.txt, 10_40.txt, 10_45.txt, 10_50.txt, and files with prefixes 30_ and 60_
file_paths = []
for i in [5, 10, 30, 60]:
  for j in range(10, 51, 5):
    file_paths.append(f'{i}_{j}.txt')

# Process each file and store the results
results = []
for file_path in file_paths:
    results.append(extract_data_from_file(file_path))

# Writing results to a CSV file
csv_file = 'data.csv'
with open(csv_file, 'w', newline='') as file:
    writer = csv.DictWriter(file, fieldnames=results[0].keys())
    writer.writeheader()
    for data in results:
        writer.writerow(data)

csv_file
