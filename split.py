import json
import os
md_path = '.\src\Accounts\Accounts\help\Clear-AzConfig.md'

def process_second_level(second_level_content):
    second_level = []
    second_level_split = '\n### '
    start_index = second_level_content.find(second_level_split)
    while start_index != -1:
        end_index = second_level_content.find(second_level_split, start_index + 1)
        if end_index == -1:
            second_level.append(second_level_content[start_index:])
        else:
            second_level.append(second_level_content[start_index:end_index])
        start_index = end_index
    second_level = list(map(lambda x: x.strip(second_level_split).strip('\n'), second_level))
    if len(second_level) == 0:
        return second_level_content
    else:
        second_level_result = {}
        for level in second_level:
            key = level.split('\n')[0]
            value = '\n'.join(level.split('\n')[1:])
            second_level_result[key] = value
        return second_level_result

with open(md_path, 'r') as f:
    md = f.read()
first_level = []
first_level_split = '\n## '
start_index = md.find(first_level_split)
while start_index != -1:
    end_index = md.find(first_level_split, start_index + 1)
    if end_index == -1:
        first_level.append(md[start_index:])
    else:
        first_level.append(md[start_index:end_index])
    start_index = end_index
first_level = list(map(lambda x: x.strip(first_level_split).strip('\n'), first_level))
result = {}
for level in first_level:
    key = level.split('\n')[0]
    value = '\n'.join(level.split('\n')[1:])
    result[key] = process_second_level(value)

with open('result.json', 'w') as f:
    json.dump(result, f, indent=4)