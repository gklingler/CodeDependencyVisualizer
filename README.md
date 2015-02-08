CodeDependencyVisualizer
========================

This tool is intended for reverse engineering UML class diagrams out of existing C++ code. It can generate class diagrams with inheritances and associations.

You might also take a look at my blogpost: http://gernotklingler.com/blog/libclang-reverse-engineering-uml-class-diagrams/

Dependencies
------------
- python 2.7
- clang version 3.5
- graphvitz (for the dot tool) to be able to transform the generated dot file to an image

Just tested on Linux.

Usage
-----
For usage information run:
python ./CodeDependencyVisualizer.py --help
```
usage: CodeDependencyVisualizer.py [-h] -d D [-o OUTFILE]
                                   [-u WITHUNUSEDHEADERS] [-a] [-i] [-p] [-t]
                                   [-P] [-I INCLUDEDIRS [INCLUDEDIRS ...]]
                                   [-v]

CodeDependencyVisualizer (CDV)

optional arguments:
  -h, --help            show this help message and exit
  -d D                  directory with source files to parse (searches
                        recusively)
  -o OUTFILE, --outFile OUTFILE
                        output file name / name of generated dot file
  -u WITHUNUSEDHEADERS, --withUnusedHeaders WITHUNUSEDHEADERS
                        parse unused header files (slow)
  -a, --associations    draw class member assiciations
  -i, --inheritances    draw class inheritances
  -p, --privMembers     show private members
  -t, --protMembers     show protected members
  -P, --pubMembers      show public members
  -I INCLUDEDIRS [INCLUDEDIRS ...], --includeDirs INCLUDEDIRS [INCLUDEDIRS ...]
                        additional search path(s) for include files (seperated
                        by space)
  -v, --verbose         print verbose information for debugging purposes
  --exclude_classes EXCLUDE_CLASSES
                        classes matching this pattern will be excluded
  --include_classes INCLUDE_CLASSES
                        only classes matching this pattern will be included
```

Examples
--------
```
./CodeDependencyVisualizer.py -aiptP --verbose -d dummyCppProject -I dummyCppProject/subfolder"
```
The command above just creates the file 'uml.dot'. To convert the dot file to an svg image run the dot tool:
```
dot -T svg -o uml.svg uml.dot
```
