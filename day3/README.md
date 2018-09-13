$ time ./House1.sh House.txt| sort -u | wc -l
2081

real    0m0.427s
user    0m0.399s
sys     0m0.051s

$ time ./House2.sh House.txt| sort -u | wc -l
2341

real    0m0.428s
user    0m0.381s
sys     0m0.070s

