import os
import pdfkit

path_toModule = "C:\Program Files\wkhtmltopdf\bin\wkhtmltopdf.exe"

config = pdfkit.configuration(wkhtmltopdf=path_toModule) 
#options = {'allow': 'D:/MY_FILES/hacky-mlh-project/scrapers/pythonScraper/test.py'}

pdfkit.from_url('https://en.wikipedia.org/wiki/Machine_learning', r'.\exports\out.pdf', configuration=config)

path = 'C:\Program Files\wkhtmltopdf\bin\wkhtmltopdf.exe'
  
# Check whether the specified
# path exists or not
isExist = os.path.exists(path)
print(isExist)
#/mnt/d/MY_FILES/hacky-mlh-project/scrapers/pythonScraper
