with open('book.html', 'r') as file:
    print_abstract = False
    for line in file:
        if "<h1" in line:
            print("<br><b>" + line.replace("h1", "a").replace('id="', 'href="book.html#') + "</b>")
        if "<h2" in line:
            print("<br> &nbsp; &nbsp; &nbsp;" + line.replace("h2", "a").replace('id="', 'href="book.html#'))
        if '<p class="abstract"' in line:
            print_abstract=True
            line = line.replace('class="abstract"', '') + "<i>"
        elif '</p>' in line and print_abstract:
            print_abstract=False
            print(line + "</i>")

        if print_abstract:
            print(line)
            
            
        
