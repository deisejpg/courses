########################################################################
        #BIOLOGY MEETS PROGRAMMING: BIOINFORMATICS FOR BEGINNERS
########################################################################

##################
#First week
##################

#Where in the genome does replication begin?
#Exercises/Coding:
#1.2.1
#answer:
# First, create a string variable called ori that is equal to the Vibrio cholerae ori. Don't forget to enclose your string in quotes!

ori = "ATCAATGATCAACGTAAGCTTCTAAGCATGATCAAGGTGCTCACACAGTTTATCCACAACCTGAGTGGATGACATCAAGATAGGTCGTTGTATCTCCTTCCTCTCGTACTCTCATGACCACGGAAAGATGATCAAGAGAGGATGATTTCTTGGCCATATCGCAATGAATACTTGTGACTTGTGCTTCCAATTGACATCTTCAGCGCCATATTGCGCTGGCCAAGGTGACGGAGCGGGATTACGAAAGCATGATCATGGCTGTTGTTCTGTTTATCTTGTTTTGACTGAGACTTGTTAGGATAGACGGTTTTTCATCACTGACTAGCCAAAGCCTTACTCTGCCTGACATCGACCGTAAATTGATAATGAATTTACATGCTTCCGCGACGATTTACCTCTTGATCATCGATCCGATTGAAGATCTTCAATTGTTAATTCTCTTGCCTCGACTCATAGCCATGATGAGCTCTTGATCATGTTTCCTTAACCCTCTATTTTTTACGGAAGAATGATCAAGCTGCTGCTCTTGATCATCGTTTC"
# Then, print the length of ori
print(len(ori))

#1.2.2 
#answer: 990

#1.2.3
#answer:
def PatternCount(Text, Pattern):
    # fill in your function here
    count = 0
    for i in range(len(Text) - len(Pattern)+1):
        if Text[i:i+len(Pattern)] == Pattern:
            count = count +1
    return count

#1.2.4
#answer:
# Copy your PatternCount function from the previous step below this line
def PatternCount(Text, Pattern):
    count = 0
    for i in range(len(Text)-len(Pattern)+1):
        if Text[i:i+len(Pattern)] == Pattern:
            count = count + 1
    return count
# Now, set Text equal to the ori of Vibrio cholerae and Pattern equal to "TGATCA"
Text = "ATCAATGATCAACGTAAGCTTCTAAGCATGATCAAGGTGCTCACACAGTTTATCCACAACCTGAGTGGATGACATCAAGATAGGTCGTTGTATCTCCTTCCTCTCGTACTCTCATGACCACGGAAAGATGATCAAGAGAGGATGATTTCTTGGCCATATCGCAATGAATACTTGTGACTTGTGCTTCCAATTGACATCTTCAGCGCCATATTGCGCTGGCCAAGGTGACGGAGCGGGATTACGAAAGCATGATCATGGCTGTTGTTCTGTTTATCTTGTTTTGACTGAGACTTGTTAGGATAGACGGTTTTTCATCACTGACTAGCCAAAGCCTTACTCTGCCTGACATCGACCGTAAATTGATAATGAATTTACATGCTTCCGCGACGATTTACCTCTTGATCATCGATCCGATTGAAGATCTTCAATTGTTAATTCTCTTGCCTCGACTCATAGCCATGATGAGCTCTTGATCATGTTTCCTTAACCCTCTATTTTTTACGGAAGAATGATCAAGCTGCTGCTCTTGATCATCGTTTC"

Pattern = "TGATCA"
# Finally, print the result of calling PatternCount on Text and Pattern.
print(PatternCount(Text, Pattern))
# Don't forget to use the notation print() with parentheses included!


#################################
#1.3.1
#answer: CC

#1.3.2
#answer:
def FrequencyMap(Text, k):
    # your code here
    freq = {}
    n = len(Text)
    for i in range(n-k+1):
        Pattern = Text[i:i+k]
        if Pattern not in freq:
            freq[Pattern] = 1
        else:
            freq[Pattern] += 1
    return freq

#1.3.3
# Insert your completed FrequencyMap() function here.
def FrequencyMap(Text, k):
    # your code here
    freq = {}
    n = len(Text)
    for i in range(n-k+1):
        Pattern = Text[i:i+k]
        if Pattern not in freq:
            freq[Pattern] = 1
        else:
            freq[Pattern] += 1
    return freq

# Input:  A string Text and an integer k
# Output: A list containing all most frequent k-mers in Text
def FrequentWords(Text, k):
    # your code here
    words = []
    freq = FrequencyMap(Text, k)
    m = max(freq.values())
    for key in freq:
        if freq[key] == m:
            pattern = key
            words.append(pattern)
    return words

#1.3.4.
#answer:
# Copy your updated FrequentWords function (along with all required subroutines) below this line
def FrequencyMap(Text, k):
    # your code here
    freq = {}
    n = len(Text)
    for i in range(n-k+1):
        Pattern = Text[i:i+k]
        if Pattern not in freq:
            freq[Pattern] = 1
        else:
            freq[Pattern] += 1
    return freq

def FrequentWords(Text, k):
    # your code here
    words = []
    freq = FrequencyMap(Text, k)
    m = max(freq.values())
    for key in freq:
        if freq[key] == m:
            pattern = key
            words.append(pattern)
    return words

# Now set Text equal to the Vibrio cholerae oriC and k equal to 10
Text = "ATCAATGATCAACGTAAGCTTCTAAGCATGATCAAGGTGCTCACACAGTTTATCCACAACCTGAGTGGATGACATCAAGATAGGTCGTTGTATCTCCTTCCTCTCGTACTCTCATGACCACGGAAAGATGATCAAGAGAGGATGATTTCTTGGCCATATCGCAATGAATACTTGTGACTTGTGCTTCCAATTGACATCTTCAGCGCCATATTGCGCTGGCCAAGGTGACGGAGCGGGATTACGAAAGCATGATCATGGCTGTTGTTCTGTTTATCTTGTTTTGACTGAGACTTGTTAGGATAGACGGTTTTTCATCACTGACTAGCCAAAGCCTTACTCTGCCTGACATCGACCGTAAATTGATAATGAATTTACATGCTTCCGCGACGATTTACCTCTTGATCATCGATCCGATTGAAGATCTTCAATTGTTAATTCTCTTGCCTCGACTCATAGCCATGATGAGCTCTTGATCATGTTTCCTTAACCCTCTATTTTTTACGGAAGAATGATCAAGCTGCTGCTCTTGATCATCGTTTC"
k = 10

# Finally, print the result of calling FrequentWords on Text and k.
print(FrequentWords(Text, k))


#################################
#1.4.1
#answer:
# Input:  A string Pattern
# Output: The reverse of Pattern
def Reverse(Pattern):
    # your code here
    rev = ''
    for char in Pattern:   
        rev = char + rev
    return rev

#1.4.2
#answer:
# Input:  A DNA string Pattern
# Output: The complementary string of Pattern (with every nucleotide replaced by its complement).
def Complement(Pattern):
    # your code here
    rev = ''
    nuc_dict = {'A':'T', 'C':'G', 'G':'C', 'T':'A'}
    for char in Pattern:
        rev = rev + nuc_dict[char]
    return rev

#1.4.3
#answer:
# Input:  A DNA string Pattern
# Output: The reverse complement of Pattern
def ReverseComplement(Pattern):   
    # your code here
    Pattern = Reverse(Pattern)
    Pattern = Complement(Pattern)
    return Pattern

#1.4.4
#answer:
# Input: Strings Pattern and Genome.
# Output: All starting positions in Genome where Pattern appears as a substring.
# We feel confident that you are ready to solve the Pattern Matching Problem on 
#your own.  But we will give you a hint: note how similar this problem is to 
#counting the number of occurrences of a pattern within a longer text.  
#In both problems, we range over the text with a window whose length is equal
# to the length of the pattern.  The only way in which our solution to the Pattern
# Matching Problem differs is that rather than counting the number of occurrences
# of the pattern, we first form an empty list and then append each starting
# position of the pattern to it when we encounter a match.
# fill in your PatternMatching() function along with any subroutines that you need.
def PatternMatching(Pattern, Genome):
    positions = [] # output variable
    # your code here
    p = len(Pattern)
    g = len(Genome)
    for i in range(g-p+1):
        if Genome[i:i+p]==Pattern:
            positions.append(i)
    return positions
                  
#1.4.5
# Copy your PatternMatching function below this line.
def PatternMatching(Pattern, Genome):
    positions = [] # output variable
    # your code here
    p = len(Pattern)
    g = len(Genome)
    for i in range(g-p+1):
        if Genome[i:i+p]==Pattern:
            positions.append(i)
    return positions

# The following lines will automatically read in the Vibrio cholerae genome for you and store it in a variable named v_cholerae
import sys                              # needed to read the genome
input = sys.stdin.read().splitlines()   #
v_cholerae = input[1]                   # store the genome as 'v_cholerae'


# Call PatternMatching with Pattern equal to "CTTGATCAT" and Genome equal to v_cholerae,
# and store the output as a variable called positions

position = PatternMatching("CTTGATCAT", v_cholerae)

# print the positions variable
print(position)


#################################
#1.5.1
#answer:
# Copy your PatternCount function below here
def PatternCount(Text, Pattern):
    count = 0
    for i in range(len(Text)-len(Pattern)+1):
        if Text[i:i+len(Pattern)] == Pattern:
            count = count + 1
    return count

