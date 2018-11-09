import os
import sys

def main():
    filein = sys.argv[1]
    if not os.path.isfile(filein):
        print("File DNE")
        sys.exit()
    fileout = filein + "_nopunct"
    with open(fileout, 'w+') as tar:
        with open(filein) as src:
            for line in src:
                punctuations = '''!()-[]{};:’'"\,<>./?@#$%^&*_~'''
                no_punct = ""
                for char in line:
                   if char not in punctuations:
                       no_punct = no_punct + char
                tar.write(no_punct)
    
if __name__== "__main__":
  main()

    
