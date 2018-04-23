#!/usr/bin/env python3
from bs4 import BeautifulSoup
from bs4.element import Comment
import urllib.request

def tag_visible(element):
    if element.parent.name in ['style', 'script', 'head', 'title', 'meta', '[document]']:
        return False
    if isinstance(element, Comment):
        return False
    return True

def text_from_html(body):
    soup = BeautifulSoup(body, 'html.parser')
    texts = soup.findAll(text=True)
    visible_texts = filter(tag_visible, texts)  
    lines = []
    for line in visible_texts:
        lines.append(line)
    return lines

    # return " ".join(t.strip() for t in visible_texts)

url = 'https://www.metal-archives.com/bands/burzum'
html = urllib.request.urlopen(url).read()

for line in text_from_html(html):
    if len(line) > 2:
        print(line.strip())
