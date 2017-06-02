# junction-fasta-maker
Takes BED file of circRNA splice sites and creates a FASTA file of their junctions

Transforms BED6 files like this:
```
chrI 1 15 circID 0 +
```

to FASTA files like this:
```
>circID::chrI:1-15(+)
cctaagcctaagcc
```

to junction FASTA files like this automatically:
```
>circID::chrI:1-15(+)
ctaagccCCTAAGC
```

### How to run
Run this command in your terminal:
`sh primer_maker.sh test.bed ce11.fa`

### How to install
Copy & paste these commands in your terminal:
```
git clone https://github.com/alexandruioanvoda/junction-fasta-maker
cd junction-fasta-maker
chmod +x primer_maker.sh
```
### Dependencies:
BEDtools, awk and tr.
