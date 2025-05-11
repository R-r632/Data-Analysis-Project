cleaned_lines = []
with open('requirements.txt', 'r') as f:
    for line in f:
        if "file:///" not in line and "file://C:" not in line:
            cleaned_lines.append(line)

with open('cleaned_requirements.txt', 'w') as f:
    f.writelines(cleaned_lines)
