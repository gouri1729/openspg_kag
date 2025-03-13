# import json

# with open("data/Disease.csv", "r") as f:
#     data = f.read()
#     #print("File Content:", data)  # Check if the file has content
#     json.loads(data)  # Try parsing
#     print("JSON"+data)

# import json

# def txt_to_json(txt_file, json_file):
#     data = {}
#     with open(txt_file, "r") as f:
#         for line in f:
#             if ":" in line:
#                 key, value = line.strip().split(":", 1)
#                 data[key.strip()] = value.strip()

#     with open(json_file, "w") as f:
#         json.dump(data, f, indent=4)

# # Example usage
# txt_to_json("data/sample_ortho.txt", "data/sample_ortho.json")
# print("TXT converted to JSON successfully!")
