import os
import pdfkit
import sys

def scrape(dataStructure):
    path_toModule = "C:\Program Files\wkhtmltopdf\bin\wkhtmltopdf.exe"
    config = pdfkit.configuration(wkhtmltopdf=path_toModule) 

    pdfkit.from_url('https://en.wikipedia.org/wiki/'+dataStructure, r'.\exports\out.pdf', configuration=config)

scrape(sys.argv[0])
