#Grey Larson
Bottles = 99

while Bottles >= -1:
    if Bottles > 1:
        print Bottles, 'Bottles of beer on the wall', Bottles, 'Bottles of beer'
        Bottles = Bottles -1
        print  'Take one down pass it around', Bottles
    elif Bottles == 1:
        print '1 Bottle of beer on the wall, 1  of beer'
        print 'Take one down and pass it around, no more bottlesbottle of beer on the wall.'
        Bottles = Bottles -1
    else:
        print  'No more bottles of beer on the wall, no more bottles of beer'
        print 'Go to the store and buy some more, 99 bottles of beer on the wall.'
        
        