# On the following line, create a variable called Text that is equal to the oriC region from T petrophila
Text = "AACTCTATACCTCCTTTTTGTCGAATTTGTGTGATTTATAGAGAAAATCTTATTAACTGAAACTAAAATGGTAGGTTTGGTGGTAGGTTTTGTGTACATTTTGTAGTATCTGATTTTTAATTACATACCGTATATTGTATTAAATTGACGAACAATTGCATGGAATTGAATATATGCAAAACAAACCTACCACCAAACTCTGTATTGACCATTTTAGGACAACTTCAGGGTGGTAGGTTTCTGAAGCTCTCATCAATAGACTATTTTAGTCTTTACAAACAATATTACCGTTCAGATTCAAGATTCTACAACGCTGTTTTAATGGGCGTTGCAGAAAACTTACCACCTAAAATCCAGTATCCAAGCCGATTTCAGAGAAACCTACCACTTACCTACCACTTACCTACCACCCGGGTGGTAAGTTGCAGACATTATTAAAAACCTCATCAGAAGCTTGTTCAAAAATTTCAATACTCGAAACCTACCACCTGCGTCCCCTATTATTTACTACTACTAATAATAGCAGTATAATTGATCTGA"

# On the following line, create a variable called count_1 that is equal to the number of times
# that "ATGATCAAG" occurs in Text.
count_1 = PatternCount(Text, "ATGATCAAG")

# On the following line, create a variable called count_2 that is equal to the number of times
# that "CTTGATCAT" occurs in Text. 
count_2 = PatternCount(Text, "CTTGATCAT")


# Finally, print the sum of count_1 and count_2
print(count_1+count_2)


#Clump Finding Problem:  Find patterns forming clumps in a string. 
#     Input: A string Genome, and integers k, L, and t. 
#     Output: All distinct k-mers forming (L, t)-clumps in Genome.





##################
#Second week
##################
#Skew diagrams
#skew(k): #G - #C for the first k nucleotides of Genome.
#Skew diagram - A plot of skew(k) against k 
#The skew diagram shows where in the genome is the replicaiton origin of E. coli
#When walking along the genome, g-c have been *decreasing* and then
#suddenly starts *increasing*: where are you in the genome? In the oriC region!
#
#Find the minimum of the Skew Diagram, find the replication origin in E. coli but it is not precise
#What else can be done?
#Search for even more elusive hidden messages in the oriC region
#We have found 6 DnaA boxes, but there are two more
#that differe only for a different mutation
# this is important because the DNA polymerase can also bind to oriCs that are not exactly the same
#
#Frequent word with Mismatches Problems. Find the most frequent k-mers with mismatches in a string.
#Input: A string Text, and integers k and d.
#Output: All most frequent k-mers with up to d mismatches in Text.
#
#Complications
#Some bacteria have fewer DnaA boxes
#Terminus of repliation is often not located directly opposite to oriC
#The skew is often more complex than in the case of E. coli.

#General notes:
#Cytosine has a tendency to mutate into thymine through a process called *deamination*
#Deamination rates rise 100-fold when DNA is sengle-stranded, which leads to a decrese
#in cytosine on the forward  half-strand, thus forming mismatched base pairs T-G.
#These mismatched pairs can further mutation into T-A pairs when the bond is repaired
#in the next round of replication, which accounts for the observed decrease in guanine
#on the reverse hal-strand (recall that a forward parent half-strand synthesizes a reverse
#daughter half-strand, and vice-versa).
#
#We know that C is more frequent in half of the genome and less frequent in the other half.
#Let's slide a giant window len(Genome)//2 down the genome, counting the number of occurrences of C in each window.
# '//' in Python indicates *integer division*, or eliminating the remainder; 
#for example, in 11//2 the result is 5, not 5.5
#The goal is to get the window having the fewest occurrences of C will roughly correspond
#to the forward half-strand and that the window having the most occurrences
#of C will roughly correspond to the reverse half-strand.
#If we know where the forward and reverse strands are, then we have found ori!

#   FEWEST OCCURRENCES OF C -> FORWARD HALF-STRAND
#   MOST OCCURRENCES OF C -> REVERSE HALF-STRAND
#   If we know where forward and reverse half-strands are, then we have found ori!

#ExtendedGenome = Genome+Genome[0:n//2] - a string that will "wrap around" the end of the Genome
#Necessary because we are dealing with a circular (aka non linear) genome
#we copy the first len(Genome)//2 nucleotides of Genome to the end of the string
#"It is basically to take the first 10 nuc of a string - go all around the circle
# and then, at the very last nuc, add the first 10 nuc - showing that it's circular."

#We will keep track of the total number of occurrences of C that 
#we encounter in each window of ExtendedGenome by using a *symbol array*
#the i-th element of the symbol array is equal to the number of occurences
#of the symbol in the window of length len(Genome)//2 starting at 
#position i of ExtendedGenome.

#Exercises
#2.2.1
#Fortunately, we already know how to count the number of occurrences of C in 
#a window of ExtendedGenome: use the function PatternCount! We can therefore
# define the following function that takes strings Genome and symbol as input
# and returns the symbol array of Genome corresponding to symbol.

def PatternCount(Text, Pattern):                #function takes text=genome and pattern = any pattern
    for i in range(len(Text) - len(Pattern)+1):
        if Text[i:i+len(Pattern)] == Pattern:
            count = count + 1
    return count

