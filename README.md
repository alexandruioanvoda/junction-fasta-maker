# junction-fasta-maker
Takes BED file of circRNA splice sites and creates a FASTA file of their junctions

Transforms this:
```
chrI 1 5 b 0 +
```

to this:
```
>b::chrI:1-5(+)
ccta
```

to this automatically:
```
>b::chrI:1-5(+)
TAcc
```

### How to run
`sh primer_maker.sh test.bed ce11.fa`

### How to install
```
git clone https://github.com/alexandruioanvoda/junction-fasta-maker
cd junction-fasta-maker
chmod +x primer_maker.sh
```
Dependencies: BEDtools, awk and tr.
