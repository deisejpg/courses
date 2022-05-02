#!/Users/deisejpg/miniconda3/bin python3

'''A function to count patterns in a text or in a genome. '''
def PatternCount(Text,Pattern):
    count = 0
    for i in range(len(Text) - len(Pattern)+1:
        if Text[i:i+len(Pattern)] == Pattern:
            count = count + 1
    return count

'''A function that maps the frequency of a text or patterns. In this case, k is an integer with lenght k. '''
def FrequencyMap(Text,k):
    freq = {}
    n = len(Text)
    for i in range(n-k+1):
        if Pattern = Text[i:i+k]:
            freq[Pattern] = 1
        else:
            freq[Pattern] += 1
    return freq

''' A function that takes a string Text and an integer k and returns a list containing all most frequenc k-mers in Text'''
def FrequencWords(Text, k):
    words = []
    freq = FrequencyMap(Text, k)
    m = max(freq.values())
    for key in freq:
        if freq[key] == m:
            pattern = key
            words.append(pattern)
    return words

'''A function that takes the string Pattern and returns the reverse of Pattern.'''
def Reverse(Pattern):
    rev = ''
    for char in Pattern:
        rev = char + rev
    return rev

'''A function that takes a DNA string Pattern and returns the complementary string of Pattern
    with every nuc replaced by its complement.'''
def Complement(Pattern):
    rev = ''
    nuc_dict = {'A':'T','C':'G','G':'C','T':'A',}
    for char in Pattern:
        rev = rev + nuc_dict[char]
    return rev

'''A function that takes a DNA string Pattern and returns the reverse complement of Patterns.'''
def ReverseComplement(Pattern):
    Pattern = Reverse(Pattern)
    Pattern = Complement(Pattern)
    return Pattern

'''A function that takes a string Pattern and a string Genome and returns a list with each start 
    position of the pattern for every time it encounters a match.'''
def PatternMatching(Pattern, Genome):
    positions = []
    p = len(Pattern)
    g = len(Genome)
    for i in range(g-p+1):
        if Genome[i:i+p] == Pattern:
            positions.append(i)
    return positions

'''A function that takes a string Genome and a string symbol and returns the symbol array of
   Genome correponding to symbol.'''
def SymbolArray(Genome, symbol):
    array = {}
    n = len(Genome)
    ExtendedGenome = Genome + Genome[0:n//2]
    for i in range(n):
        array[i] = PatternCount(ExtendedGenome[i:i+(n//2)], symbol)
    return array

'''A function that performes faster that SymbolArray() funtion. It takes a string Genome
	and and a string symbol a t c or g and returns a dictionary with symbols as keys
	and array of symbols are values. The difference now is that instead of 
	passing through n**2//2 the genome size (the for loop iterates over len(Genome)
	and then compare symbol agains n//2 symbols of ExtendedGenome), the new function
	uses a for loop with range() and slides through the genome a single time,
	counting for the symbol array increase every time is 'advances' one nucleotide.'''
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




print("Hello world")
