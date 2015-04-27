# The Unix Shell
2015-04-30 SFU SWC workshop,
Instructor: Tiffany Timbers

## Introduce the Shell
#### Key concepts to cover
* Explain how the shell relates to the keyboard, the screen, the operating system, and 
users' programs.
* Explain when and why command-line interfaces should be used instead of graphical 
interfaces
* Introduce Nelle Nemo

## The Filesystem
* Open the shell
* Explain the prompt: `$`
* Example command: `whomami`
* Another example: `pwd` and explain why not `whereami`
* Go to image of filesystem and explain root directory there, then at the shell
* Get students to navigate to the `nelle` directory in finder/explorer and open a Shell
window there
* Do `pwd` again and compare differences between two different windows
* Close first Shell window and continue to work in window open in the `nelle` directory
* Introduce `ls` and `ls -F`
* Introduce how to get documentation (e.g., `man ls` or `ls --help`) or google!
* Look in `data` directory via: `ls -F data` and explain command, argument and directory/
filename in CLI call
* Discuss relative versus absolute path
* Introduce `cd` via `cd data`
* Show where we moved to: `pwd` and what is in that directory: ls -F
* How do we move back up to `nelle`? Two ways - discuss absolute and relative path again.
* What is `..`? 
* Show `ls -a`
* We see `.` (current directory), `..` (parent directory), and `.bash_profile` (file 
usually containing settings to customize the shell)
* Introduce tab completion via navigating into `cd north-pacific-gyre` and `cd 2012-07-03`

#### Multiple Choice Quiz 1 via Socrative.org (2 questions)

## Creating Things
* Navigate back to `nelle` directory
* Introduce `mkdir` via `mkdir thesis`
* Use `ls -F` to see what changed
* Look to see if there is anything inside the `thesis` directory via `ls thesis -F`
* Move into the `thesis` directory 
* Create a new document there called `draft.txt` via `nano draft.txt`
* Introduce nano, explain why we use it for the workshop, and what they might want to use
outside of the workshop.
* In nano, write: `It's not "publish or perish" anymore, it's "share and thrive".` and 
save and exit out of nano
* Check to see what is in the `thesis` directory now: `ls`

## Removing Things
* Let's delete what we just wrote via `rm draft.txt`
* See what has changed via `ls`
* Explain how deleting is FOREVER in the Shell
* Recreate a file called `draft.txt` in the `thesis` directory containing: `It's a start`
* Let's try to delete whole `thesis` directory, first need to navigate up via `cd ...` and 
the try `rm thesis`
* We get an error because `thesis` is a directory
* To remove a directory we need to use `rmdir thesis`
* This doesn't work either because there are files in the directory. We have two options,
individually delete the files inside the directory and then delete the directory or use a 
command which recursively deletes files: `rm -r thesis`. Use `rm -r` with CAUTION!
* Delete thesis directory via option 1: `rm thesis/draft.txt` and then `rmdir thesis`

## Moving Things
* Let's create the `thesis` directory one last time: `mkdir thesis`
* And create a file called `draft.txt` containing `"some short funny quote about thesese or persistance"`
* Let's rename this file and give it a much more informative name, e.g., `quotes.txt`
* We rename files via the `mv` command: `mv thesis/draft.txt thesis/quotes.txt`
* Check that this worked: `ls thesis`
* Note `mv` also works on directories
* We can also use the `mv` command to actually move things, for example moving `quotes.txt`
to the `nelle` directory: `mv thesis/quotes.txt .`
* Check that this worked: `ls . thesis`

## Copying Things
* We can also copy things via the `cp` command
* Let's put a copy of `quotes.txt` back in the thesis directory: `cp quotes thesis/quotes.txt`
* Check that this worked via `ls . thesis` 

#### Multiple Choice Quiz 2 via Socrative.org (2 questions)

## Pipes and Filters
Now that we know a few basic commands, we can finally look at the shell's most powerful 
feature: the ease with which it lets us combine existing programs in new ways. 

We'll start with a directory called molecules that contains six files describing some 
simple organic molecules. The .pdb extension indicates that these files are in Protein 
Data Bank format, a simple text format that specifies the type and position of each atom 
in the molecule.

* Take a look at what is in the `molecules` directory: `ls molecules`
* 
