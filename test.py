import re

brands = ["Dior", "Chanel", "Louis Vuitton", "Hermès", "GUCCI", "Celine"]

str = "House of CHanel! What a story!"
b = ""
for brand in brands:
    if re.search(brand, str, re.IGNORECASE):
        b = brand
        break

print(brand)
