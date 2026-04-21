with open('book.html', 'r') as file:
    print_abstract = False
    for line in file:
        if "<h1" in line:
            print("<br>" + line.replace("h1", "a").replace('id="', 'href="book.html#'))
        if '<p class="abstract"' in line:
            print_abstract=True
        elif '</p>' in line and print_abstract:
            print_abstract=False
            print(line)

        if print_abstract:
            print(line)
            
            
        
