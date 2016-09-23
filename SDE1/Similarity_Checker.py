import sets
import sys

# Assuming you have python installed...
# To compile type python output.txt correct_output.txt
# pythonw output.txt correct_output.txt may work as well on mac


def checker(data, data1):
    a = set(data.split())
    b = set(data1.split())
    similarity = float(len(a.intersection(b))*1.0/len(a.union(b)))
    return similarity


if __name__ == "__main__":
    try:
        if len(sys.argv) != 3:
            print "\nUsage: python [file1] [file2]\n"
            exit(1)
        
        print "Similarity Checker:"
        
        with open(sys.argv[1], "r") as myfile:
            data = myfile.read().replace("\n", "")
        
        with open(sys.argv[2], "r") as myfile1:
            data1 = myfile1.read().replace("\n", "")

        print ("%.2f") % (checker(data, data1)*100)

    except KeyboardInterrupt:
        print
        exit(0)



