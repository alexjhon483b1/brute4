from bs4 import BeautifulSoup

def extract_all_td_values_from_html_file(file_path):
    with open(file_path, 'r', encoding='utf-8') as file:
        html_content = file.read()

    soup = BeautifulSoup(html_content, 'html.parser')

    # Find all td tags in the HTML
    td_tags = soup.find_all('td')

    values = []

    for td_tag in td_tags:
        # Extract the value from each td tag
        value = td_tag.get_text(strip=True)
        values.append(value)

    return values

# Specify the path to your HTML file
html_file_path = 'result.html'

# Call the function and print the results
results = extract_all_td_values_from_html_file(html_file_path)

if results:
    for i, result in enumerate(results, start=1):
        print(f"Value {i}: {result}")
else:
    print("No <td> tags found in HTML.")