def symbolarray(genome, symbol):                #genome is str, symbol = a,t,c,g or any text, or any pattern
    array = {}                                  #an empty dictionary to 'store' symbol array as a value of symbol
    n = len(genome)                             #the lenght of the genome
    extendedgenome = genome + genome[0:n//2]    #to circularize or "wrap around" the genome
    for i in range(n):                          #looping over the genome
        array[i] = PatternCount(extendedgenome[i:i+(n//2)], symbol) #'storing' counts of "symbol" present in the genome 
    return array

#Try running SymbolArray on your own computer with Genome equal to the E. coli 
#genome and symbol equal to "C". What happens? Why?
#Code to run the above
def PatternCount(Text, Pattern):                #function takes text=genome and pattern = any pattern
    count = 0
    for i in range(len(Text) - len(Pattern)+1):
        if Text[i:i+len(Pattern)] == Pattern:
            count = count + 1
    return count

def SymbolArray(Genome, symbol):                #genome is str, symbol = a,t,c,g or any text, or any pattern
    array = {}                                  #an empty dictionary to 'store' symbol array as a value of symbol
    n = len(Genome)                             #the lenght of the genome
    ExtendedGenome = Genome + Genome[0:n//2]    #to circularize or "wrap around" the genome
    for i in range(n):                          #looping over the genome
        array[i] = PatternCount(ExtendedGenome[i:i+(n//2)], symbol) #'storing' counts of "symbol" present in the genome 
    return array

with open('/Users/deisejpg/Documents/Bioinformatics/Bio_meets_Programming/ecoli_genome.fa', 'r') as inFile:
    ecoli_genome = inFile.read()

SymbolArray(ecoli_genome, "C")

#It takes too much time!
#Why is SymbolArray inefficient? Its for loop makes n = len(Genome) iterations. 
#Then, to compute PatternCount(symbol, ExtendedGenome[i:i+(n//2)]), we must compare
# symbol against n//2 symbols of ExtendedGenome. As a result, we require a total of
# n2//2 comparisons to execute SymbolArray(Genome, symbol). For a bacterial genome
# such as E. coli, which contains over 4.5 million nucleotides, we will need to
# execute over ten trillion symbol comparisons in order to generate a symbol array,
# which could take several days on a fast home computer operating several million
# comparisons per second. For more on running time analysis,
# see DETOUR: Big-O notation.

#From an inefficient to an efficient algorithm!
#To compute PatternCount(symbol, ExtendedGenome[0:n//2]), the algorithm consults
#n//2 positions of ExtendedGenome to compute: 
#PatternCount(symbol,ExtendedGenome[1:1+(n//2)], symbol)
# which consults positions 1 through 1+(n//2) of ExntendedGenome.
#Can we generate a symbol array using only one pass down ExtendedGenome and therefore
#only n+(n//2) total symbol comparisons? Such a method would reduce the running time
# of an algorithm generating the symbol array from a few days to a few seconds.

#2.2.2
def FasterSymbolArray(Genome,symbol):
    array = {}
    n = len(Genome)
    ExtendedGenome = Genome + Genome[0:n//2]

    #look at the first half of Genome to compute first array value
    array[0] = PatternCount(symbol, Genome[0:n//2])
    #let's now consider values ranging from 1 and ending with n-1:
    for i in range(1, n):
        #start by setting the current array value equal to the previous array value
        array[i] = array[i-1]

        #the current array value can differ from the previous array value by at most 1
        if ExtendedGenome[i-1] == symbol:
            array[i] = array[i]-1
        if ExtendedGenome[i+(n//2)-1] == symbol:
            array[i] = array[i]+1
    return array

#Now the whole exercise:
# Input:  Strings Genome and symbol
# Output: FasterSymbolArray(Genome, symbol)
def FasterSymbolArray(Genome,symbol):
    array = {}
    # your code here
    n = len(Genome)
    ExtendedGenome = Genome+Genome[0:n//2]
    array[0] = PatternCount(symbol, Genome[0:n//2])
    for i in range(1,n):
        array[i] = array[i-1]
        if ExtendedGenome[i-1] == symbol:
            array[i] = array[i]-1
        if ExtendedGenome[i+(n//2)-1] == symbol:
            array[i] = array[i]+1
    return array

# Input:  Strings Text and Pattern
# Output: The number of times Pattern appears in Text
# HINT:   This code should be identical to when you last implemented PatternCount
def PatternCount(Pattern, Text):
    count = 0 # output variable
    # your code here
    for i in range(len(Text)-len(Pattern)+1):
        if Text[i:i+len(Pattern)] == Pattern:
            count = count+1
    return count

### DO NOT MODIFY THE CODE BELOW THIS LINE ###
import sys
lines = sys.stdin.read().splitlines()
print(FasterSymbolArray(lines[0],lines[1]))

#The maximum value of the array occurs around position 1600000 
#       > the beginning of the reverse half-strand
#The minimum value of the array occurs around position 4000000 
#       > the beginning of the forward half-strand
#ori occurs where the reverse half-strand transitions to the forward half-strand
#ori neighborhood is around position 4000000 of the E. coli genome


#(1.4) Thus, our idea is to traverse the genome, keeping a running total of the difference 
#between the counts of G and C. If this difference starts increasing, then we guess 
#that we are on the forward half-strand; on the other hand, if this difference starts
# decreasing, then we guess that we are on the reverse half-strand (see figure below).
#Figure: Because of deamination, each forward half-strand has more guanine than cytosine, 
#and each reverse half-strand has more cytosine than guanine. The difference between
# the counts of G and C is therefore positive on the forward half-strand and negative
# on the reverse half-strand.
#We will keep track of the difference between the total number of occurrences of G and the
#total number of occurrences of C that we have encountered so far in Genome by using *skew array*.
# This array denoted Skew, is defined by stting Skew[i] equal to the number of occurrences of G
#minus the number of occurrences of C in the first i nucleotides of Genome.
#We also set Skew[0] equal to 0.
    i       0    1   2   3   4   5   6   7   8   9   10
    Skew[i] 0   -1  -1   -1  0   1   2   1   1   1   0
    Text         C   A   T   G   G   G   C   A   T   C

#Given a string Genome, Skew[0] = 0, and then ranging through the genome.
#At position i of Genome, if we encounter A or T, we set Skew[i+1] equal to Skew[i];
#if we encounter a G, we set Skew[i+1] equal to Skew[i]+1;
#if we encounter a C, we set Skew[i+1] equal to Skew[i-1]-1
#2.2.3
Write a function SkewArray(Genome) that takes a DNA string Genome as input and 
returns the skew array of Genome in the form of a list whose i-th element is Skew[i]. 
Then add this function to Replication.py.

def SkewArray(Genome):
    # your code here
    scores = [0]
    for i in range(1,len(Genome)+1):
        scores.append(scores[-1])
        if Genome[i-1] == 'G':
            scores[i] = scores[i-1]+1
        if Genome[i-1] == 'C':
            scores[i] = scores[i-1]-1
        if Genome[i-1] == 'A' or 'T':
            scores[i] = scores[i]
    return scores

OR:
def SkewArray(Genome):
    skew = [0]
    for i in range(1,len(Genome)+1):
        skew.append(skew[-1])
        if Genome[i-1] == 'C':
            skew[i] = skew[i-1]-1
        elif Genome[i-1] == 'G':
            skew[i] = skew[i-1]+1
        else:
            skew[i] = skew[i]
    return skew



Let’s follow the 5' → 3' direction of DNA and walk along the chromosome from ter to ori (along a reverse half-strand), then continue on from ori to ter (along a forward half-strand). In the figure below, we see that the skew is decreasing along the reverse half-strand and increasing along the forward half-strand. Thus, the skew should achieve a minimum at the position where the reverse half-strand ends and the forward half-strand begins, which is exactly the location of ori!
#2.2.4
We have just developed an insight for a new algorithm for locating ori: it should be found where the skew array attains a minimum.
Minimum Skew Problem:  Find a position in a genome where the skew diagram attains a minimum. 
    Input: A DNA string Genome. 
    Output: All integer(s) i minimizing Skew[i] among all values of i (from 0 to len(Genome)).
We can outline the following function to find these minimum skew positions, using our subroutine SkewArray(Genome) that generates the skew array from a genome.
def MinimumSkew(Genome):
    # generate an empty list positions
    # set a variable equal to SkewArray(Genome)
    # find the minimum value of all values in the skew array
    # range over the length of the skew array and add all positions achieving the min to positions

Code Challenge (3 points): Write a function MinimumSkew taking a DNA string Genome as input and returning all integers i minimizing Skew[i] for Genome. Then add this function to Replication.py. (Hint: make sure to call Skew(Genome) as a subroutine, and keep in mind that Python has a built-in min function in addition to max.)
Click here for this problem's test datasets.
Sample Input:
TAAAGACTGCCGAGAGGCCAACACGAGTGCTAGAACGAGGGGCGTAAACGCGGGTCCGAT
Sample Output:
11 24

# Input:  A DNA string Genome
# Output: A list containing all integers i minimizing Skew(Prefix_i(Text)) over all values of i (from 0 to |Genome|)
def MinimumSkew(Genome):
    positions = [] # placeholder for the output variable
    # your code here
    var = SkewArray(Genome)
    min_var = min(var)
    for i in range(len(Genome)):
        if var[i] == min_var:
            pos = i
            positions.append(pos)
    return positions

# Input:  A String Genome
# Output: SkewArray(Genome)
# HINT:   This code should be taken from the last Code Challenge.
def SkewArray(Genome):
    skew = [0]
    for i in range(1,len(Genome)+1):
        skew.append(skew[-1])
        if Genome[i-1] == 'C':
            skew[i] = skew[i-1]-1
        elif Genome[i-1] == 'G':
            skew[i] = skew[i-1]+1
        else:
            skew[i] = skew[i]
    return skew


#1.2.5
We say that position i in k-mers p and q is a mismatch if the symbols at position i of the two strings are not the same. The total number of mismatches between strings p and q is called the Hamming distance between these strings. We will let you implement a function to compute this distance, called HammingDistance(p, q).
Hamming Distance Problem:  Compute the Hamming distance between two strings. 
 Input: Two strings of equal length.
  Output: The Hamming distance between these strings.
Code Challenge (2 points): Write a function HammingDistance solving the Hamming Distance Problem. Then add this function to Replication.py.
Click here to download this problem's test datasets.
Sample Input:
GGGCCGTTGGT
GGACCGTTGAC
Sample Output:
3

def HammingDistance(p, q):
    # your code here
    hamming_dist = 0
    for i in range(len(p)):
        posp = p[i]
        posq = q[i]
        if posp == posq:
            hamming_dist = hamming_dist
        else:
            hamming_dist = hamming_dist +1
    return hamming_dist
         
#1.2.6
We say that a k-mer Pattern appears as a substring of Text with at most d mismatches if there is some k-mer substring Pattern' of Text having d or fewer mismatches with Pattern; that is, HammingDistance(Pattern, Pattern') ≤ d. Our observation that a DnaA box may appear with slight variations leads to the following generalization of the Pattern Matching Problem.
Approximate Pattern Matching Problem:  Find all approximate occurrences of a pattern in a string. 
 Input: Strings Pattern and Text along with an integer d.
 Output: All starting positions where Pattern appears as a substring of Text with at most d mismatches.
Code Challenge (3 points): Write a function ApproximatePatternMatching to solve the Approximate Pattern Matching Problem. (Make sure to use HammingDistance as a subroutine!)
Click here for this problem's test datasets.
Sample Input:
ATTCTGGA
CGCCCGAATCCAGAACGCATTCCCATATTTCGGGACCACTGGCCTCCACGGTACGGACGTCAATCAAAT
3
Sample Output:
6 7 26 27

# Input:  Strings Pattern and Text along with an integer d
# Output: A list containing all starting positions where Pattern appears
# as a substring of Text with at most d mismatches
def ApproximatePatternMatching(Text, Pattern, d):
    positions = [] # initializing list of positions
    # your code here
    #Text = sequence of interest
    #Pattern = subsequence (or substring) of interest
    #d = number of mismatches
    for i in range(len(Text)-len(Pattern)+1):
        if HammingDistance(Text[i:i+len(Pattern)], Pattern) <= d:
                positions.append(i)
        
    return positions
# Insert your Hamming distance function on the following line.
def HammingDistance(p, q):
    # your code here
    hamming_dist = 0
    for i in range(len(p)):
        posp = p[i]
        posq = q[i]
        if posp == posq:
            hamming_dist = hamming_dist
        else:
            hamming_dist = hamming_dist +1
    return hamming_dist


1.5 Some Hidden Messages Are More Elusive than Others
Our goal now is to modify our previous algorithm for the Frequent Words Problem in order to find DnaA boxes by identifying frequent k-mers, possibly with mismatches. Given input strings Text and Pattern as well as an integer d, we extend the definition of PatternCount to the function ApproximatePatternCount(Pattern, Text, d). This function computes the number of occurrences of Pattern in Text with at most d mismatches. For example,
ApproximatePatternCount(AAAAA, AACAAGCATAAACATTAAAGAG, 1) = 4
because AAAAA appears four times in this string with at most one mismatch: AACAA, ATAAA, AAACA, and AAAGA. Notice that two of these occurrences overlap.
Code Challenge (3 points): Implement the ApproximatePatternCount function in Python. (Hint: you will only need to make a slight change to your existing code to write this function.)
Click here for this problem's test datasets.
Sample Input:
GAGG
TTTAGAGCCTTCAGAGG
2
Sample Output:
4

# Input:  Strings Pattern and Text, and an integer d
# Output: The number of times Pattern appears in Text with at most d mismatches
def ApproximatePatternCount(Pattern, Text, d):
    count = 0 # initialize count variable
    # your code here
    #Pattern = subsequence (of substring) of interest
    #Text = sequence of interest
    #d = number of mismatches allowed
    for i in range(len(Text)-len(Pattern)+1):
        if HammingDistance(Text[i:i+len(Pattern)], Pattern) <= d:
            count = count + 1
    return count

# Insert your HammingDistance function on the following line.
def HammingDistance(p, q):
    # your code here
    hamming_dist = 0
    for i in range(len(p)):
        posp = p[i]
        posq = q[i]
        if posp == posq:
            hamming_dist = hamming_dist
        else:
            hamming_dist = hamming_dist +1
    return hamming_dist

### DO NOT MODIFY THE CODE BELOW THIS LINE ###
import sys
lines = sys.stdin.read().splitlines()
print(ApproximatePatternCount(lines[0],lines[1],int(lines[2])))

1.6 A Final Attempt at Finding DnaA Boxes in E. coli
We now make a final attempt to find DnaA boxes in the region of the E. coli genome hypothesized by the minimum skew as ori. Although the minimum of the skew diagram for E. coli is found at position 3923620, we should not assume that its ori is found exactly at this position due to random fluctuations in the skew. To remedy this issue, we could choose a larger window size (e.g., 1000), but expanding the window introduces the risk that we may bring in other clumped 9-mers that do not represent DnaA boxes but appear in this window more often than the true DnaA box. It makes more sense to try a small window either starting, ending, or centered at the position of minimum skew.

Let’s cross our fingers and identify the most frequent 9-mers (with 1 mismatch) within a window of length 500 starting at position 3923620 of the E. coli genome. Bingo! The experimentally confirmed DnaA box in E. coli (TTATCCACA) is indeed a most frequent 9-mer, along with its reverse complement TGTGGATAA (with 1 mismatch):

You will notice that we highlighted an interior interval of this sequence with darker text. This region is the experimentally verified ori of E. coli, which starts 37 nucleotides after position 3923620, where the skew reaches its minimum value.

We were very fortunate that the DnaA boxes of E. coli are captured in the window that we chose. Moreover, while TTATCCACA represents a most frequent 9-mer in this 500-nucleotide window, it is not the only one: GGATCCTGG, GATCCCAGC, GTTATCCAC, AGCTGGGAT, and CTGGGATCA (along with their reverse complements) also appear four times with 1 mismatch.

STOP and Think: In this chapter, every time we find ori, we seem to find some other surprisingly frequent 9-mers. Why do you think this is?

We do not know what purpose — if any — these other 9-mers serve in the E. coli genome, but we do know that there are many different types of hidden messages in genomes; these hidden messages have a tendency to cluster within a genome, and most of them have nothing to do with replication. The important lesson is that existing approaches to ori prediction remain imperfect and sometimes inconclusive. However, even providing biologists with a small collection of 9-mers as candidate DnaA boxes is a great aid as long as one of these 9-mers is correct.

Thus, the moral of this chapter is that even though computational analysis can be powerful, bioinformaticians should collaborate with biologists to verify their predictions. 

Thanks for reading this far! We hope that you will join us for the next section of the course, where we look for a completely different type of hidden message in DNA (and will find that we need completely different algorithms to decipher these messages).

Python Practice: Review your existing work, and complete Units 6-8 at Codecademy so that you will be ready to take the next steps with the next week of content.

1.7 Detour: Big-O Notation
Computer scientists typically measure an algorithm’s efficiency in terms of its worst-case running time, which is the largest amount of time an algorithm can take for the most difficult input of a given size. The advantage to considering the worst case running time is that we are guaranteed that our algorithm will never behave worse than our worst-case estimate.

Big-O notation compactly describes the running time of an algorithm. For example, if your algorithm for sorting an array of n numbers takes roughly n2 operations for the most difficult dataset, then we say that the running time of your algorithm is O(n2). In reality, depending on your implementation, it may be use any number of operations, such as 1.5n2, n2 + n + 2, or 0.5n2 + 1; all these algorithms are O(n2) because big-O notation only cares about the term that grows the fastest with respect to the size of the input. This is because as n grows very large, the difference in behavior between two O(n2) functions, like 999 · n2 and n2 + 3n + 9999999, is negligible when compared to the behavior of functions from different classes, say O(n2) and O(n6). Of course, we would prefer an algorithm requiring 1/2 · n2 steps to an algorithm requiring 1000 · n2 steps.

When we write that the running time of an algorithm is O(n2), we technically mean that it does not grow faster than a function with a leading term of c · n2, for some constant c. Formally, a function f(n) is Big-O of function g(n), or O(g(n)), when f(n) ≤ c · g(n) for some constant c and sufficiently large n.

For more on Big-O notation, see A Beginner's Guide to Big-O Notation (http://rob-bell.net/2009/06/a-beginners-guide-to-big-o-notation/).



Quiz exercise 6:
p = "CTACAGCAATACGATCATATGCGGATCCGCAGTGGCCGGTAGACACACGT" 
q = "CTACCCCGCTGCTCAATGACCGGGACTAAAGAGGCGAAGATTATGGTGTG"
HammingDistance(p, q)


#Week 3

1.2 Motif Finding is More Difficult Than You Think
Identifying the evening element

In 2000, Steve Kay used DNA arrays (see DETOUR: DNA Arrays) to determine which genes in the plant Arabidopsis thaliana are activated at different times of the day. He then extracted the upstream regions of nearly 500 genes that exhibited circadian behavior and looked for frequently appearing patterns in their upstream regions. If you concatenated these upstream regions into a single string, you would find that "AAAATATCT" is a surprisingly frequent word, appearing 46 times.

Kay named "AAAATATCT" the evening element and performed a simple experiment to prove that it is indeed the regulatory motif responsible for circadian gene expression in Arabidopsis thaliana. After he mutated the evening element in the upstream region of one gene, the gene lost its circadian behavior. 

STOP and Think: What is the possible downside of concatenating all the upstream regions into a single string and looking for frequent words in order to find a motif?
Whereas the evening element in plants is very conserved, and thus easy to find, motifs having many mutations are more elusive. For example, if you infect a fly with a bacterium, the fly will switch on its immunity genes to fight the infection. Thus, some of the genes with elevated expression levels after the infection are likely to be immunity genes. Indeed, some of these genes have 12-mers similar to "TCGGGGATTTCC" in their upstream regions, the binding site of a transcription factor called NF-kB that activates various immunity genes in flies. However, NF-κB binding sites are nowhere near as conserved as the evening element. The figure below shows ten NF-κB binding sites from the Drosophila melanogaster genome; the most popular nucleotides in every column are shown by upper case colored letters.
1  T C G G G G g T T T t t
 2  c C G G t G A c T T a C
 3  a C G G G G A T T T t C
 4  T t G G G G A c T T t t
 5  a a G G G G A c T T C C
 6  T t G G G G A c T T C C
 7  T C G G G G A T T c a t
 8  T C G G G G A T T c C t
 9  T a G G G G A a c T a C
10  T C G G G t A T a a C C
Figure: The ten candidate NF-κB binding sites appearing in the Drosophila melanogaster genome. The colored upper case letters indicate the most frequent nucleotide in each column.
Hide and seek with motifs

Our aim is to turn the biological challenge of finding regulatory motifs into a computational problem. Below, we have implanted a 15-mer hidden message at a randomly selected position in each of ten randomly generated DNA strings. This example mimics a transcription factor binding site hiding in the upstream regions of ten genes.
1 "atgaccgggatactgataaaaaaaagggggggggcgtacacattagataaacgtatgaagtacgttagactcggcgccgccg"
 2 "acccctattttttgagcagatttagtgacctggaaaaaaaatttgagtacaaaacttttccgaataaaaaaaaaggggggga"
 3 "tgagtatccctgggatgacttaaaaaaaagggggggtgctctcccgatttttgaatatgtaggatcattcgccagggtccga"
 4 "gctgagaattggatgaaaaaaaagggggggtccacgcaatcgcgaaccaacgcggacccaaaggcaagaccgataaaggaga"
 5 "tcccttttgcggtaatgtgccgggaggctggttacgtagggaagccctaacggacttaataaaaaaaagggggggcttatag"
 6 "gtcaatcatgttcttgtgaatggatttaaaaaaaaggggggggaccgcttggcgcacccaaattcagtgtgggcgagcgcaa"
 7 "cggttttggcccttgttagaggcccccgtaaaaaaaagggggggcaattatgagagagctaatctatcgcgtgcgtgttcat"
 8 "aacttgagttaaaaaaaagggggggctggggcacatacaagaggagtcttccttatcagttaatgctgtatgacactatgta"
  9 "ttggcccattggctaaaagcccaacttgacaaatggaagatagaatccttgcataaaaaaaagggggggaccgaaagggaag" 
10 "ctggtgagcaacgacagattcttacgtgcattagctcgcttccggggatctaatagcacgaagcttaaaaaaaaggggggga" 

STOP and Think: Can you find the implanted hidden message?
This is a simple problem: applying the FrequentWords algorithm that we developed in the previous chapter to the concatenation of these strings will immediately reveal the most frequent 15-mer shown below as the implanted pattern. Since these short strings were randomly generated, it is unlikely that they contain other frequent 15-mers.

 1 "atgaccgggatactgatAAAAAAAAGGGGGGGggcgtacacattagataaacgtatgaagtacgttagactcggcgccgccg"
 2 "acccctattttttgagcagatttagtgacctggaaaaaaaatttgagtacaaaacttttccgaataAAAAAAAAGGGGGGGa"
 3 "tgagtatccctgggatgacttAAAAAAAAGGGGGGGtgctctcccgatttttgaatatgtaggatcattcgccagggtccga"
 4 "gctgagaattggatgAAAAAAAAGGGGGGGtccacgcaatcgcgaaccaacgcggacccaaaggcaagaccgataaaggaga"
 5 "tcccttttgcggtaatgtgccgggaggctggttacgtagggaagccctaacggacttaatAAAAAAAAGGGGGGGcttatag"
 6 "gtcaatcatgttcttgtgaatggatttAAAAAAAAGGGGGGGgaccgcttggcgcacccaaattcagtgtgggcgagcgcaa"
 7 "cggttttggcccttgttagaggcccccgtAAAAAAAAGGGGGGGcaattatgagagagctaatctatcgcgtgcgtgttcat"
 8 "aacttgagttAAAAAAAAGGGGGGGctggggcacatacaagaggagtcttccttatcagttaatgctgtatgacactatgta"
  9 "ttggcccattggctaaaagcccaacttgacaaatggaagatagaatccttgcatAAAAAAAAGGGGGGGaccgaaagggaag" 
10 "ctggtgagcaacgacagattcttacgtgcattagctcgcttccggggatctaatagcacgaagcttAAAAAAAAGGGGGGGa" 

Now imagine that instead of implanting exactly the same pattern into all strings, we mutate the pattern before inserting it into each string by randomly changing the nucleotides at four randomly selected positions within each implanted 15-mer, as shown below.

 1 "atgaccgggatactgatAgAAgAAAGGttGGGggcgtacacattagataaacgtatgaagtacgttagactcggcgccgccg"
 2 "acccctattttttgagcagatttagtgacctggaaaaaaaatttgagtacaaaacttttccgaatacAAtAAAAcGGcGGGa"
 3 "tgagtatccctgggatgacttAAAAtAAtGGaGtGGtgctctcccgatttttgaatatgtaggatcattcgccagggtccga"
 4 "gctgagaattggatgcAAAAAAAGGGattGtccacgcaatcgcgaaccaacgcggacccaaaggcaagaccgataaaggaga"
 5 "tcccttttgcggtaatgtgccgggaggctggttacgtagggaagccctaacggacttaatAtAAtAAAGGaaGGGcttatag"
 6 "gtcaatcatgttcttgtgaatggatttAAcAAtAAGGGctGGgaccgcttggcgcacccaaattcagtgtgggcgagcgcaa"
 7 "cggttttggcccttgttagaggcccccgtAtAAAcAAGGaGGGccaattatgagagagctaatctatcgcgtgcgtgttcat"
 8 "aacttgagttAAAAAAtAGGGaGccctggggcacatacaagaggagtcttccttatcagttaatgctgtatgacactatgta"
  9 "ttggcccattggctaaaagcccaacttgacaaatggaagatagaatccttgcatActAAAAAGGaGcGGaccgaaagggaag" 
10 "ctggtgagcaacgacagattcttacgtgcattagctcgcttccggggatctaatagcacgaagcttActAAAAAGGaGcGGa" 

FrequentWords is no longer going to help us, since AAAAAAAAGGGGGGG does not even appear in the strings above. We could adapt the Frequent Words Problem into a “Frequent Words with Mismatches Problem”. However, concatenating all the strings into a single string is inadequate because it does not correctly model the biological problem of motif finding. A DnaA box is a pattern that clumps, or appears frequently, within a DNA string. In contrast, a regulatory motif is a pattern that appears at least once in each one of several different regions that are scattered throughout the genome. 

Furthermore, when Steve Kay used a DNA array to infer the set of circadian genes in plants, he did not expect that all genes in the resulting set would have the evening element (or its variants) in their upstream regions. Similarly, biologists do not expect that all genes with an elevated expression level in infected flies must be regulated by NF-κB. DNA array experiments are inherently noisy, and some genes identified by these experiments have nothing to do with the circadian clock in plants or immunity genes in flies.

1.3 Scoring Motifs
From motifs to profile matrices and consensus strings

A computational problem formulation for motif finding would score individual instances of motifs depending on how similar they are to an “ideal” motif (i.e., a transcription factor binding site that binds the best to the transcription factor). However, since the ideal motif is unknown, we attempt to select a k-mer from each string and score these k-mers depending on how similar they are to each other.

To define scoring, consider a list of t DNA strings Dna, where each string has length n, and select a k-mer from each string to form a collection Motifs, which we represent as a t x k motif matrix. In the figure below, which shows the motif matrix for the NF-κB binding sites from the figure below, we indicate the most frequent nucleotide in each column of the motif matrix by upper case letters. If there are multiple most frequent nucleotides in a column, then we arbitrarily select one of them to break the tie. Note that positions 2 and 3 are the most conserved (nucleotide G is completely conserved in these positions), whereas position 10 is the least conserved.

Figure: The NF-κB binding sites form a 10 x 12 motif matrix, with the most frequent nucleotide in each column shown in upper case letters and all other nucleotides shown in lower case letters.

By varying the choice of k-mers in each string, we can construct a large number of different motif matrices from a given sample of DNA strings. Our goal is to select k-mers resulting in the most “conserved” motif matrix, meaning the matrix with the most upper case letters (and thus the fewest number of lower case letters). Leaving aside the question of how we select such k-mers, we will first focus on how to score the resulting motif matrices, defining Score(Motifs) as the number of unpopular (lower case) letters in the motif matrix Motifs (see updated figure below). Our goal is to find a collection of k-mers that minimizes this score (for more on motif scoring functions, see DETOUR: Motif Scoring Functions).

For a given choice of Motifs, we can construct a 4 x k count matrix, denoted Count(Motifs), counting the number of occurrences of each nucleotide in each column of the motif matrix; element (i,j) of Count(Motifs) stores the number of times that nucleotide i appears in column j of Motifs. (See updated figure below).



To generate a count matrix from an arbitrary list of strings Motifs, we need to first initialize the count matrix, represented as a dictionary:

    count = {}
We then range over all nucleotides symbol and create a list of zeroes corresponding to count[symbol].

    k = len(Motifs[0])
    for symbol in "ACGT":
        count[symbol] = []
        for j in range(k):
             count[symbol].append(0)
Note that the first line above sets k equal to the length of Motifs[0], the first string in Motifs, which is the length of every string in Motifs. Also, note the difference between the line count = {} (which forms an empty dictionary) and the line count[symbol] = [] (which forms an empty list). Finally, we need to range over all elements symbol = Motifs[i][j] of the count matrix and add 1 to count[symbol][j].

    t = len(Motifs)
    for i in range(t):
        for j in range(k):
            symbol = Motifs[i][j]
            count[symbol][j] += 1
Code Challenge (1 point): Write a function Count(Motifs) that takes a list of strings Motifs as input and returns the count matrix of  Motifs (as a dictionary of lists). Then place this function into a new Python file for this chapter called "Motifs.py".
Sample Input:
AACGTA
CCCGTT
CACCTT
GGATTA
TTCCGG
Sample Output:
{'A': [1, 2, 1, 0, 0, 2], 'C': [2, 1, 4, 2, 0, 0], 'G': [1, 1, 0, 2, 1, 1], 'T': [1, 1, 0, 1, 4, 2]}

# Input:  A set of kmers Motifs
# Output: Count(Motifs)
def Count(Motifs):
    #t = the number of rows in Motifs
    #k = the length of the Motifs
    count = {} # initializing the count dictionary
    # your code here
    k = len(Motifs[0])
    for symbol in "ACGT":
        count[symbol] = []
        for j in range(k):
             count[symbol].append(0)
    t = len(Motifs)
    for i in range(t):
        for j in range(k):
            symbol = Motifs[i][j]
            count[symbol][j] += 1
    return count

As shown below, we will further divide all of the elements in the count matrix by t, the number of rows in Motifs. This results in a profile matrix Profile(Motifs) for which element (i,j) is the frequency of the i-th nucleotide in the j-th column of the motif matrix (i.e., the number of occurrences of the i-th nucleotide divided by t, the number of nucleotides in the column). Note that the elements of any column of the profile matrix sum to 1.
Now that we can generate Count(Motifs), in order to compute Profile(Motifs), we simply need to divide each element of the count matrix by the number of rows in the count matrix, which we leave to you as an exercise.

Code Challenge (3 points): Write a function Profile(Motifs) that takes Motifs as input and returns their profile matrix as a dictionary of lists. Then place this function into Motifs.py. Make sure that you use the Count(Motifs) function that we already wrote as a subroutine!
Click here for this problem's test datasets.
Sample Input:
AACGTA
CCCGTT
CACCTT
GGATTA
TTCCGG
Sample Output:
{'A': [0.2, 0.4, 0.2, 0.0, 0.0, 0.4], 'C': [0.4, 0.2, 0.8, 0.4, 0.0, 0.0], 'G': [0.2, 0.2, 0.0, 0.4, 0.2, 0.2], 'T': [0.2, 0.2, 0.0, 0.2, 0.8, 0.4]}

# Input:  A list of kmers Motifs
# Output: the profile matrix of Motifs, as a dictionary of lists.
def Profile(Motifs):
    #t = the number of rows in Motifs
    #k = the length of the Motifs
    k = len(Motifs[0])
    t = len(Motifs)
    profile = {}
    # insert your code here
    k = len(Motifs[0])
    for symbol in "ACGT":
        profile[symbol] = []
        for j in range(k):
            profile[symbol].append(0)
    for i in range(t):
        for j in range(k):
            symbol = Motifs[i][j]
            profile[symbol][j] += float(1)/t
    return profile

#Praticing second exercise of 1.3, trying to implement the function Count(Motifs) as a subroutine of Profile(Motifs)
#the code is incorrect... clues: range() and t
def Profile(Motifs):
    t = len(Motifs)
    k = len(Motifs[0])
    profile = {}
    # insert your code here
    count_motifs = Count(Motifs)
    for symbol in "ACGT":
        profile[symbol] = []
        for j in range(k):
            profile[symbol].append(0)
    for i in count_motifs:
        for j in count_motifs[i]:
            profile[i][j] = float(count_motifs[i][j])/float(t)
    return profile

Finally, we can form a consensus string, denoted Consensus(Motifs), from the most popular nucleotides in each column of the motif matrix (ties are broken arbitrarily). If we select Motifs correctly from the collection of upstream regions, then Consensus(Motifs) provides a candidate regulatory motif for these regions. For example, as shown below, the consensus string for the NF-κB binding sites is "TCGGGGATTTCC".

We can implement Consensus(Motifs) using Count(Motifs) as a subroutine. To do so, note that the j-th symbol of this consensus string is equal to the symbol corresponding to a maximum element in column j of Count(Motifs).

To implement this idea in Python, first set k equal to the length of Motifs[0] (as we did before) and count equal to the count matrix of Motifs.

    k = len(Motifs[0])
    count = Count(Motifs)
Then, initialize an empty consensus string, and range through each column of the count matrix, adding the maximum element from column j at step j.

    consensus = ""
    for j in range(k):
        m = 0
        frequentSymbol = ""
        for symbol in "ACGT":
            if count[symbol][j] > m:
                m = count[symbol][j]
                frequentSymbol = symbol
        consensus += frequentSymbol
Code Challenge (1 point): Put this code into a function Consensus(Motifs) that takes a list of strings Motifs as input and returns the consensus string of  Motifs. Then copy this function into Motifs.py.

# Insert your Count(Motifs) function here.
def Count(Motifs):
    #t = the number of rows in Motifs
    #k = the length of the Motifs
    count = {} # initializing the count dictionary
    # your code here
    k = len(Motifs[0])
    for symbol in "ACGT":
        count[symbol] = []
        for j in range(k):
             count[symbol].append(0)
    t = len(Motifs)
    for i in range(t):
        for j in range(k):
            symbol = Motifs[i][j]
            count[symbol][j] += 1
    return count

# Input:  A set of kmers Motifs
# Output: A consensus string of Motifs.
def Consensus(Motifs):
    # insert your code here
    k = len(Motifs[0])
    count = Count(Motifs)
    consensus = ""
    for j in range(k):
        m = 0
        frequentSymbol = ""
        for symbol in "ACGT":
            if count[symbol][j] > m:
                m = count[symbol][j]
                frequentSymbol = symbol
        consensus += frequentSymbol
    return consensus
    

    Finally, we can compute Score(Motifs) by first constructing Consensus(Motifs) and then summing the number of symbols in the j-th column of Motifs that do not match the symbol in position j of the consensus string. We leave this task to you as an exercise.

Code Challenge (3 points): Implement the function Score(Motifs). (Make sure you use Consensus(Motifs) as a subroutine!)  Then add Score(Motifs) to Motifs.py.

Click here for this problem's test datasets.

Sample Input:
AACGTA
CCCGTT
CACCTT
GGATTA
TTCCGG
Sample Output:
14

def Score(Motifs):
    t = len(Motifs)
    k = len(Motifs[0])
    score = 0
    score_matrix = [0]*k
    consensus = Consensus(Motifs)
    for i in range(t):
        for j in range(k):
            if not Motifs[i][j] == consensus[j]:
                score_matrix[j] +=1
    for i in range(len(score_matrix)):
        score += score_matrix[i]
    return score

   
1.4 Greedy Motif Search

To implement a function Pr(Text, Profile), we begin by setting a “probability” variable p equal to 1. We then range through the characters of Text one at a time. At position i of Text, we set p equal to p times the value of Profile corresponding to symbol Text[i] and column i, which is just Profile[Text[i]][i].

Code Challenge (2 points): Use this idea to write a function Pr(Text, Profile) and add it to Motifs.py.

Click here to download this problem's test datasets.

Sample Input:
ACGGGGATTACC
0.2 0.2 0.0 0.0 0.0 0.0 0.9 0.1 0.1 0.1 0.3 0.0
0.1 0.6 0.0 0.0 0.0 0.0 0.0 0.4 0.1 0.2 0.4 0.6
0.0 0.0 1.0 1.0 0.9 0.9 0.1 0.0 0.0 0.0 0.0 0.0
0.7 0.2 0.0 0.0 0.1 0.1 0.0 0.5 0.8 0.7 0.3 0.4
Sample Output:
0.0008398080000000002

# Input:  String Text and profile matrix Profile
# Output: Pr(Text, Profile)
def Pr(Text, Profile):
    # insert your code here
    # text refers to the sequence of interes
    # profile refers to the probability of recoverinb a given nucleotide
    p = 1
    for index in range(0, len(Text)):
        p = p * Profile[Text[index]][index]
    return p

Given a profile matrix Profile, we can compute the probability of every k-mer in a string Text and find a Profile-most probable k-mer in Text, i.e., a k-mer that was most likely to have been generated by Profile among all k-mers in Text. For the NF-κB profile matrix, "ACGGGGATTACC" is the Profile-most probable 12-mer in "ggtACGGGGATTACCt". Indeed, every other 12-mer in this string has probability 0. In general, if there are multiple Profile-most probable k-mers in Text, then we select the first such k-mer occurring in Text.

Profile-most Probable k-mer Problem: Find a Profile-most probable k-mer in a string. 
 Input: A string Text, an integer k, and a 4 x k matrix Profile.
 Output: A Profile-most probable k-mer in Text.

Code Challenge (3 points): Solve the Profile-most Probable k-mer Problem by writing a function ProfileMostProbablePattern(Text, k, Profile). (Hint: make sure to use the function Pr(Text, Profile) as a subroutine.)

Sample Input:
text: ACCTGTTTATTGCCTAAGTTCCGAACAAACCCAATATAGCCCGAGGGCCT
k: 5
Profile:
0.2 0.2 0.3 0.2 0.3
0.4 0.3 0.1 0.5 0.1
0.3 0.3 0.5 0.2 0.4
0.1 0.2 0.1 0.1 0.2

Sample Output:
CCGAG

# Insert your Pr(text, profile) function here from Motifs.py.
def Pr(Text, Profile):
    # text refers to the sequence of interest
    # profile refers to the probability of recovering a given nucleotide
    p = 1
    for index in range(0, len(Text)):
        p = p * Profile[Text[index]][index]
    return p

# Write your ProfileMostProbableKmer() function here.
# The profile matrix assumes that the first row corresponds to A, the second corresponds to C,
# the third corresponds to G, and the fourth corresponds to T.
# You should represent the profile matrix as a dictionary whose keys are 'A', 'C', 'G', and 'T' and whose values are lists of floats
def ProfileMostProbableKmer(text, k, Profile):
    n = len(text)
    pr = {}
    most_prob_kmer = []
    for i in range(n-k+1):
        kmer = text[i:i+k]
        probability = Pr(kmer, Profile)
        pr[kmer] = probability
    m = max(pr.values())
    for key, value in pr.items():
        if pr[key] == m:
            most_prob_kmer.append(key)
    return most_prob_kmer[0]

Our proposed greedy motif search algorithm, GreedyMotifSearch, starts by setting BestMotifs equal to the first k-mer from each string in Dna. These strings will serve as the best-scoring motifs found thus far.

    BestMotifs = []
    for i in range(0, t):
        BestMotifs.append(Dna[i][0:k])
It then ranges over all possible k-mers in Dna[0], trying each one as Motifs[0]. For a given choice of k-mer in Dna[0] for Motifs[0], the algorithm then builds a profile matrix Profile for this lone k-mer, and sets Motifs[1] equal to the Profile-most probable k-mer in Dna[1]. GreedyMotifSearch then iterates by updating Profile as the profile matrix formed from Motifs[0] and Motifs[1], and sets Motifs[2] equal to the Profile-most probable k-mer in Dna[2]. In general, after finding k-mers Motifs in the first i strings of Dna, GreedyMotifSearch constructs Profile(Motifs) and sets Motifs[i] equal to the Profile-most probable k-mer from Dna[i] based on this profile matrix.

    n = len(Dna[0])
    for i in range(n-k+1):
        Motifs = []
        Motifs.append(Dna[0][i:i+k])
        for j in range(1, t):
            P = Profile(Motifs[0:j])
            Motifs.append(ProfileMostProbablePattern(Dna[j], k, P))
After selecting a k-mer from each string in Dna to obtain a collection of strings Motifs, GreedyMotifSearch checks whether Motifs outscores the current best scoring collection of motifs, BestMotifs.

        if Score(Motifs) < Score(BestMotifs):
            BestMotifs = Motifs
It then returns to the top of the for loop and moves one symbol over in Dna[0], beginning the entire process of generating  Motifs again. After generating a collection Motifs for every possible initial k-mer from Dna[0], it returns the high-scoring strings BestMotifs.

Note: Graeme Benstead-Hume wrote a post explaining GreedyMotifSearch in greater detail. Graeme was one of the excellent learners in our first ever MOOC session, and has since gone on to become a PhD student in bioinformatics at the University of Sussex! If you need more time to understand the algorithm, you may want to check out his post.

Code Challenge (1 point): Consolidate this code into a function GreedyMotifSearch(Dna, k, t), and then add this function to Motifs.py.

Click here to download this problem's test datasets.
Sample Input:
3 5
GGCGTTCAGGCA
AAGAATCAGTCA
CAAGGAGTTCGC
CACGTCAATCAC
CAATAATATTCG
Sample Output:
CAG
CAG
CAA
CAA
CAA

to read: http://www.mrgraeme.co.uk/greedy-motif-search/

# Copy your Score(Motifs), Count(Motifs), Profile(Motifs), and Consensus(Motifs) functions here.
# Then copy your ProfileMostProbableKmer(Text, k, Profile) and Pr(Text, Profile) functions here.
# Input:  A list of kmers Dna, and integers k and t (where t is the number of kmers in Dna)
# Output: GreedyMotifSearch(Dna, k, t)
def ProfileMostProbablePattern(text,k,profile):
    p=-1
    result=text[0:k]
    for i in range(len(text)-k+1):
        seq=text[i:i+k]
        pr=Pr(seq,profile)
        if pr>p:
            p=pr
            result=seq
    return result

def GreedyMotifSearch(Dna, k, t):
    # type your GreedyMotifSearch code here.
    BestMotifs = []
    for i in range(0, t):
        BestMotifs.append(Dna[i][0:k])
    n = len(Dna[0])
    for i in range(n-k+1):
        Motifs = []
        Motifs.append(Dna[0][i:i+k])
        for j in range(1, t):
            P = Profile(Motifs[0:j])
            Motifs.append(ProfileMostProbablePattern(Dna[j], k, P))
        if Score(Motifs) < Score(BestMotifs):
            BestMotifs = Motifs
    return BestMotifs

Exercise Break (1 point): Use GreedyMotifSearch to look for motifs in the DosR dataset with k-mer length equal to 15 (click here to download).


# Copy your GreedyMotifSearch function (along with all required subroutines) from Motifs.py below this line
def ProfileMostProbablePattern(text,k,profile):
    p=-1
    result=text[0:k]
    for i in range(len(text)-k+1):
        seq=text[i:i+k]
        pr=Pr(seq,profile)
        if pr>p:
            p=pr
            result=seq
    return result

def GreedyMotifSearch(Dna, k, t):
    # type your GreedyMotifSearch code here.
    BestMotifs = []
    for i in range(0, t):
        BestMotifs.append(Dna[i][0:k])
    n = len(Dna[0])
    for i in range(n-k+1):
        Motifs = []
        Motifs.append(Dna[0][i:i+k])
        for j in range(1, t):
            P = Profile(Motifs[0:j])
            Motifs.append(ProfileMostProbablePattern(Dna[j], k, P))
        if Score(Motifs) < Score(BestMotifs):
            BestMotifs = Motifs
    return BestMotifs
# Copy your Score(Motifs), Count(Motifs), Profile(Motifs), and Consensus(Motifs) functions here.
def Score(Motifs):
    t = len(Motifs)
    k = len(Motifs[0])
    score = 0
    score_matrix = [0]*k
    consensus = Consensus(Motifs)
    for i in range(t):
        for j in range(k):
            if not Motifs[i][j] == consensus[j]:
                score_matrix[j] +=1
    for i in range(len(score_matrix)):
        score += score_matrix[i]
    return score
def Count(Motifs):
    count = {} # initializing the count dictionary
    # your code here
    k = len(Motifs[0])
    for symbol in "ACGT":
        count[symbol] = []
        for j in range(k):
             count[symbol].append(0)
    t = len(Motifs)
    for i in range(t):
        for j in range(k):
            symbol = Motifs[i][j]
            count[symbol][j] += 1
    return count
def Profile(Motifs):
    #t = the number of rows in Motifs
    #k = the length of the Motifs
    k = len(Motifs[0])
    t = len(Motifs)
    profile = {}
    # insert your code here
    k = len(Motifs[0])
    for symbol in "ACGT":
        profile[symbol] = []
        for j in range(k):
            profile[symbol].append(0)
    for i in range(t):
        for j in range(k):
            symbol = Motifs[i][j]
            profile[symbol][j] += float(1)/t
    return profile
def Consensus(Motifs):
    # insert your code here
    k = len(Motifs[0])
    count = Count(Motifs)
    consensus = ""
    for j in range(k):
        m = 0
        frequentSymbol = ""
        for symbol in "ACGT":
            if count[symbol][j] > m:
                m = count[symbol][j]
                frequentSymbol = symbol
        consensus += frequentSymbol
    return consensus
# Then copy your ProfileMostProbableKmer(Text, k, Profile) and Pr(Text, Profile) functions here.
def ProfileMostProbableKmer(text, k, Profile):
    n = len(text)
    pr = {}
    most_prob_kmer = []
    for i in range(n-k+1):
        kmer = text[i:i+k]
        probability = Pr(kmer, Profile)
        pr[kmer] = probability
    m = max(pr.values())
    for key, value in pr.items():
        if pr[key] == m:
            most_prob_kmer.append(key)
    return most_prob_kmer[0]
def Pr(Text, Profile):
    # insert your code here
    # text refers to the sequence of interes
    # profile refers to the probability of recoverinb a given nucleotide
    p = 1
    for index in range(0, len(Text)):
        p = p * Profile[Text[index]][index]
    return p

# Input:  A list of kmers Dna, and integers k and t (where t is the number of kmers in Dna)
# Output: GreedyMotifSearch(Dna, k, t)

# Copy the ten strings occurring in the hyperlinked DosR dataset below.
Dna = ["GCGCCCCGCCCGGACAGCCATGCGCTAACCCTGGCTTCGATGGCGCCGGCTCAGTTAGGGCCGGAAGTCCCCAATGTGGCAGACCTTTCGCCCCTGGCGGACGAATGACCCCAGTGGCCGGGACTTCAGGCCCTATCGGAGGGCTCCGGCGCGGTGGTCGGATTTGTCTGTGGAGGTTACACCCCAATCGCAAGGATGCATTATGACCAGCGAGCTGAGCCTGGTCGCCACTGGAAAGGGGAGCAACATC","CCGATCGGCATCACTATCGGTCCTGCGGCCGCCCATAGCGCTATATCCGGCTGGTGAAATCAATTGACAACCTTCGACTTTGAGGTGGCCTACGGCGAGGACAAGCCAGGCAAGCCAGCTGCCTCAACGCGCGCCAGTACGGGTCCATCGACCCGCGGCCCACGGGTCAAACGACCCTAGTGTTCGCTACGACGTGGTCGTACCTTCGGCAGCAGATCAGCAATAGCACCCCGACTCGAGGAGGATCCCG","ACCGTCGATGTGCCCGGTCGCGCCGCGTCCACCTCGGTCATCGACCCCACGATGAGGACGCCATCGGCCGCGACCAAGCCCCGTGAAACTCTGACGGCGTGCTGGCCGGGCTGCGGCACCTGATCACCTTAGGGCACTTGGGCCACCACAACGGGCCGCCGGTCTCGACAGTGGCCACCACCACACAGGTGACTTCCGGCGGGACGTAAGTCCCTAACGCGTCGTTCCGCACGCGGTTAGCTTTGCTGCC","GGGTCAGGTATATTTATCGCACACTTGGGCACATGACACACAAGCGCCAGAATCCCGGACCGAACCGAGCACCGTGGGTGGGCAGCCTCCATACAGCGATGACCTGATCGATCATCGGCCAGGGCGCCGGGCTTCCAACCGTGGCCGTCTCAGTACCCAGCCTCATTGACCCTTCGACGCATCCACTGCGCGTAAGTCGGCTCAACCCTTTCAAACCGCTGGATTACCGACCGCAGAAAGGGGGCAGGAC","GTAGGTCAAACCGGGTGTACATACCCGCTCAATCGCCCAGCACTTCGGGCAGATCACCGGGTTTCCCCGGTATCACCAATACTGCCACCAAACACAGCAGGCGGGAAGGGGCGAAAGTCCCTTATCCGACAATAAAACTTCGCTTGTTCGACGCCCGGTTCACCCGATATGCACGGCGCCCAGCCATTCGTGACCGACGTCCCCAGCCCCAAGGCCGAACGACCCTAGGAGCCACGAGCAATTCACAGCG","CCGCTGGCGACGCTGTTCGCCGGCAGCGTGCGTGACGACTTCGAGCTGCCCGACTACACCTGGTGACCACCGCCGACGGGCACCTCTCCGCCAGGTAGGCACGGTTTGTCGCCGGCAATGTGACCTTTGGGCGCGGTCTTGAGGACCTTCGGCCCCACCCACGAGGCCGCCGCCGGCCGATCGTATGACGTGCAATGTACGCCATAGGGTGCGTGTTACGGCGATTACCTGAAGGCGGCGGTGGTCCGGA","GGCCAACTGCACCGCGCTCTTGATGACATCGGTGGTCACCATGGTGTCCGGCATGATCAACCTCCGCTGTTCGATATCACCCCGATCTTTCTGAACGGCGGTTGGCAGACAACAGGGTCAATGGTCCCCAAGTGGATCACCGACGGGCGCGGACAAATGGCCCGCGCTTCGGGGACTTCTGTCCCTAGCCCTGGCCACGATGGGCTGGTCGGATCAAAGGCATCCGTTTCCATCGATTAGGAGGCATCAA","GTACATGTCCAGAGCGAGCCTCAGCTTCTGCGCAGCGACGGAAACTGCCACACTCAAAGCCTACTGGGCGCACGTGTGGCAACGAGTCGATCCACACGAAATGCCGCCGTTGGGCCGCGGACTAGCCGAATTTTCCGGGTGGTGACACAGCCCACATTTGGCATGGGACTTTCGGCCCTGTCCGCGTCCGTGTCGGCCAGACAAGCTTTGGGCATTGGCCACAATCGGGCCACAATCGAAAGCCGAGCAG","GGCAGCTGTCGGCAACTGTAAGCCATTTCTGGGACTTTGCTGTGAAAAGCTGGGCGATGGTTGTGGACCTGGACGAGCCACCCGTGCGATAGGTGAGATTCATTCTCGCCCTGACGGGTTGCGTCTGTCATCGGTCGATAAGGACTAACGGCCCTCAGGTGGGGACCAACGCCCCTGGGAGATAGCGGTCCCCGCCAGTAACGTACCGCTGAACCGACGGGATGTATCCGCCCCAGCGAAGGAGACGGCG","TCAGCACCATGACCGCCTGGCCACCAATCGCCCGTAACAAGCGGGACGTCCGCGACGACGCGTGCGCTAGCGCCGTGGCGGTGACAACGACCAGATATGGTCCGAGCACGCGGGCGAACCTCGTGTTCTGGCCTCGGCCAGTTGTGTAGAGCTCATCGCTGTCATCGAGCGATATCCGACCACTGATCCAAGTCGGGGGCTCTGGGGACCGAAGTCCCCGGGCTCGGAGCTATCGGACCTCACGATCACC"]

# set t equal to the number of strings in Dna and k equal to 15
t = 10
k = 15
# Call GreedyMotifSearch(Dna, k, t) and store the output in a variable called Motifs
Motifs = GreedyMotifSearch(Dna, k, t)
# Print the Motifs variable
print(Motifs)
# Print Score(Motifs)
print(Score(Motifs))


#Week4
Gibbs sampling algorithm
How do we find regulatory motifs?
RandomizedMotifSearch: may replace all k-mers in a single iteration and thus may potentially discard a nearly correct motif.
    *may change all k-mers in 1 iteration*

Gibbs sampling: replaces a single k-mer at each iteration and thus moves with more caution in the space of all motifs.
    *changes a single k-mer in 1 iteration*

1. Forms Motifs by randomly selecting a k-mer in each sequence.
2. Randomly choose one of selected k-mers (from RemovedSequence) and remove it from Motifs.
3. Create a Profile from the remaining k-mers in Motifs.
4. For each k-mer in RemovedSequences, calculate Pr(k-mer|Profile) resultind in n-k+1 probabilities: p1, p2, ..., pn-k+1
5. Roll a die (with n-k+1 sides) where probability of ending up at side i is proportional to pi.
6. Choose a new starting position based on rolling the die. Add the k-mer starting at this position in RemovedSequence to Motifs.
7. Repeat steps 2-6.

Cromwell's Rule
the use of probabilities of 0 and 1 should be avoided, unless we talk about purely logical statementes.
We should leave a little probability that the sun will not rise tomorrow.

How do we find regulatory motifs in DNA?
Greedy and randomized algorithms

Pseudocounts - dealing with zeros in the profile matrix
Laplace's Rule of Succession: in small datasets, there is always a chance that a possible event does not occur (e.g., zeroes in Count matrix)
Randomized algorithgms do not like zeroes and introduce pseudocounts that inflate the probabilities of rare eventes and eliminate empricial zero-frequencies.
Laplace calculated the prob that the sun will not rise tomorrow, given that is has risen every day for the past 5000 years (1 in 1826251)
His estimates was ridicules because his opponents failed to understand its importance.
If we repeat an experiment that can result in a success or failure n times and get s successes, what is the probability that the enxt repetition will be a success?


Pseudocounts:
If x1, ..., xn+1, are conditionally independent random boolean variables (failure 0 or success 1) then:
Pr(xn+1 = 1|X1+...+xn=s) (s+1)/(n+2)
(n+2 refers to the success and failure aka two 'psudocount' observations)

What would Laplace do to get rid of Zeroes?
Update count matrix with pseudocounts

1. Forms Motifs by randomly selecting a k-mer in each sequence. 
    *(randomly select Motifs)*
2. Randomly choose one of selected k-mers (from RemovedSequence) and remove it from Motifs. 
    *(randomly remove a k-mer in Motifs)*
3. Create a Profile from the remaining k-mers in Motifs. 
    *(create a Motifs matrix)*
        *(create a count matrix)*
            *(NEW: update the count matrix with pseudocounts by adding 1 to each entry, following Laplace's succession rule)*
                *(construct a Profile using Laplace's Rule)*
4. For each k-mer in RemovedSequences, calculate Pr(k-mer|Profile) resultind in n-k+1 probabilities: p1, p2, ..., pn-k+1. 
    *(compute probability for each k-mer in the deleted string)*
5. Roll a die (with n-k+1 sides) where probability of ending up at side i is proportional to pi.
    *(roll a seven-sided die which will lead to choosing a new starting position in the deleted sequence)*
6. Choose a new starting position based on rolling the die. Add the k-mer starting at this position in RemovedSequence to Motifs.
7. Repeat steps 2-6. *(iterate)*


1 Which DNA patterns play the role of molecular clocks?
1.1 Motif finding meets Oliver Cromwell
What is the probability that the sun will not rise tomorrow?
In 1650, after the Scots proclaimed Charles II as king during the English Civil War, Oliver Cromwell made a famous appeal to the Church of Scotland. Urging them to see the error of their royal alliance, he pleaded,

I beseech you, in the bowels of Christ, think it possible that you may be mistaken.

The Scots rejected the appeal, and Cromwell invaded Scotland in response. His quotation later inspired the statistical maxim called Cromwell’s rule, which states that we should not use probabilities of 0 or 1 unless we are talking about logical statements that can only be true or false. In other words, we should allow a small probability for extremely unlikely events, such as “this book was written by aliens” or “the sun will not rise tomorrow”. We cannot speak to the likelihood of the former event, but in the 18th Century, the French mathematician Pierre-Simon Laplace actually estimated the probability that the sun will not rise tomorrow (1/1826251), given that it has risen every day for the past 5000 years. Although this estimate was ridiculed by his contemporaries, Laplace’s approach to this question now plays an important role in statistics. 

In any observed data set, there is the possibility, especially with low-probability events or small data sets, that an event with nonzero probability does not occur. Its observed frequency is therefore zero; however, setting the empirical probability of the event equal to zero represents an inaccurate oversimplification that may cause problems. By artificially adjusting the probability of rare events, these problems can be mitigated.

Laplace’s Rule of Succession

Cromwell’s rule is relevant to the calculation of the probability of a string based on a profile matrix. For example, consider the following Profile:
fig
The fourth symbol of "TCGTGGATTTCC" causes Pr("TCGTGGATTTCC", Profile) to be equal to zero. As a result, the entire string is assigned a zero probability, even though "TCGTGGATTTCC" differs from the consensus string at only one position. For that matter, "TCGTGGATTTCC" has the same low probability as "AAATCTTGGAA", which differs from the consensus string at every position.

In order to improve this unfair scoring, bioinformaticians often substitute zeroes with small numbers called pseudocounts. The simplest approach to introducing pseudocounts, called Laplace’s Rule of Succession, is similar to the principle that Laplace used to calculate the probability that the sun will not rise tomorrow. In the case of motifs, pseudocounts often amount to adding 1 (or some other small number) to each element of Count(Motifs). For example, say that we have the following motif, count, and profile matrices:


Laplace’s Rule of Succession adds 1 to each element of Count(Motifs), updating the two matrices to the following:

Code Challenge (2 points): Write a function CountWithPseudocounts(Motifs) that takes a list of strings Motifs as input and returns the count matrix of Motifs with pseudocounts as a dictionary of lists. Then add this function to Motifs.py. (Hint: how can you solve this problem by making a very small change to your original function Count(Motifs)?
Sample Input:
AACGTA
CCCGTT
CACCTT
GGATTA
TTCCGG
Sample Output:
{'A': [2, 3, 2, 1, 1, 3], 'C': [3, 2, 5, 3, 1, 1], 'G': [2, 2, 1, 3, 2, 2], 'T': [2, 2, 1, 2, 5, 3]}

# Input:  A set of kmers Motifs
# Output: CountWithPseudocounts(Motifs)
def CountWithPseudocounts(Motifs):
    #k = the length of the Motifs
    #t = the number of rows in Motifs
    count = {} # initializing the count dictionary
    k = len(Motifs[0])    
    for symbol in "ACGT":
        count[symbol] = []
        for j in range(k):
             count[symbol].append(1)
    t = len(Motifs)     
    for i in range(t):
        for j in range(k):
            symbol = Motifs[i][j]
            count[symbol][j] += 1
    return count      

Code Challenge (3 points): Now that you have written a function CountWithPseudocounts(Motifs), write a function ProfileWithPseudocounts(Motifs) that takes a list of strings Motifs as input and returns the profile matrix of Motifs with pseudocounts as a dictionary of lists. Then add this function to Motifs.py. Make sure to use CountWithPseudocounts(Motifs) as a subroutine!

Click here for this problem's test datasets.
Sample Input:
AACGTA
CCCGTT
CACCTT
GGATTA
TTCCGG
Sample Output:
{'A': [0.2222222222222222, 0.3333333333333333, 0.2222222222222222, 0.1111111111111111, 0.1111111111111111, 0.3333333333333333], 'C': [0.3333333333333333, 0.2222222222222222, 0.5555555555555556, 0.3333333333333333, 0.1111111111111111, 0.1111111111111111], 'G': [0.2222222222222222, 0.2222222222222222, 0.1111111111111111, 0.3333333333333333, 0.2222222222222222, 0.2222222222222222], 'T': [0.2222222222222222, 0.2222222222222222, 0.1111111111111111, 0.2222222222222222, 0.5555555555555556, 0.3333333333333333]}







1.1 Motif finding meets Oliver Cromwell
wrong:
# Input:  A set of kmers Motifs
# Output: ProfileWithPseudocounts(Motifs)
def ProfileWithPseudocounts(Motifs):
    k = len(Motifs[0])+4
    t = len(Motifs)
    profile = {}
    countMotifs = CountWithPseudocounts(Motifs)
    # insert your code here
    k = len(Motifs[0])
    for symbol in "ACGT":
        profile[symbol] = []
        for j in range(k):
             profile[symbol].append(1)
    #t = the number of rows in Motifs
    t = len(Motifs)     
    for i in range(t):
        for j in range(k):
            symbol = Motifs[i][j]
            profile[symbol][j] = (countMotifs[symbol][j]/(t+4))
    return profile

# Input:  A set of kmers Motifs
# Output: CountWithPseudocounts(Motifs)
# HINT:   You need to use CountWithPseudocounts as a subroutine of ProfileWithPseudocounts
def CountWithPseudocounts(Motifs):
    count = {} # initializing the count dictionary
    #k = the length of the Motifs
    k = len(Motifs[0])    
    for symbol in "ACGT":
        count[symbol] = []
        for j in range(k):
             count[symbol].append(1)
    #t = the number of rows in Motifs
    t = len(Motifs)     
    for i in range(t):
        for j in range(k):
            symbol = Motifs[i][j]
            count[symbol][j] += 1
    return count      