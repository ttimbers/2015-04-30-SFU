#creating an R script that's executable from the command line!

#we need to take in arguments from the command line, and we do this with these two commands:
args<-commandArgs(TRUE) #commandArgs is a function that takes in parameters specified by the shell command
input_file<-args[1] #it's a "vector", and each element in args represents a separate parameter


#next we need to use the command parameters as objects and names of objects. you'll see what i mean in a second

#opening the input file
dat<-read.delim(input_file, sep="\t", header=T) #since the absolute path(or correct relative path) of the input file is contained in "input_file", all we have to do to read in the file is write the object's name in the place where we'd normally use quotes and put the path to the file we want to open!

#writing an output file after all our operations are done
#say we are doing a plot, we can define the name of the output file based on the input file using the paste() command
?paste
paste(c(input_file, "plot.pdf"), collapse='_') #here we are saying we want to concatenate the two strings, 1) input_file (which contains the path to the input file, plus the name of the input file itself, and 2) "plot.pdf", so you can probably guess what you'd get as a result
#then with the collapse parameter, we are saying that we want to use a . character to as the joining character, so the output of this paste command would look something like this "/path/to/file/data.csv_plot.pdf"
#it's not perfect, and we could do away with the ".csv" section if we were so inclined, but it's good enough for our example

#if, instead of printing, we just want to dump the result of this script back to terminal, and redirect it to a file using our shell command, we can do it this way
cat(object)
#optional commands for cat()
cat(object, file="", sep="\t", fill=FALSE/TRUE, labels=vectoroflabels, append=)
#file can specify a file, or in linux you can specify stderr (printing to screen in the terminal) like this: file="stderr()"
