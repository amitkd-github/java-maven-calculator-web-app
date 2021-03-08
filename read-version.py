import xml.etree.ElementTree as ET

tree=ET.parse("./pom.xml")

root=tree.getroot()

print(root[4].text)
